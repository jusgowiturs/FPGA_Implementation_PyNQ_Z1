#set_property PACKAGE_PIN H16 [get_ports Pclk]
#set_property IOSTANDARD LVCMOS33 [get_ports Pclk]
#create_clock -name sysclk -period 8.0 [get_ports Pclk]; #125MHz
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports sysclk ]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports  syclk ];

#set_property PACKAGE_PIN D19 [get_ports rst_n]  #BUTTON_0
#set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports rst_n ]; #IO_L4P_T0_35 Sch=btn[0]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports  data_in ]; #IO_L4N_T0_35 Sch=btn[1]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports Pclk }]; #IO_L9P_T1_DQS_AD3P_35 Sch=btn[3]



#set_property PACKAGE_PIN R14 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports found ]; #IO_L6N_T0_VREF_34 Sch=led[0]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports runindicate]; #IO_L6N_T0_VREF_34 Sch=led[3]