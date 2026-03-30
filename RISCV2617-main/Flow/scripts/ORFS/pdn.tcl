add_global_connection -net {VDD} -pin_pattern {^VDD$} -power
add_global_connection -net {VDD} -pin_pattern {^VDDPE$}
add_global_connection -net {VDD} -pin_pattern {^VDDCE$}
add_global_connection -net {VDD} -pin_pattern {^VDD!$}
add_global_connection -net {VDD} -pin_pattern {^VDDARRAY!$}

add_global_connection -net {VSS} -pin_pattern {^VSS$} -ground
add_global_connection -net {VSS} -pin_pattern {^VSSE$}
add_global_connection -net {VSS} -pin_pattern {^VSS!$}

## voltage domains ##
global_connect -verbose

set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}

# core grid
define_pdn_grid -name {core_grid} -voltage_domains {CORE} -pins {Metal4 TopMetal1}
add_pdn_ring    -grid {core_grid} -layers {Metal3 Metal4} -widths {10.0} -spacings {5.0} -pad_offsets {5} -add_connect -connect_to_pads
add_pdn_stripe  -grid {core_grid} -layer {Metal1}    -width {0.44} -pitch {7.56} -offset {0}    -extend_to_core_ring -followpins
add_pdn_stripe  -grid {core_grid} -layer {Metal4}    -width {4.0}  -pitch {75.0} -offset {25.0} -extend_to_core_ring
add_pdn_stripe  -grid {core_grid} -layer {TopMetal1} -width {4.0}  -pitch {75.0} -offset {25.0} -extend_to_core_ring
add_pdn_connect -grid {core_grid} -layers {Metal1 Metal4}
add_pdn_connect -grid {core_grid} -layers {Metal4 TopMetal1}

# SRAM macro grid
define_pdn_grid -name {sram_macro_grid} -voltage_domains {CORE} \
	-macro \
	-instances {^srams_(0|1|2|3)$} \
	-grid_over_boundary
add_pdn_ring    -grid {sram_macro_grid} -layers {Metal3 Metal4} -widths {10.0} -spacings {5.0} -core_offsets {5.0} -add_connect
add_pdn_stripe  -grid {sram_macro_grid} -layer  {TopMetal1} -width {2.200} -pitch {30} -offset {5} -extend_to_core_ring
add_pdn_connect -grid {sram_macro_grid} -layers {Metal4 TopMetal1}
