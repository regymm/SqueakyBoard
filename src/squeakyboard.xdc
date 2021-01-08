## .xdc file for SqueakyBoard by petergu

## sysclk
#set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports sysclk]
#create_clock -period 20.000 -name clk_50M -waveform {0.000 10.000} -add [get_ports sysclk]

## buttons, switches and LEDs
#set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {btn[0]}]
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {btn[1]}]
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {sw[0]}]
#set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
#set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
#set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
#set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
#set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {led[3]}]


## PMOD1
#set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports p1p]
#set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports p1n]
#set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports p2p]
#set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports p2n]
#set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports p3p]
#set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports p3n]
#set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports p4p]
#set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports p4n]

## PMOD2
#set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports p5p]
#set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports p5n]
#set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports io1]
#set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports io2]
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports io3]
#set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports io4]
#set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports io5]
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports io6]

## PMOD4+
#set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports q1p]
#set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports q1n]
#set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports q2p]
#set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports q2n]
#set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports q3p]
#set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports q3n]
#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports q4p]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports q4n]

# W5500-Lite
#set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports eth_cs]
#set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports eth_sclk]
#set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports eth_mosi]
#set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports eth_miso]
#set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports eth_rst]
#set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports eth_int]

# HDMI
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD TMDS_33} [get_ports TMDSn_clock]
#set_property -dict {PACKAGE_PIN V20 IOSTANDARD TMDS_33} [get_ports TMDSp_clock]
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD TMDS_33} [get_ports {TMDSn[0]}]
#set_property -dict {PACKAGE_PIN M17 IOSTANDARD TMDS_33} [get_ports {TMDSp[0]}]
#set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports {TMDSn[1]}]
#set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports {TMDSp[1]}]
#set_property -dict {PACKAGE_PIN P20 IOSTANDARD TMDS_33} [get_ports {TMDSn[2]}]
#set_property -dict {PACKAGE_PIN N20 IOSTANDARD TMDS_33} [get_ports {TMDSp[2]}]

# UART FAILED
#set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports uart_tx]
#set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports uart_rx]

# USB PS2
#set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports usbdp]
#set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports usbdn]
#set_property PULLUP TRUE [get_ports usbdp]
#set_property PULLUP TRUE [get_ports usbdn]

# SD Card
#set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports sd_ncd]
#set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports sd_dat0]
#set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sd_dat1]
#set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports sd_dat2]
#set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports sd_dat3]
#set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports sd_cmd]
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports sd_sck]

# PSRAM U4
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports psram_ce]
#set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports psram_mosi]
#set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports psram_miso]
#set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports psram_sio2]
#set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports psram_sio3]
#set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports psram_sclk]

