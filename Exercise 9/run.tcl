set_db init_lib_search_path "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing"
set_db script_search_path "/mnt/scratch_b/users/k/karamitopp/Desktop/"
set_db init_hdl_search_path "/mnt/scratch_b/users/k/karamitopp/Desktop/" 
gui_show
set_db library fast_vdd1v0_basicCells.lib
set_db lef_library "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef"
set_db lef_library "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef"
read_qrc "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch"
read_hdl picorv32.v
set_db lp_insert_clock_gating true

elaborate "picorv32"
write_netlist -lec > elab.v
write_do_lec -top picorv32 -golden_design rtl -revised_design elab.v -log_file rtl_elab.lec.log > rtl_elab.do
lec -XL -nogui -dofile rtl_elab.do
report_verification -hier -verbose 



check_design -all
read_sdc synthesis_constraints.sdc
set_db / .use_scan_seqs_for_non_dft false
check_timing_intent
syn_generic

write_netlist -lec > generic.v
write_do_lec -top picorv32 -golden_design elab.v -revised_design generic.v -log_file elab_generic.lec.log > elab_generic.do

write_netlist -lec > generic.v
write_do_lec -top picorv32 -golden_design elab.v -revised_design generic.v -log_file elab_generic.lec.log > elab_generic.do

lec -XL -nogui -dofile rtl_elab.do
report_verification -hier -verbose 


report_clock_gating > ex6report_clock_gating_step5.txt
syn_map

write_do_lec -top picorv32 -golden_design generic.v -revised_design fv_map -log_file generic_fvmap.lec.log > generic_fvmap.do

syn_opt
report_qor > ex_report_qor.txt
report_area > ex_report_area_step6.txt
report_timing > ex_report_timing_step6.txt
report_gates > ex_report_gates_step6.txt
report_power > ex_report_power_step6.txt
report_clock_gating > ex6report_clock_gating_step6.txt

write_hdl > design.txt
write_design -innovus picorv32
