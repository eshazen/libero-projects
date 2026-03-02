set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_vhdl -mode vhdl_2008 {/home/hazen/work/libero-projects/blinky_counter/hdl/uart_tx.vhd}
read_vhdl -mode vhdl_2008 {/home/hazen/work/libero-projects/blinky_counter/hdl/uart_new.vhd}
read_vhdl -mode vhdl_2008 {/home/hazen/work/libero-projects/blinky_counter/hdl/counter_top.vhd}
set_top_level {led_blinker}
map_netlist
check_constraints {/home/hazen/work/libero-projects/blinky_counter/constraint/synthesis_sdc_errors.log}
write_fdc {/home/hazen/work/libero-projects/blinky_counter/designer/led_blinker/synthesis.fdc}
