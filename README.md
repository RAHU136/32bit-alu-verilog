# 32-Bit Arithmetic Logic Unit (ALU) using Verilog

## 📌 Project Overview

This project implements a **32-bit Arithmetic Logic Unit (ALU)** in Verilog HDL. The ALU performs arithmetic and logical operations on two 32-bit operands based on a control signal. The design has been verified using a Verilog testbench and synthesized using Yosys.

---

## ✨ Features

- 32-bit data width
- Combinational logic design
- Verilog HDL implementation
- Functional simulation
- RTL synthesis using Yosys
- Testbench for verification

---

## Supported Operations

| Control | Operation |
|----------|-----------|
| 0000 | Addition |
| 0001 | Subtraction |
| 0010 | Bitwise AND |
| 0011 | Bitwise OR |
| 0100 | Bitwise XOR |
| 0101 | Bitwise NOT |
| 0110 | Logical Left Shift |
| 0111 | Logical Right Shift |
| 1000 | Equal Comparison |

*(Modify the table if your ALU supports different operations.)*

---

## Files Included

- `alu_32bit.v` - ALU RTL design
- `alu_32bit_tb.v` - Testbench
- `alu.ys` - Yosys synthesis script
- `alu_netlist.v` - Synthesized gate-level netlist
- `alu_rtl.dot` - RTL graph
- `alu_rtl.pdf` - RTL schematic
- `alu_sim` - Simulation executable

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Ubuntu Linux

---

## Simulation

Compile the design:

```bash
iverilog -o alu_sim alu_32bit.v alu_32bit_tb.v
```

Run simulation:

```bash
vvp alu_sim
```

Open waveform:

```bash
gtkwave alu.vcd
```

---

## Synthesis

Run synthesis using:

```bash
yosys alu.ys
```

---

## Learning Outcomes

- RTL Design
- Combinational Logic Design
- Verilog HDL Coding
- Functional Verification
- Digital Circuit Synthesis
- Basic ASIC/FPGA Design Flow

---

## Author

**Rahul K**

VLSI Design Enthusiast
