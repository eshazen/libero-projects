# Microchip Technology Inc.
# Date: 2025-Nov-18 13:38:23
# This file was generated based on the following SDC source files:
#   /home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc
#   /home/hazen/LiberoProjects/blinky_counter/constraint/user.sdc
#

create_clock -name {clk50} -period 20 -waveform {0 10 } [ get_ports { clk_i } ]
set_clock_uncertainty 7.39125e-05 [ get_clocks { clk50 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { clk50 } ] -rise_to [ get_clocks { clk50 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { clk50 } ] -fall_to [ get_clocks { clk50 } ]
