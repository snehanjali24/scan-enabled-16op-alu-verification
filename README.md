# Design and Verification of a Scan-Enabled 16-Operation ALU Using Verilog

## Overview

This project implements a Scan-Enabled 16-Operation 4-Bit ALU using Verilog HDL. The design supports arithmetic, logical, shift, comparison, and unary operations. A 4-stage scan chain was integrated using scan flip-flops to demonstrate Design-for-Testability (DFT) concepts.

A self-checking testbench was developed to verify all 16 ALU operations and validate scan-shift functionality through simulation in Vivado.

## Features

- 16 ALU Operations
- Scan Flip-Flop Based Architecture
- 4-Stage Scan Chain
- Self-Checking Testbench
- Functional Verification
- Scan Shift Verification
- RTL Schematic Validation
- Vivado 2025.2 Simulation

## ALU Operations

| Opcode | Operation |
|----------|----------|
|0000|ADD|
|0001|SUB|
|0010|AND|
|0011|OR|
|0100|XOR|
|0101|XNOR|
|0110|NAND|
|0111|NOR|
|1000|LEFT SHIFT|
|1001|RIGHT SHIFT|
|1010|INCREMENT|
|1011|DECREMENT|
|1100|ADD WITH CARRY|
|1101|A > B|
|1110|A == B|
|1111|NOT A|

## Verification

- Verified all 16 ALU operations using a self-checking Verilog testbench.
- Verified scan-chain connectivity and scan-shift functionality.
- Observed expected outputs for all test cases.
- Simulated and validated using Vivado 2025.2.

## Project Files

- scan_dff.v
- alu_scan.v
- alu_scan_tb.v
- rtl_schematic_alu_scan.png
- waveform_verification.png

## Tools Used

- Verilog HDL
- Vivado 2025.2

## Author

Snehanjali
