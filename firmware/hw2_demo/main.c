/*
 * EGO-XZ7 HW2: ARM-controlled LED counter and AXI GPIO button interrupt.
 * Vivado/SDK 2018.3 hardware contract:
 *   axi_gpio_0 channel 1: eight active-high LED outputs.
 *   axi_gpio_1 channel 1: five active-high button inputs, interrupt enabled.
 *   axi_gpio_1/ip2intc_irpt -> processing_system7_0/IRQ_F2P[0].
 *
 * A button press clears the counter and holds LEDs off for two seconds.
 * Counting then restarts at one, with one increment every 500 milliseconds.
 * The ISR only acknowledges the GPIO source and records an event. Debouncing,
 * UART output, timing and LED changes all run in main context.
 */

#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "sleep.h"
#include "xstatus.h"

#ifndef XPAR_AXI_GPIO_0_DEVICE_ID
#error "Expected LED GPIO instance axi_gpio_0 in the exported hardware."
#endif
#ifndef XPAR_AXI_GPIO_1_DEVICE_ID
#error "Expected button GPIO instance axi_gpio_1 in the exported hardware."
#endif
#ifndef XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
#error "Expected axi_gpio_1 interrupt connected to the PS fabric IRQ input."
#endif

#define LED_DEVICE_ID       XPAR_AXI_GPIO_0_DEVICE_ID
#define BUTTON_DEVICE_ID    XPAR_AXI_GPIO_1_DEVICE_ID
#define BUTTON_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR
#define GIC_DEVICE_ID       XPAR_SCUGIC_SINGLE_DEVICE_ID
#define GPIO_CHANNEL        1U
#define LED_MASK            0xFFU
#define BUTTON_MASK         0x1FU
#define DEBOUNCE_MS         20U
#define COUNT_PERIOD_MS     500U
#define PAUSE_MS            2000U

static XGpio LedGpio;
static XGpio ButtonGpio;
static XScuGic Gic;

/* An aligned 32-bit sequence counter avoids a read/clear flag race. */
static volatile u32 ButtonIrqSequence;

static XTime ticks_for_ms(u32 milliseconds)
{
    return ((XTime)COUNTS_PER_SECOND * (XTime)milliseconds) / 1000U;
}

static XTime time_now(void)
{
    XTime now;
    XTime_GetTime(&now);
    return now;
}

static void buttons_isr(void *callback_reference)
{
    XGpio *gpio = (XGpio *)callback_reference;
    u32 pending = XGpio_InterruptGetStatus(gpio) & XGPIO_IR_CH1_MASK;

    if (pending != 0U) {
        XGpio_InterruptClear(gpio, pending);
        ++ButtonIrqSequence;
    }
}

static int initialize_gpio(void)
{
    int status;

    status = XGpio_Initialize(&LedGpio, LED_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: LED GPIO initialization failed (%d).\r\n", status);
        return status;
    }
    XGpio_SetDataDirection(&LedGpio, GPIO_CHANNEL, 0U);
    XGpio_DiscreteWrite(&LedGpio, GPIO_CHANNEL, 1U);

    status = XGpio_Initialize(&ButtonGpio, BUTTON_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: button GPIO initialization failed (%d).\r\n", status);
        return status;
    }
    XGpio_SetDataDirection(&ButtonGpio, GPIO_CHANNEL, BUTTON_MASK);
    XGpio_InterruptGlobalDisable(&ButtonGpio);
    XGpio_InterruptDisable(&ButtonGpio, XGPIO_IR_CH1_MASK);
    XGpio_InterruptClear(&ButtonGpio, XGPIO_IR_CH1_MASK);
    return XST_SUCCESS;
}

static int initialize_interrupts(void)
{
    XScuGic_Config *configuration;
    int status;

    Xil_ExceptionInit();
    configuration = XScuGic_LookupConfig(GIC_DEVICE_ID);
    if (configuration == NULL) {
        xil_printf("ERROR: GIC configuration was not found.\r\n");
        return XST_FAILURE;
    }

    status = XScuGic_CfgInitialize(&Gic, configuration,
                                  configuration->CpuBaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: GIC initialization failed (%d).\r\n", status);
        return status;
    }

    /* AXI GPIO holds ip2intc_irpt high until its pending status is cleared. */
    XScuGic_SetPriorityTriggerType(&Gic, BUTTON_INTERRUPT_ID, 0xA0U, 0x1U);
    status = XScuGic_Connect(&Gic, BUTTON_INTERRUPT_ID,
                            buttons_isr, &ButtonGpio);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: connecting button ISR failed (%d).\r\n", status);
        return status;
    }

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
        (Xil_ExceptionHandler)XScuGic_InterruptHandler, &Gic);
    XScuGic_Enable(&Gic, BUTTON_INTERRUPT_ID);
    XGpio_InterruptClear(&ButtonGpio, XGPIO_IR_CH1_MASK);
    XGpio_InterruptEnable(&ButtonGpio, XGPIO_IR_CH1_MASK);
    XGpio_InterruptGlobalEnable(&ButtonGpio);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}

int main(void)
{
    u32 counter = 1U;
    u32 stable_buttons;
    u32 observed_sequence = 0U;
    int debounce_pending = 0;
    int paused = 0;
    XTime debounce_deadline = 0U;
    XTime pause_deadline = 0U;
    XTime next_count;

    xil_printf("\r\nEGO-XZ7 HW2: LED counter + GPIO interrupt\r\n");
    if (initialize_gpio() != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /* This standalone program owns CPU0; explicitly start the global timer. */
    XTime_SetTime(0U);
    stable_buttons = XGpio_DiscreteRead(&ButtonGpio, GPIO_CHANNEL) & BUTTON_MASK;
    if (initialize_interrupts() != XST_SUCCESS) {
        return XST_FAILURE;
    }
    next_count = time_now() + ticks_for_ms(COUNT_PERIOD_MS);
    xil_printf("Ready: GPIO IRQ %d; LED=1; count every 500 ms.\r\n",
               BUTTON_INTERRUPT_ID);
    xil_printf("Press any button: clear LEDs, pause 2 s, restart from 1.\r\n");

    while (1) {
        XTime now = time_now();
        u32 current_sequence = ButtonIrqSequence;

        /* GPIO interrupts report both presses and releases, including bounce. */
        if (current_sequence != observed_sequence) {
            observed_sequence = current_sequence;
            debounce_deadline = now + ticks_for_ms(DEBOUNCE_MS);
            debounce_pending = 1;
        }

        if (debounce_pending && now >= debounce_deadline) {
            u32 current_buttons;
            u32 pressed;

            current_buttons = XGpio_DiscreteRead(&ButtonGpio, GPIO_CHANNEL)
                              & BUTTON_MASK;
            pressed = current_buttons & ~stable_buttons & BUTTON_MASK;
            stable_buttons = current_buttons;
            debounce_pending = 0;

            if (pressed != 0U) {
                counter = 0U;
                XGpio_DiscreteWrite(&LedGpio, GPIO_CHANNEL, 0U);
                paused = 1;
                pause_deadline = now + ticks_for_ms(PAUSE_MS);
                xil_printf("BUTTON=0x%02x: LED=0, pause 2 s (IRQ events %d).\r\n",
                           pressed, observed_sequence);
            }
        }

        if (paused) {
            if (now >= pause_deadline) {
                paused = 0;
                counter = 1U;
                XGpio_DiscreteWrite(&LedGpio, GPIO_CHANNEL, counter);
                next_count = now + ticks_for_ms(COUNT_PERIOD_MS);
                xil_printf("Resume: LED=%d\r\n", counter);
            }
        } else if (now >= next_count) {
            counter = (counter + 1U) & LED_MASK;
            XGpio_DiscreteWrite(&LedGpio, GPIO_CHANNEL, counter);
            next_count = now + ticks_for_ms(COUNT_PERIOD_MS);
            xil_printf("LED=%d\r\n", counter);
        }

        /* All waits occur outside the ISR; timer deadlines handle the pause. */
        usleep(1000U);
    }
}
