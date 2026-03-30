set IO_LENGTH 180
set BONDPAD_SIZE 70
set SEALRING_OFFSET 70
set IO_OFFSET [expr { $BONDPAD_SIZE + $SEALRING_OFFSET }]

# padframe core power pins
add_global_connection -net {VDD} -pin_pattern {^vdd$} -power
add_global_connection -net {VSS} -pin_pattern {^vss$} -ground

# padframe io power pins
add_global_connection -net {IOVDD} -pin_pattern {^iovdd$} -power
add_global_connection -net {IOVSS} -pin_pattern {^iovss$} -ground

# sg13cmos5l_io.lef defines sg13cmos5l_ioSite for the sides, but no corner site
make_fake_io_site -name sg13cmos5l_ioCSite -width $IO_LENGTH -height $IO_LENGTH

# Create IO Rows
make_io_sites \
    -horizontal_site sg13cmos5l_ioSite \
    -vertical_site sg13cmos5l_ioSite \
    -corner_site sg13cmos5l_ioCSite \
    -offset $IO_OFFSET

######## Place Pads ########
place_pads -row IO_NORTH \
    pad_clk \
    pad_reset_n \
    pad_core_vddpad_0 \
    pad_core_gndpad_0 \
    pad_core_vddcore_0 \
    pad_core_gndcore_0 \
    pad_jtag_tms \
    pad_jtag_tdi

place_pads -row IO_EAST \
    pad_sram_gndcore_3 \
    pad_sram_vddcore_3 \
    pad_sram_gndpad_3 \
    pad_sram_vddpad_3 \
    pad_gpio_3 \
    pad_gpio_2 \
    pad_jtag_tck \
    pad_jtag_tdo

place_pads -row IO_SOUTH \
    pad_sram_vddpad_1 \
    pad_sram_gndpad_1 \
    pad_sram_vddcore_1 \
    pad_sram_gndcore_1 \
    pad_sram_vddpad_2 \
    pad_sram_gndpad_2 \
    pad_sram_vddcore_2 \
    pad_sram_gndcore_2

place_pads -row IO_WEST \
    pad_sram_gndcore_0 \
    pad_sram_vddcore_0 \
    pad_sram_gndpad_0 \
    pad_sram_vddpad_0 \
    pad_gpio_1 \
    pad_gpio_0 \
    pad_uart_txd \
    pad_uart_rxd

# Place corners
place_corners sg13cmos5l_Corner

# Place IO fill
set iofill {sg13cmos5l_Filler10000
            sg13cmos5l_Filler4000
            sg13cmos5l_Filler2000
            sg13cmos5l_Filler1000
            sg13cmos5l_Filler400
            sg13cmos5l_Filler200} ;
place_io_fill -row IO_NORTH {*}$iofill
place_io_fill -row IO_SOUTH {*}$iofill
place_io_fill -row IO_WEST {*}$iofill
place_io_fill -row IO_EAST {*}$iofill

# Remove fillers between voltage domains
set block [ord::get_db_block]
foreach inst [$block getInsts] {
    set name [$inst getName]
    if {[regexp {^IO_FILL_IO_SOUTH_4_.*} $name]} {
        odb::dbInst_destroy $inst
    }
    if {[regexp {^IO_FILL_IO_(WEST|EAST)_(0|4)_.*} $name]} {
        odb::dbInst_destroy $inst
    }
}

# Connect ring signals
connect_by_abutment

# Place the bondpads
place_bondpad -bond bondpad_70x70 pad_* -offset "5.0 -$BONDPAD_SIZE.0"

remove_io_rows
