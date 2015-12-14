# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k325tffg900-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/reese/xilinx_ring_oscilator/xilinx_ring_oscilator.cache/wt [current_project]
set_property parent.project_path /home/reese/xilinx_ring_oscilator/xilinx_ring_oscilator.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:0.9 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib -sv /home/reese/xilinx_ring_oscilator/xilinx_ring_oscilator.srcs/sources_1/new/ring_osc_mod.v
read_xdc /home/reese/xilinx_ring_oscilator/xilinx_ring_oscilator.srcs/constrs_1/new/KC_705_CONSTRAINTS.xdc
set_property used_in_implementation false [get_files /home/reese/xilinx_ring_oscilator/xilinx_ring_oscilator.srcs/constrs_1/new/KC_705_CONSTRAINTS.xdc]

synth_design -top ring_osc_mod -part xc7k325tffg900-2
write_checkpoint -noxdef ring_osc_mod.dcp
catch { report_utilization -file ring_osc_mod_utilization_synth.rpt -pb ring_osc_mod_utilization_synth.pb }