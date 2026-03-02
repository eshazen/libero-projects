set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1} -range {EXT}
read_vhdl -mode vhdl_2008 {/home/hazen/LiberoProjects/blinky_counter/hdl/counter_top.vhd}
set_top_level {led_blinker}
derive_constraints
write_sdc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.sdc}
write_ndc {/home/hazen/LiberoProjects/blinky_counter/constraint/led_blinker_derived_constraints.ndc}
write_pdc {/home/hazen/LiberoProjects/blinky_counter/constraint/fp/led_blinker_derived_constraints.pdc}
