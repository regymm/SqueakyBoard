# SqueakyBoard

**A self-designed ZYNQ 7010 FPGA development board**

![src/main.png]

Main Features:

- 4-layer, 9.9 cm x 9.9 cm, compatible with JLCPCB requirements, friendly for hand-soldering, cost-optimized
- 28 K logic elements & Vivado compatible, using the programmable logic of ZYNQ 7010 CLG400

Connectivity:

- Pluggable CJMCU-FT232HL as JTAG downloader, and standard 2x7 JTAG port
- SPI PSRAM up to 64 MBytes
- Basic HDMI Port
- USB-to-UART
- Two USB ports, one connected directly and one via CH375b
- Micro SD Card
- Pluggable W5500-Lite module
- Up to 4 Pmod interface
- 4 LEDs, 2 slide switches, 2 push buttons
- Power input via JTAG downloader, USB-to-UART, or 5V Jack 

Gallery:







Warning:

- Use as your own risk and I won't be responsible for your problems, of course

- My testings may not be sufficient
- No DDR so the ARM cores are literally useless, be aware of this
- Using ingenuine JTAG downloader may have legal issue
- Electrostatic discharge should be taken care of
- It's a 4-layer so all common PCB design rules are put aside, running high speed signals may run into problem

