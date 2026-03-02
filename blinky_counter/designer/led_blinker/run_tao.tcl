set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_vhdl -mode vhdl_2008 {/home/hazen/LiberoProjects/blinky_counter/hdl/counter_top.vhd}
set_top_level {led_blinker}
map_netlist
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc}
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/user.sdc}
check_constraints {/home/hazen/LiberoProjects/blinky_counter/constraint/synthesis_sdc_errors.log}
write_fdc {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/synthesis.fdc}
