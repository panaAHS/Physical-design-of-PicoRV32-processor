# Cadence Genus(TM) Synthesis Solution, Version 19.11-s087_1, built Aug 13 2019 11:48:07

# Date: Thu Dec 08 20:27:54 2022
# Host: cn98.it.auth.gr (x86_64 w/Linux 3.10.0-1160.80.1.el7.x86_64) (1core*12cpus*23physical cpus*Intel(R) Xeon(R) Gold 6230 CPU @ 2.10GHz 28160KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

source run.tcl
read_qrc "/mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch"
read_hdl picorv32.v
read_hdl picorv32.v
set_db lp_insert_clock_gating true
elaborate "picorv32"
check_design -all
set_db / .use_scan_seqs_for_non_dft false
read_sdc synthesis_constraints.sdc
check_timing_intent
syn_generic
report_clock_gating > ex6report_clock_gating_step5.txt
syn_map
syn_opt
report_qor > ex6_report_qor.txt
report_area > ex6_report_area_step6.txt
report_timing > ex6_report_timing_step6.txt
report_gates > ex6_report_gates_step6.txt
report_power > ex6_report_power_step6.txt
report_clock_gating > ex6report_clock_gating_step6.txt
write_design -innovus picorv32
