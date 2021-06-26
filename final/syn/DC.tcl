#Read All Files
read_verilog ../src/LEDDC.v
current_design LEDDC
link

#Setting Clock Constraints
source -echo -verbose LEDDC_DC.sdc


#Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc     -hierarchy -output "LEDDC_syn.ddc"
write_sdf LEDDC_syn.sdf
write_file -format verilog -hierarchy -output LEDDC_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  LEDDC_syn.qor
