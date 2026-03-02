open_project -project {/home/hazen/work/libero-projects/blinky_counter/designer/led_blinker/led_blinker_fp/led_blinker.pro}
enable_device -name {MPFS095T} -enable 1
set_programming_file -name {MPFS095T} -file {/home/hazen/work/libero-projects/blinky_counter/designer/led_blinker/led_blinker.ppd}
set_programming_action -action {PROGRAM} -name {MPFS095T} 
run_selected_actions
save_project
close_project
