//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Oct 29 15:42:18 2026
//Host        : DESKTOP-US6CV0K running 64-bit major release  (build 9200)
//Command     : generate_target gpio_subsystem.bd
//Design      : gpio_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "gpio_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=gpio_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "gpio_subsystem.hwdef" *) 
module gpio_subsystem
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    btn_i,
    irq,
    led_o,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 17, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN gpio_subsystem_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [16:0]S_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output [0:0]S_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input [0:0]S_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [16:0]S_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output [0:0]S_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input [0:0]S_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input [0:0]S_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output [0:0]S_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input [0:0]S_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output [0:0]S_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output [0:0]S_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input [0:0]S_AXI_wvalid;
  input [4:0]btn_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output irq;
  output [7:0]led_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN gpio_subsystem_s_axi_aclk, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire [16:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire [0:0]S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire [16:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire [0:0]S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [16:0]axi_periph_M00_AXI_ARADDR;
  wire axi_periph_M00_AXI_ARREADY;
  wire [0:0]axi_periph_M00_AXI_ARVALID;
  wire [16:0]axi_periph_M00_AXI_AWADDR;
  wire axi_periph_M00_AXI_AWREADY;
  wire [0:0]axi_periph_M00_AXI_AWVALID;
  wire [0:0]axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_periph_M00_AXI_BRESP;
  wire axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_periph_M00_AXI_RDATA;
  wire [0:0]axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_periph_M00_AXI_RRESP;
  wire axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_periph_M00_AXI_WDATA;
  wire axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_periph_M00_AXI_WSTRB;
  wire [0:0]axi_periph_M00_AXI_WVALID;
  wire [16:0]axi_periph_M01_AXI_ARADDR;
  wire axi_periph_M01_AXI_ARREADY;
  wire [0:0]axi_periph_M01_AXI_ARVALID;
  wire [16:0]axi_periph_M01_AXI_AWADDR;
  wire axi_periph_M01_AXI_AWREADY;
  wire [0:0]axi_periph_M01_AXI_AWVALID;
  wire [0:0]axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_periph_M01_AXI_BRESP;
  wire axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_periph_M01_AXI_RDATA;
  wire [0:0]axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_periph_M01_AXI_RRESP;
  wire axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_periph_M01_AXI_WDATA;
  wire axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_periph_M01_AXI_WSTRB;
  wire [0:0]axi_periph_M01_AXI_WVALID;
  wire [4:0]btn_i_1;
  wire button_gpio_ip2intc_irpt;
  wire [7:0]led_gpio_gpio_io_o;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign S_AXI_1_ARADDR = S_AXI_araddr[16:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid[0];
  assign S_AXI_1_AWADDR = S_AXI_awaddr[16:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid[0];
  assign S_AXI_1_BREADY = S_AXI_bready[0];
  assign S_AXI_1_RREADY = S_AXI_rready[0];
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid[0];
  assign S_AXI_arready[0] = S_AXI_1_ARREADY;
  assign S_AXI_awready[0] = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid[0] = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid[0] = S_AXI_1_RVALID;
  assign S_AXI_wready[0] = S_AXI_1_WREADY;
  assign btn_i_1 = btn_i[4:0];
  assign irq = button_gpio_ip2intc_irpt;
  assign led_o[7:0] = led_gpio_gpio_io_o;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  gpio_subsystem_axi_periph_0 axi_periph
       (.ACLK(s_axi_aclk_1),
        .ARESETN(s_axi_aresetn_1),
        .M00_ACLK(s_axi_aclk_1),
        .M00_ARESETN(s_axi_aresetn_1),
        .M00_AXI_araddr(axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_periph_M00_AXI_WVALID),
        .M01_ACLK(s_axi_aclk_1),
        .M01_ARESETN(s_axi_aresetn_1),
        .M01_AXI_araddr(axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_periph_M01_AXI_WVALID),
        .S00_ACLK(s_axi_aclk_1),
        .S00_ARESETN(s_axi_aresetn_1),
        .S00_AXI_araddr(S_AXI_1_ARADDR),
        .S00_AXI_arprot(S_AXI_1_ARPROT),
        .S00_AXI_arready(S_AXI_1_ARREADY),
        .S00_AXI_arvalid(S_AXI_1_ARVALID),
        .S00_AXI_awaddr(S_AXI_1_AWADDR),
        .S00_AXI_awprot(S_AXI_1_AWPROT),
        .S00_AXI_awready(S_AXI_1_AWREADY),
        .S00_AXI_awvalid(S_AXI_1_AWVALID),
        .S00_AXI_bready(S_AXI_1_BREADY),
        .S00_AXI_bresp(S_AXI_1_BRESP),
        .S00_AXI_bvalid(S_AXI_1_BVALID),
        .S00_AXI_rdata(S_AXI_1_RDATA),
        .S00_AXI_rready(S_AXI_1_RREADY),
        .S00_AXI_rresp(S_AXI_1_RRESP),
        .S00_AXI_rvalid(S_AXI_1_RVALID),
        .S00_AXI_wdata(S_AXI_1_WDATA),
        .S00_AXI_wready(S_AXI_1_WREADY),
        .S00_AXI_wstrb(S_AXI_1_WSTRB),
        .S00_AXI_wvalid(S_AXI_1_WVALID));
  gpio_subsystem_button_gpio_0 button_gpio
       (.gpio_io_i(btn_i_1),
        .ip2intc_irpt(button_gpio_ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(axi_periph_M01_AXI_RDATA),
        .s_axi_rready(axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(axi_periph_M01_AXI_WDATA),
        .s_axi_wready(axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_M01_AXI_WVALID));
  gpio_subsystem_led_gpio_0 led_gpio
       (.gpio_io_o(led_gpio_gpio_io_o),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(axi_periph_M00_AXI_RDATA),
        .s_axi_rready(axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(axi_periph_M00_AXI_WDATA),
        .s_axi_wready(axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_M00_AXI_WVALID));
endmodule

module gpio_subsystem_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [16:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [16:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [16:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [16:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [16:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [16:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_periph_ACLK_net;
  wire axi_periph_ARESETN_net;
  wire [16:0]axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]axi_periph_to_s00_couplers_ARVALID;
  wire [16:0]axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_periph_to_s00_couplers_BRESP;
  wire [0:0]axi_periph_to_s00_couplers_BVALID;
  wire [31:0]axi_periph_to_s00_couplers_RDATA;
  wire [0:0]axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_periph_to_s00_couplers_RRESP;
  wire [0:0]axi_periph_to_s00_couplers_RVALID;
  wire [31:0]axi_periph_to_s00_couplers_WDATA;
  wire [0:0]axi_periph_to_s00_couplers_WREADY;
  wire [3:0]axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]axi_periph_to_s00_couplers_WVALID;
  wire [16:0]m00_couplers_to_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_axi_periph_ARVALID;
  wire [16:0]m00_couplers_to_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_axi_periph_WVALID;
  wire [16:0]m01_couplers_to_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_axi_periph_ARVALID;
  wire [16:0]m01_couplers_to_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_axi_periph_WVALID;
  wire [16:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [16:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [16:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [16:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [33:17]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [33:17]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[16:0] = m00_couplers_to_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_periph_ARVALID;
  assign M00_AXI_awaddr[16:0] = m00_couplers_to_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_periph_WVALID;
  assign M01_AXI_araddr[16:0] = m01_couplers_to_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_periph_ARVALID;
  assign M01_AXI_awaddr[16:0] = m01_couplers_to_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_periph_WVALID;
  assign S00_AXI_arready[0] = axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_periph_to_s00_couplers_WREADY;
  assign axi_periph_ACLK_net = ACLK;
  assign axi_periph_ARESETN_net = ARESETN;
  assign axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[16:0];
  assign axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[16:0];
  assign axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_periph_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_12B55EC m00_couplers
       (.M_ACLK(axi_periph_ACLK_net),
        .M_ARESETN(axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_periph_WVALID),
        .S_ACLK(axi_periph_ACLK_net),
        .S_ARESETN(axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_33XBQR m01_couplers
       (.M_ACLK(axi_periph_ACLK_net),
        .M_ARESETN(axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_periph_WVALID),
        .S_ACLK(axi_periph_ACLK_net),
        .S_ARESETN(axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_KQ76JL s00_couplers
       (.M_ACLK(axi_periph_ACLK_net),
        .M_ARESETN(axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_periph_ACLK_net),
        .S_ARESETN(axi_periph_ARESETN_net),
        .S_AXI_araddr(axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_periph_to_s00_couplers_WVALID));
  gpio_subsystem_xbar_0 xbar
       (.aclk(axi_periph_ACLK_net),
        .aresetn(axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_12B55EC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [16:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[16:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[16:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_33XBQR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [16:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[16:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[16:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_KQ76JL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [16:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [16:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[16:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[16:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[16:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
