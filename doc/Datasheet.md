# Project: Leisure Cruise

Process: IHP-sg13cmos5l
Core voltage: 1.2V
I/O voltage: 3.3V
Core clock frequency: 48MHz
JTAG clock frequency: up to 15MHz

## Pinout

| signal name | direction | purpose |
|-------------|-----------|---------|
| clk | input | core clock |
| reset_n | input | active-low reset |
| gpio_[n] | output | active-low outputs that must be connected to external circuitry which enables or disables the power supply of SRAMn |
| jtag_tck | input | JTAG clock |
| jtag_{tdo,tdi,tms} | mixed | JTAG signals |
| uart_{rxd,txd} | mixed | UART signals |
