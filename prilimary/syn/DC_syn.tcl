#Read All Files
read_verilog ../src/DT.v
current_design DT
link

#Setting Clock Constraints
source -echo -verbose DT.sdc

#Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc     -hierarchy -output "DT_syn.ddc"
write_sdf DT_syn.sdf
write_file -format verilog -hierarchy -output DT_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  DT_syn.qor

