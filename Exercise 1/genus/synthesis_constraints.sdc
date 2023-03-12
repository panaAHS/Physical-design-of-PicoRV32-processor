#1) clk period = 10ns, duty cycle = 50%
create_clock -name clk -period 10 -waveform {0 5} [get_ports clk]

#2) clock latency = 400ps
set_clock_latency 0.4 [get_clocks clk]

#3)uncertainty = 50ps
set_clock_uncertainty 0.05 [get_clocks clk]

#4) transition 1%*10ns = 0.1ns
set_clock_transition 0.1 [get_clocks clk]

#5) output delay 1ns -> setup
set_output_delay -clock clk -max 1 -network_latency_included [all_outputs]

#6) output delay 0.4ns -> hold
set_output_delay -clock clk -min 0.4 -network_latency_included [all_outputs]

#7) output load setup -pin_load
set_load -max 0.5 [all_outputs]

#8) output load hold  -pin_load
set_load -min 0.01 [all_outputs]

#9) input delay setup -add_delay
set_input_delay -clock clk -max 1 -network_latency_included [all_inputs]

#10) input delay hold -add_delay
set_input_delay -clock clk -min 0.4 -network_latency_included [all_inputs]

#11)
#setup
set_driving_cell -lib_cell BUFX2 -max [all_inputs]

#hold
set_driving_cell -lib_cell BUFX16 -min  [all_inputs]
