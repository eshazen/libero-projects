# Microchip Technology Inc.
# Date: 2026-Mar-02 10:32:28
# This file was generated based on the following SDC source files:
#   /home/hazen/work/libero-projects/blinky_counter/constraint/led_blinker_derived_constraints.sdc
#   /home/hazen/work/libero-projects/blinky_counter/constraint/user.sdc
#

create_clock -name {clk50} -period 20 -waveform {0 10 } [ get_ports { clk_i } ]
set_clock_uncertainty 6.9293e-05 [ get_clocks { clk50 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk50 } ] -rise_to [ get_clocks { clk50 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk50 } ] -fall_to [ get_clocks { clk50 } ]
