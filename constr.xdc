## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

#Pmod Header JA
#Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {signal}]
	set_property IOSTANDARD LVCMOS33 [get_ports {signal}]


#7 segment display
set_property PACKAGE_PIN W7 [get_ports {Seg[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {Seg[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {Seg[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {Seg[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {Seg[4]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {Seg[5]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {Seg[6]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {Dig[0]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dig[0]}]
set_property PACKAGE_PIN U4 [get_ports {Dig[1]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dig[1]}]
set_property PACKAGE_PIN V4 [get_ports {Dig[2]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dig[2]}]
set_property PACKAGE_PIN W4 [get_ports {Dig[3]}]
	set_property IOSTANDARD LVCMOS33 [get_ports {Dig[3]}]