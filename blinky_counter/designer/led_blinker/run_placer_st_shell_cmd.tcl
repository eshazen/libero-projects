read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker_layout_combinational_loops.xml}
report -type slack {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/led_blinker_place_and_route_constraint_coverage.xml}]
set reportfile {/home/hazen/LiberoProjects/blinky_counter/designer/led_blinker/coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp