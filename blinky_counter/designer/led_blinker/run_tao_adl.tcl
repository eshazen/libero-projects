set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_adl {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker.adl}
read_afl {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker.afl}
map_netlist
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc}
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/user.sdc}
check_constraints {/home/hazen/LiberoProjects/blinky_counter/constraint/placer_sdc_errors.log}
estimate_jitter -report {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/place_and_route_jitter_report.txt}
write_sdc -mode layout {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/place_route.sdc}
