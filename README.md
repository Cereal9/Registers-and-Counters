# Lab 6: Registers and Counters


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



## Design and Implementation of a 4-bit Loadable Counter

### Theory
A **loadable counter** is a sequential circuit that increments or loads a specific value. The 4-bit counter designed in this lab uses D flip-flops and multiplexers to enable controlled counting and loading functions.

### Procedure
- Create a new VHDL file named `Counter-4bit.vhd`.
- Design a 4-bit loadable counter using D flip-flops and the `MUX2to1_1bit` component from Lab 4.
- Add an active-high clear input to reset the count.
- Define four test statements to verify counter functionality.
- Simulate and confirm the correct operation of the counter.
- Implement the counter on an FPGA with the following assignments:
  - **D (Input Data)** → Switches 0-3
  - **Count Output** → LEDs 0-3
  - **Clk (Clock)** → Switch 4
  - **Clr (Clear)** → Switch 5
  - **Ct (Count Enable)** → Switch 6
  - **Ld (Load Enable)** → Switch 7
- Validate the functionality based on test statements.
- Demonstrate functionality to the instructor.

### Observations and Results
- The counter correctly loaded values and incremented as expected.
- The clear input effectively reset the count.
- FPGA implementation verified expected behavior.

### Conclusion
The 4-bit loadable counter successfully demonstrated controlled counting operations, essential for digital counting applications.



## Summary and Final Thoughts
This lab provided practical experience with registers and counters, reinforcing their roles in sequential circuit design. The FPGA implementations matched simulation expectations, confirming the accuracy of the designs.

Future improvements could include:
- Implementing bidirectional shift registers.
- Adding synchronous reset and preset functions.
- Expanding the counter to more bits for broader applications.

### Files in Repository
- `MUX2to1_1bit.vhd` – VHDL code for the multiplexer
- `4to1_MUX.vhd` – VHDL code for the multiplexer
- `ShiftRegister.vhd` – VHDL code for the shift register
- Simulation screenshots (to be added)


