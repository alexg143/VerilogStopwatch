##Clock
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Schematic=SYSCLK
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 4} [get_ports { clk }];

##Buttons
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L8P_T1_34 Schematic=BTN0
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4N_T0_34 Schematic=BTN1
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L24P_T3_34 Schematic=BTN2
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L23P_T3_35 Schematic=BTN3

##SevenSegmentDisplay
##anodes
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { anode[0] }]; #IO_L10P_T1_AD11P_35 Schematic=SSEG_AN0
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { anode[1] }]; #IO_L13N_T2_MRCC_35 Schematic=SSEG_AN1
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { anode[2] }]; #IO_L8N_T1_AD10N_35 Schematic=SSEG_AN2
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { anode[3] }]; #IO_L11P_T1_SRCC_35 Schematic=SSEG_AN3

##cathodes
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { cathode[0] }]; #IO_L20P_T3_AD6P_35 Schematic=SSEG_CA
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { cathode[1] }]; #IO_L19P_T3_35 Schematic=SSEG_CB
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { cathode[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Schematic=SSEG_CC
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { cathode[3] }]; #IO_25_35 Schematic=SSEG_CD
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { cathode[4] }]; #IO_L8P_T1_AD10P_35 Schematic=SSEG_CE
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { cathode[5] }]; #IO_L24N_T3_AD15N_35 Schematic=SSEG_CF
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { cathode[6] }]; #IO_L8P_T1_AD10P_35 Schematic=SSEG_CG
##set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { dp }]; #IO_L12N_T1_MRCC_35 Schematic=SSEG_DP