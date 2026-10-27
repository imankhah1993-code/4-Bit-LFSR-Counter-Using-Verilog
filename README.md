4-Bit LFSR Counter Using Verilog



Overview



This project implements a 4-bit sequence generator using Verilog HDL in Xilinx Vivado. It uses a clock divider to generate a slower clock, a 4-bit binary counter to select states, and a lookup table to generate the corresponding 4-bit output sequence.



The output is displayed using four LEDs on the FPGA board.



Modules



1\. slow\_clk.v



Divides the incoming clock by counting clock cycles and toggling the output clock when the count reaches 50,000.



2\. four\_bit\_counter.v



Implements a 4-bit binary counter that increments on every rising edge of the clock. It includes an asynchronous clear input.



3\. LFSR\_counter.v



Combines the clock divider and 4-bit counter. A case statement maps each counter state to a 4-bit output pattern.



Note: The output sequence is generated using a lookup table. Although the module is named LFSR\_counter, this implementation is not a conventional feedback-based LFSR.



Hardware Requirements



Xilinx FPGA development board compatible with the selected pin constraints



Xilinx Vivado Design Suite



USB programming cable, if required by the board









How It Works



The clock divider counts input clock cycles and toggles clk\_out when the count reaches 50,000.



The 4-bit counter increments on each rising edge of the divided clock.



The lookup table converts the counter value into a 4-bit output pattern.



The four output bits drive the FPGA LEDs.



How to Run in Vivado



Create or open a Vivado project.



Add slow\_clk.v, four\_bit\_counter.v, and LFSR\_counter.v as design sources.



Add the XDC constraints file.



Set LFSR\_counter as the top module.



Run Synthesis and resolve any errors.



Run Implementation.



Generate the bitstream.



Program the FPGA and observe the LED sequence.



Repository Structure



.

├── slow\_clk.v

├── four\_bit\_counter.v

├── LFSR\_counter.v

├── LFSR\_counter.xdc

├── .gitignore

└── README.md

