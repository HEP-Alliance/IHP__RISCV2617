export DESIGN_NICKNAME = prjleisurecruise
export DESIGN_NAME = LeisureCruiseHarness

export PLATFORM = ihp-sg13cmos5l

export DESIGN_DIR = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)

export VERILOG_FILES = $(DESIGN_DIR)/out/LeisureCruiseHarness.v

export SRAM_NAME = RM_IHPSG13_1P_512x32_c2_bm_bist
export ADDITIONAL_TYP_LIBS = $(DESIGN_DIR)/macros/$(SRAM_NAME)/lib/$(SRAM_NAME)_typ_1p20V_25C.lib
export ADDITIONAL_FAST_LIBS = $(DESIGN_DIR)/macros/$(SRAM_NAME)/lib/$(SRAM_NAME)_fast_1p32V_m55C.lib
export ADDITIONAL_SLOW_LIBS = $(DESIGN_DIR)/macros/$(SRAM_NAME)/lib/$(SRAM_NAME)_slow_1p08V_125C.lib
export ADDITIONAL_LEFS = \
	$(DESIGN_DIR)/macros/$(SRAM_NAME)/lef/$(SRAM_NAME).lef \
	$(DESIGN_DIR)/macros/bondpad/bondpad_70x70.lef
export ADDITIONAL_GDS = \
	$(DESIGN_DIR)/macros/$(SRAM_NAME)/gds/$(SRAM_NAME).gds.gz \
	$(DESIGN_DIR)/macros/bondpad/bondpad_70x70.gds.gz

export SDC_FILE = $(DESIGN_DIR)/orfs/constraint.sdc

export FOOTPRINT_TCL = $(DESIGN_DIR)/orfs/footprint.tcl
export MACRO_PLACEMENT_TCL = $(DESIGN_DIR)/orfs/macro_placement.tcl
export PDN_TCL = $(DESIGN_DIR)/orfs/pdn.tcl

export CORNERS = slow typ fast

export SEAL_GDS = $(DESIGN_DIR)/macros/sealring.gds.gz

# Allow routing up to Metal4 instead of up to Metal3 - required for I/O pad pin connections
export MAX_ROUTING_LAYER = Metal4

# TODO: Temporarily disabled until I manage to fix the kepler-formal build
export LEC_CHECK = 0

# (Sealring: roughly 70um)
# I/O pads: 180um
# Bondpads: 70um
# Small safety margin: 5um
# Total margin to core area: 350um
export DIE_AREA  =   0   0 1800 1800
export CORE_AREA = 350 350 1450 1450
