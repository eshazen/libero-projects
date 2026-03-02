set_family {PolarFireSoC}
set_proj_path {/home/hazen/LiberoProjects/blinky_counter\blinky_counter.prjx}
set_editor_type {PLACEANDROUTE}
read_adl {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker.adl}
map_netlist
read_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc}
set_output_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/user.sdc}
