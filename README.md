# Lab 6: Registers


### Introduction
This lab explores the design, simulation, and implementation of registers and counters, essential components in sequential digital logic. Specifically, we will develop an 8-bit shift register and a 4-bit loadable counter. These elements are crucial for data storage, transfer, and counting operations in digital systems.



## Objectives
- Design, analyze, simulate, and implement an 8-bit shift register.
- Design, analyze, simulate, and implement a 4-bit loadable counter.



## Design and Implementation of an 8-bit Shift Register

### Theory
A **shift register** is a sequential circuit that transfers data through a series of flip-flops. The shift register designed in this lab is an 8-bit parallel-in, parallel-out, and right-shift register. It utilizes D flip-flops and multiplexers to control data flow.

### Procedure
- Create a new VHDL file named `MUX4to1-1bit.vhd`.
- Design and implement the VHDL code for a 4-input, 1-output multiplexer.
- Define four test statements for verifying multiplexer functionality.
- Simulate and confirm the correct operation of the multiplexer.
- Create a new VHDL file named `ShiftRegister-8bit.vhd`.
- Implement an 8-bit shift register using:
  - The D flip-flop from Lab 5.
  - The `MUX4to1-1bit` multiplexer.
  - An active-high clear input to reset stored data.
- Define six test statements to verify shift register functionality.
- Simulate and verify that the shift register behaves as expected.
- Implement the shift register on an FPGA with the following assignments:
  - **D (Data inputs)** → Switches 0-7
  - **Clr (Clear)** → Switch 8
  - **L (Load Enable)** → Switch 9
  - **Clk (Clock)** → Button 0
  - **Sh (Shift Control)** → Button 1
  - **SI (Serial Input)** → Button 2
  - **Q (Outputs)** → LEDs
- Validate the functionality based on test statements.
- Demonstrate functionality to the instructor or record a video explaining the operation.

### Observations and Results
- The shift register correctly stored and shifted data.
- The active-high clear erased the data as expected.
- The FPGA implementation confirmed the simulation results.

### Conclusion
The shift register successfully demonstrated data shifting operations, highlighting its importance in serial data transfer applications.






