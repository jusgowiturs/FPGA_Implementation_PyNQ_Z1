# Assign the system clock to the correct pin
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Create the system clock constraint (125 MHz = 8 ns period)
create_clock -period 8.000 -name sys_clk -waveform {0 4} [get_ports clk]

#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#set_property PACKAGE_PIN    D19 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN    D20 [get_ports rst_n]

set_property IOSTANDARD LVCMOS33 [get_ports up_down]
set_property PACKAGE_PIN    L20 [get_ports up_down]

set_property IOSTANDARD LVCMOS33 [get_ports enable]
set_property PACKAGE_PIN    L19 [get_ports enable]


### LEDs
set_property IOSTANDARD LVCMOS33 [get_ports count[3]]
set_property PACKAGE_PIN    M14 [get_ports count[3]]

set_property IOSTANDARD LVCMOS33 [get_ports count[2]]
set_property PACKAGE_PIN    N16 [get_ports count[2]]
    
set_property IOSTANDARD LVCMOS33 [get_ports count[1]]
set_property PACKAGE_PIN    P14 [get_ports count[1]]

set_property IOSTANDARD LVCMOS33 [get_ports count[0]]
set_property PACKAGE_PIN    R14 [get_ports count[0]]