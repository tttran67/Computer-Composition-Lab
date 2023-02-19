# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.cache/wt} [current_project]
set_property parent.project_path {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/inst_multicycle.coe}}
add_files -quiet {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/VerilogProj_2013631/lcd_module.dcp}}
set_property used_in_implementation false [get_files {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/VerilogProj_2013631/lcd_module.dcp}}]
read_mem {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/inst_rom.mif}}
read_verilog -library xil_defaultlib {
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/adder.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/alu.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/decode.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/exe.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/fetch.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/mem.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/multi_cycle_cpu.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/regfile.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/wb.v}
  {D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/imports/multi_cycle_cpu_2/multi_cycle_cpu_display.v}
}
read_ip -quiet {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/data_ram/data_ram.xci}}
set_property used_in_implementation false [get_files -all {{d:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/data_ram/data_ram_ooc.xdc}}]
set_property is_locked true [get_files {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/data_ram/data_ram.xci}}]

read_ip -quiet {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/inst_rom/inst_rom.xci}}
set_property used_in_implementation false [get_files -all {{d:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/inst_rom/inst_rom_ooc.xdc}}]
set_property is_locked true [get_files {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/sources_1/ip/inst_rom/inst_rom.xci}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/constrs_1/imports/multi_cycle_cpu_2/multi_cycle_cpu.xdc}}
set_property used_in_implementation false [get_files {{D:/My Projects/VerilogProj_2013631/multi_cycle_cpu_3/multi_cycle_cpu_2.srcs/constrs_1/imports/multi_cycle_cpu_2/multi_cycle_cpu.xdc}}]


synth_design -top multi_cycle_cpu_display -part xc7a200tfbg676-2


write_checkpoint -force -noxdef multi_cycle_cpu_display.dcp

catch { report_utilization -file multi_cycle_cpu_display_utilization_synth.rpt -pb multi_cycle_cpu_display_utilization_synth.pb }
