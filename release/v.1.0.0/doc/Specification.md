# Project: Leisure Cruise

An experimental setup to evaluate SRAM PUF designs with IHP's open SRAM blocks on the CMOS5L process.

The core is a rather barebones VexRiscv with four SRAM blocks attached to it.
The interesting part is that the SRAMs can be power cycled by the core, allowing the core to probe the power-on state of each SRAM blocks multiple times to calculate a PUF response.

IHP's open PDK does not contain the cells necessary to use proper power gating, so this design uses a hacky workaround.
First, as there are no breaker cells for the padring, the padring is broken up to keep the power domains separated.
Second, as OpenROAD-flow-scripts struggles with automated power domain separation, the SRAMs were manually excluded from the main power grid and attached to their respective portion of the broken-up padring.
