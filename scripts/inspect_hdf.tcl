if {$argc != 1} {error {Usage: xsct inspect_hdf.tcl exported.hdf}}
set hdf [file normalize [lindex $argv 0]]
set design [hsi::open_hw_design $hdf]
puts "HDF_FILE: $hdf"
puts "HDF_PART: [common::get_property PART $design]"
puts "CELLS_BEGIN"
foreach cell [hsi::get_cells -hier] {
    set ip [common::get_property IP_NAME $cell]
    if {[string match *gpio* $ip] || [string match *gpio* $cell] || $ip eq "ps7_cortexa9"} {
        puts "CELL: $cell IP_NAME=$ip"
        foreach property {IP_TYPE VLNV C_BASEADDR C_HIGHADDR C_INTERRUPT_PRESENT C_IS_DUAL} {
            if {![catch {common::get_property $property $cell} value] && $value ne ""} {puts "  $property=$value"}
        }
        foreach pin [hsi::get_pins -of_objects $cell] {
            if {[string match *irq* $pin] || [string match *irpt* $pin]} {
                puts "  IRQ_PIN: $pin"
                common::report_property $pin
            }
        }
    }
}
puts "CELLS_END"
puts "MEM_RANGES_BEGIN"
foreach processor [hsi::get_cells -hier -filter {IP_TYPE == PROCESSOR}] {
    puts "PROCESSOR: $processor"
    foreach range [hsi::get_mem_ranges -of_objects $processor] {
        set base [common::get_property BASE_VALUE $range]
        if {[string match -nocase *gpio* $range] || [expr {$base >= 0x40000000 && $base < 0x80000000}]} {
            puts "MEM_RANGE: $range"
            common::report_property $range
        }
    }
}
puts "MEM_RANGES_END"
hsi::close_hw_design $design
