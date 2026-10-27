# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK100MHZ]
	
# Switches
set_property PACKAGE_PIN V17 [get_ports {reset}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
set_property PACKAGE_PIN V16 [get_ports {clr}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clr}]
	
# LEDs
set_property PACKAGE_PIN U16 [get_ports {lfsr_out[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lfsr_out[0]}]
set_property PACKAGE_PIN E19 [get_ports {lfsr_out[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lfsr_out[1]}]
set_property PACKAGE_PIN U19 [get_ports {lfsr_out[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lfsr_out[2]}]
set_property PACKAGE_PIN V19 [get_ports {lfsr_out[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lfsr_out[3]}]