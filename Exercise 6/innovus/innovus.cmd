#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Dec  9 08:54:45 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.11-s128_1 (64bit) 08/20/2019 20:54 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.11-s128_1 NR190815-2055/19_11-UB (database version 18.20, 469.7.1) {superthreading v1.51}
#@(#)CDS: AAE 19.11-s034 (64bit) 08/20/2019 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.11-s040_1 () Aug  1 2019 08:53:57 ( )
#@(#)CDS: SYNTECH 19.11-e010_1 () Jul 15 2019 20:31:02 ( )
#@(#)CDS: CPE v19.11-s006
#@(#)CDS: IQuantus/TQuantus 19.1.2-s245 (64bit) Thu Aug 1 10:22:01 PDT 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_lef_file {../../../../apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef ../../../../apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog genus_invs_des/genus.v
set init_mmmc_file ex6/Defaultv1.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.982857719068 0.75 15 15.0 15.0 15.0
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} -width {top 3 bottom 3 left 3 right 3} -spacing {top 3 bottom 3 left 3 right 3} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal11 -direction horizontal -width 3 -spacing 3 -number_of_sets 3 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VDD -type tiehi -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VSS -type tielo -instanceBasename *
createPGPin VDD -net VDD -geom Metal10 20 0 22 12
createPGPin VSS -net VSS -geom Metal11 26 0 28 6
editPowerVia -top_layer Metal11 -area {20 9 22 12} -add_vias 1 -bottom_layer Metal10
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX12 BUFX16 BUFX2 BUFX20 BUFX3 BUFX4 BUFX6 BUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 DLY1X1 DLY1X4 DLY2X1 DLY2X4 DLY3X1 DLY3X4 DLY4X1 DLY4X4 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 INVX1 INVX12 INVX16 INVX2 INVX20 INVX3 INVX4 INVX6 INVX8 INVXL} -maxAllowedDelay 1
setDesignMode -process 45
place_opt_design
checkPlace picorv32.checkPlace
setDrawView place
fit
refinePlace -checkRoute 0 -preserveRouting 1 -rmAffectedRouting 0 -swapEEQ 0
report_power > ex6.1_step_12_innovus_power.txt
report_timing > ex6.1_step_12_innovus_timing.txt
report_area > ex6.1_step_12_innovus_area.txt
report_clock_gating_check > ex6.1_step_12_innovus_clock_geting.txt
setRouteMode -earlyGlobalMinRouteLayer 1 -earlyGlobalMaxRouteLayer 11 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
reportCongestion -hotSpot
setRouteMode -earlyGlobalMinRouteLayer 2 -earlyGlobalMaxRouteLayer 10 -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute
reportCongestion -hotSpot
add_ndr -width {Metal1 0.12 Metal2 0.16 Metal3 0.16 Metal4 0.16 Metal5 0.16 Metal6 0.16 Metal7 0.16 Metal8 0.16 Metal9 0.16 Metal10 0.44 Metal11 0.44 } -spacing {Metal1 0.12 Metal2 0.14 Metal3 0.14 Metal4 0.14 Metal5 0.14 Metal6 0.14 Metal7 0.14 Metal8 0.14 Metal9 0.14 Metal10 0.4 Metal11 0.4 } -name NDRSTEP13
create_route_type -top_preferred_layer Metal9 -bottom_preferred_layer Metal7 -non_default_rule NDRSTEP13 -name STEP13
set_ccopt_property target_skew 0.1
set_ccopt_property target_max_trans 0.15
create_ccopt_clock_tree_spec -file step14sel46pdf
ccopt_design
optDesign -postCTS
report_ccopt_clock_trees > ex6.1report_ccopt_clock_trees_vima14.txt
report_ccopt_skew_groups > ex6.1report_ccopt_skew_groups_vima14.txt
report_clock_gating_check > ex6.1_step_14_innovus_clock_geting.txt
report_power > report_power_vima14.txt
report_power > ex6.1report_power_vima14.txt
report_area > ex6.1report_area_vima14.txt
report_timing > ex6.1report_timing_vima14.txt
getCTSMode -engine -quiet
ctd_win -id ctd_window
selectInst genblk2.pcpi_div_RC_CG_HIER_INST57/RC_CGIC_INST
zoomSelected
deselectInst genblk2.pcpi_div_RC_CG_HIER_INST57/RC_CGIC_INST
fit
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort medium
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
optDesign -postRoute -setup -hold
report_power > ex6.1report_power_vima15.txt
report_area > ex6.1report_area_vima15.txt
report_timing > ex6.1report_timing_vima15.txt
report_clock_gating_check > ex6.1_step_15_innovus_clock_geting.txt
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report picorv32.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyConnectivity -type all -error 1000 -warning 50
setMetalFill -layer Metal1 -opcActiveSpacing 0.060 -minDensity 10.00
setMetalFill -layer Metal2 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal3 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal4 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal5 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal6 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal7 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal8 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal9 -opcActiveSpacing 0.070 -minDensity 10.00
setMetalFill -layer Metal10 -opcActiveSpacing 0.200 -minDensity 10.00
setMetalFill -layer Metal11 -opcActiveSpacing 0.200 -minDensity 10.00
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 181.145 140.695 183.855 144.115
zoomBox 181.145 140.695 183.855 144.115
zoomBox 181.145 140.695 183.855 144.115
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 141.545 145.825 144.255 149.245
zoomBox 141.545 145.825 144.255 149.245
zoomBox 141.545 145.825 144.255 149.245
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 163.545 157.795 166.255 161.215
zoomBox 163.545 157.795 166.255 161.215
zoomBox 163.545 157.795 166.255 161.215
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 110.345 89.395 113.055 92.815
zoomBox 110.345 89.395 113.055 92.815
zoomBox 110.345 89.395 113.055 92.815
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 117.745 91.105 120.455 94.525
zoomBox 117.745 91.105 120.455 94.525
zoomBox 117.745 91.105 120.455 94.525
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 95.345 91.105 98.055 94.525
zoomBox 95.345 91.105 98.055 94.525
zoomBox 95.345 91.105 98.055 94.525
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 123.745 89.395 126.455 92.815
zoomBox 123.745 89.395 126.455 92.815
zoomBox 123.745 89.395 126.455 92.815
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 171.545 183.445 174.255 186.865
zoomBox 171.545 183.445 174.255 186.865
zoomBox 171.545 183.445 174.255 186.865
::Rda_Browser::VB::violationBrowserSetObjs
zoomBox 167.945 197.125 170.655 200.545
zoomBox 167.945 197.125 170.655 200.545
zoomBox 167.945 197.125 170.655 200.545
::Rda_Browser::VB::violationBrowserSetObjs
violationBrowserClose
selectMarker 168.8000 197.9800 169.8000 199.6900 -1 12 87
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
fit
deselectAll
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserHide -tool CheckPlace
violationBrowserClose
getCTSMode -engine -quiet
addMetalFill -layer { Metal1 Metal2 Metal3 Metal4 Metal5 Metal6 Metal7 Metal8 Metal9 Metal10 Metal11 } -nets { VSS VDD }
saveDesign innovus_picorv32_ex6.1_vima16
