set_db init_lib_search_path "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing"
set_db script_search_path "/mnt/scratch_b/users/k/karamitopp/Desktop/"
set_db init_hdl_search_path "/mnt/scratch_b/users/k/karamitopp/Desktop/"
gui_show
set_db library fast_vdd1v0_basicCells.lib
set_db lef_library "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef"
set_db lef_library "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef"
read_qrc "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch/gpdk045.tch"
read_hdl picorv32.v
elaborate "picorv32"
check_design -all
read_sdc synthesis_constraints.sdc
set_db / .use_scan_seqs_for_non_dft false
check_timing_intent
syn_generic
syn_map
syn_opt
report_area
report_timing
report_gates
report_power
write_hdl > design.txt
write_design -innovus picorv32
