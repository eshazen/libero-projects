set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
set_editor_type {SYNTHESIS}
set_proj_path {/home/hazen/LiberoProjects/blinky_counter\blinky_counter.prjx}
read_vhdl -mode vhdl_2008 {/home/hazen/LiberoProjects/blinky_counter/hdl/counter_top.vhd}
set_top_level {led_blinker}
map_netlist
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc}
set_output_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/user.sdc}
