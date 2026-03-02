new_project \
         -name {led_blinker} \
         -location {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS095T} \
         -name {MPFS095T}
enable_device \
         -name {MPFS095T} \
         -enable {TRUE}
save_project
close_project
