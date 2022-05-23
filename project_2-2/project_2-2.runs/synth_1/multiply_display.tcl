# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.cache/wt} [current_project]
set_property parent.project_path {D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet {{D:/My Projects/VerilogProj_2013631/lcd_module.dcp}}
set_property used_in_implementation false [get_files {{D:/My Projects/VerilogProj_2013631/lcd_module.dcp}}]
read_verilog -library xil_defaultlib {
  {D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.srcs/sources_1/new/multiply.v}
  {D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.srcs/sources_1/new/multiply_display.v}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.srcs/constrs_1/new/multiply.xdc}}
set_property used_in_implementation false [get_files {{D:/My Projects/VerilogProj_2013631/project_2-2/project_2-2.srcs/constrs_1/new/multiply.xdc}}]


synth_design -top multiply_display -part xc7a200tfbg676-2


write_checkpoint -force -noxdef multiply_display.dcp

catch { report_utilization -file multiply_display_utilization_synth.rpt -pb multiply_display_utilization_synth.pb }