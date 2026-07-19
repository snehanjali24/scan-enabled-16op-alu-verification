Design and Functional Verification of a Scan-Enabled 16-Operation 4-Bit ALU Using Verilog
Overview

This project presents the RTL design and functional verification of a Scan-Enabled 16-Operation 4-Bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU supports arithmetic, logical, shift, comparison, and unary operations through a 4-bit opcode.

To demonstrate basic Design-for-Testability (DFT) concepts, a 4-stage scan chain was implemented using Scan D Flip-Flops (Scan DFFs). A self-checking Verilog testbench was developed to verify the functionality of all ALU operations and validate scan-shift behavior through simulation.

The project was successfully simulated, verified, and synthesized using Vivado 2025.2 and Yosys.

Project Objectives
Design a parameterized 4-bit ALU supporting 16 operations.
Implement Scan D Flip-Flops for basic DFT.
Integrate a 4-stage scan chain.
Develop a self-checking verification environment.
Verify functional and scan-shift behavior.
Validate RTL architecture through synthesis.
Features
✔ RTL Design using Verilog HDL
✔ 16 ALU Operations
✔ Scan-Enabled Architecture
✔ Scan D Flip-Flop Implementation
✔ 4-Stage Scan Chain
✔ Basic Design-for-Testability (DFT)
✔ Self-Checking Verilog Testbench
✔ Functional Verification
✔ Scan Shift Verification
✔ RTL Schematic Generation
✔ Simulation using Vivado 2025.2
✔ RTL Synthesis using Yosys
ALU Operations
Opcode	Operation
0000	Addition
0001	Subtraction
0010	AND
0011	OR
0100	XOR
0101	XNOR
0110	NAND
0111	NOR
1000	Left Shift
1001	Right Shift
1010	Increment
1011	Decrement
1100	Addition with Carry
1101	A > B Comparison
1110	A == B Comparison
1111	Bitwise NOT A
Design Architecture

The ALU consists of:

4-bit combinational ALU datapath
Opcode-based operation decoder
Four Scan D Flip-Flops
4-stage scan chain
Functional and scan mode selection through Scan Enable
Registered outputs

The scan chain enables serial loading and observation of internal flip-flop states, demonstrating the fundamentals of scan-based testing.

Verification Methodology

A self-checking Verilog testbench was developed to automate functional verification.

The verification process included:

Verification of all 16 ALU operations
Functional mode validation
Scan Enable control verification
Scan Shift operation verification
Scan chain connectivity verification
Comparison of DUT outputs with expected outputs
Automatic PASS/FAIL reporting
Waveform generation for debugging and analysis

Simulation results confirmed correct behavior for all functional and scan test cases.

Results

The project was successfully verified through simulation.

Verified components include:

Functional correctness of all ALU operations
Scan chain connectivity
Scan Shift functionality
Registered outputs
RTL architecture
Successful synthesis without functional errors
RTL Schematic

(Insert RTL schematic image here)

docs/rtl_schematic.png
Simulation Waveforms

(Insert waveform screenshot here)

docs/waveform.png
Project Structure
scan-enabled-16op-alu-verification/

├── rtl/
│   ├── alu_scan.v
│   └── scan_dff.v
│
├── tb/
│   └── alu_scan_tb.v
│
├── synthesis/
│   ├── synth.ys
│   └── synthesized_netlist.v
│
├── docs/
│   ├── rtl_schematic.png
│   ├── waveform.png
│   └── block_diagram.png
│
└── README.md
Tools Used
Verilog HDL
Vivado 2025.2
Yosys
XSim Simulator
Skills Demonstrated
RTL Design
Functional Verification
Verilog HDL
Testbench Development
Scan D Flip-Flops
Basic Design-for-Testability (DFT)
Scan Chain Implementation
Digital Logic Design
RTL Simulation
RTL Synthesis
Debugging using Waveforms
Future Enhancements
Develop a SystemVerilog testbench
Add Assertion-Based Verification (SVA)
Implement functional coverage
Build a UVM verification environment
Extend to parameterized ALU architecture
Perform gate-level simulation after synthesis
Author

Snehanjali
