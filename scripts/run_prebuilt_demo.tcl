# XSCT fallback: load the FIXED tested Bitstream, PS init and ELF from demo/.
# Run this only when the same EGO-XZ7 is connected and powered on.
# This does not write Flash. New PC COM number is unrelated to JTAG.
set root [file normalize [file join [file dirname [info script]] ..]]
foreach rel {demo/design_1_wrapper.bit demo/ps7_init.tcl demo/hw2_demo.elf} {
    if {![file isfile $root/$rel]} {error "Missing $root/$rel"}
}
connect -url tcp:127.0.0.1:3121
set fpga_targets [targets -target-properties -filter {name == "xc7z020"}]
if {[llength $fpga_targets] != 1} {
    puts [targets]
    error "Expected exactly one xc7z020. Disconnect extra boards and check the USB-JTAG connection."
}
set cable [dict get [lindex $fpga_targets 0] jtag_cable_serial]
puts "HW2_CABLE: $cable"
targets -set -filter [format {name == "APU" && jtag_cable_serial == "%s"} $cable]
rst -system
after 1000
targets -set -filter [format {name =~ "ARM*#1" && jtag_cable_serial == "%s"} $cable]
catch {stop}
targets -set -filter [format {name =~ "ARM*#0" && jtag_cable_serial == "%s"} $cable]
catch {stop}
source $root/demo/ps7_init.tcl
ps7_init
targets -set -filter [format {name == "xc7z020" && jtag_cable_serial == "%s"} $cable]
fpga -file $root/demo/design_1_wrapper.bit
targets -set -filter [format {name =~ "ARM*#0" && jtag_cable_serial == "%s"} $cable]
ps7_post_config
dow $root/demo/hw2_demo.elf
con
puts "HW2_DEMO_RUNNING: 500 ms LED count, S6 clears and pauses for 2 s."
disconnect
