current_design LeisureCruiseHarness

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA

# === Clocks (external) ===
create_clock -name CORE_CLK -period 20.8333333 [get_ports clk] ;# 48 MHz

# Using 15MHz for the JTAG clock since I found a datasheet with good timing information of a 30MHz JTAG
# programmer, but 30MHz is a bit hard to achieve due to wire lengths/capacitive loads.
# https://www.digikey.de/htmldatasheets/production/1312794/0/0/1/jtag-smt2.html
create_clock -name JTAG_TCK -period 66.6666666 [get_ports jtag_tck] ;# 15 MHz

# Pre-CTS, using conservative uncertainty budgets
set_ideal_network [get_ports {clk jtag_tck}]
#set_dont_touch_network [get_ports {clk jtag_tck}] ;# Not supported by OpenSTA/ORFS, fortunately optional

# Post-CTS, use "real", propagated clocks instead of ideal networks. The flow should automatically switch to
# propagated clocks when it makes sense.
# set_propagated_clock [get_clocks {CORE_CLK JTAG_TCK}]

# Treat the clocks as asynchronous to each other. This is a cleaner alternative for mutual `set_false_path`s
set_clock_groups -asynchronous -group {CORE_CLK} -group {JTAG_TCK}

# === Core clock timings ===
# From the datasheets of various oscialltors. At 15pF load (= "standard CMOS load") and 3.3V, the maximum rise
# and fall times are usually around 2ns, though I have seen 4ns too. A transition of 3ns should enable usage
# of most oscillators.
set_clock_transition 3.0 [get_clocks CORE_CLK]

# The peak-to-peak period jitter seems to be around 40ps for most oscillators, though the value can be hard
# to compare. From my understanding, this jitter (plus a bit of safety-margin) becomes the setup uncertainty.
# To be conservative and allow potentially worse oscillators to be used, add 20ps.
set_clock_uncertainty -setup 0.060 [get_clocks CORE_CLK]

# The datasheet gives cycle-to-cycle jitter at 60ps max. From my understanding, this jitter (plus a bit of
# safety-margin) becomes the hold uncertainty. To be conservative and allow potentially worse oscillators to
# be used, add 20ps.
set_clock_uncertainty -hold 0.080 [get_clocks CORE_CLK]

# === JTAG clock timings ===
set_clock_transition 3.0 [get_clocks JTAG_TCK]
set_clock_uncertainty -setup 0.12 [get_clocks JTAG_TCK]
set_clock_uncertainty -hold  0.06 [get_clocks JTAG_TCK]

# === JTAG (source-synchronous to JTAG_TCK) ===
# Values taken from the datasheet, see create_clock above. Some of the values have been slightly adjusted,
# specifically the min input delays have been changed from -0.5ns to 0.5ns, otherwise the flow was not able to
# meet the timing requirements. These adjustments should not hurt in practice, since it is rather unlikely
# that a JTAG programmer - a tool that is meant to interface with heterogenous systems of varying quality for
# debugging purposes - would be overly finnicky and actually serve data before the clock edge.
set_input_delay -clock JTAG_TCK -max 12.35 [get_ports jtag_tms]
set_input_delay -clock JTAG_TCK -min  0.5  [get_ports jtag_tms]
set_input_delay -clock JTAG_TCK -max  8.15 [get_ports jtag_tdi]
set_input_delay -clock JTAG_TCK -min  0.5  [get_ports jtag_tdi]

set_output_delay -clock JTAG_TCK -max 15.8 [get_ports jtag_tdo]
set_output_delay -clock JTAG_TCK -min  0.0 [get_ports jtag_tdo]

# The transition time is not specified in the datasheet, 3ns is roughly 10% of the clock period, which should
# be an alright estimation.
set_input_transition 3 [get_ports {jtag_tms jtag_tdi}]

# The JTAG will be most likely connected via
# I/O pad -> PCB trace -> pin header -> cable -> USB-to-JTAG-adapter
# so a "bigger" capacitive load of 30 pF is configured for TDO
# the value is temporarily lowered until https://github.com/IHP-GmbH/IHP-Open-PDK/issues/676 is fixed
set_load 10.0 [get_ports jtag_tdo]

# === Asynchronous reset ===
# Asynchronous resets in SpinalHDL are fully async, meaning both assertion and deassertion are async. This
# poses the risk of metastability and it is usually recommended to at least synchronize deassertion with the
# clock. However, for this project, the risk is accepted and the reset is kept fully async.

# Ignore any timing from the external reset pin into the design
set_false_path -from [get_ports reset_n]

# Avoid excessive fanout on the reset net potentially causing high capacitance, routing congestion etc.
set_max_fanout 20 [get_ports reset_n]

# === GPIOs (source-synchronous to CORE_CLK) ===
# TODO
