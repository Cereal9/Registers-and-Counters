# Lab 6: Registers

## Introduction
This lab focuses on the design, simulation, and implementation of registers, fundamental components in sequential digital logic. Specifically, we will develop an 8-bit shift register, a crucial element for data storage and transfer in digital systems.

## Objectives
- Design, simulate, and implement an 8-bit shift register.
- Utilize multiplexers and flip-flops to control data flow.
- Implement the shift register on an FPGA and validate functionality.

## 8-bit Shift Register Design and Implementation

### Theory
A **shift register** is a sequential circuit composed of flip-flops that shifts data on clock pulses. The 8-bit shift register in this lab is a parallel-in, parallel-out right-shift register utilizing D flip-flops and multiplexers for controlled data flow. It features an active-high clear input for resetting stored data.

### Procedure
1. **Multiplexer Design**
   - Create a VHDL file `MUX4to1-1bit.vhd`.
   - Implement a 4-input, 1-output multiplexer.
   - Develop testbench statements to verify multiplexer operation.
   - Simulate and confirm correct functionality.

2. **Shift Register Implementation**
   - Utilize the following components:
     - `MUX4to1-1bit` multiplexer.
     - `D_flipflop` from previous lab.
   - Implement an 8-bit shift register in `ShiftRegister-8bit.vhd` with:
     - Active-high clear input.
     - Shift control mechanism.
     - Parallel data loading capability.
   - Develop a testbench with at least six test cases to verify functionality.
   - Simulate the design and analyze results.

3. **FPGA Implementation**
   - Assign FPGA inputs/outputs as follows:
     - **D (Data inputs)** → Switches 0-7
     - **Clr (Clear)** → Switch 8
     - **L (Load Enable)** → Switch 9
     - **Clk (Clock)** → Button 0
     - **Sh (Shift Control)** → Button 1
     - **SI (Serial Input)** → Button 2
     - **Q (Outputs)** → LEDs
   - Deploy and test the shift register on an FPGA.
   - Validate its functionality through hardware testing.
   - Demonstrate functionality to the instructor or record an explanation video.

## Observations and Results
- The shift register successfully stored and shifted data.
- The clear function correctly erased stored data.
- FPGA implementation aligned with simulation results.
- The use of multiplexers simplified control logic.

## Conclusion
This lab demonstrated the design and implementation of an 8-bit shift register using VHDL. The shift register effectively stored and shifted data, highlighting its importance in digital data transfer and storage applications. The FPGA validation confirmed the reliability of the design in hardware applications.
