# 1-to-4 Demultiplexer using Verilog HDL

## Project Description

A **Demultiplexer (DEMUX)** is a combinational logic circuit that takes one input signal and distributes it to one of several output lines based on select inputs.

This project implements a **1-to-4 Demultiplexer using Verilog HDL**. The design contains one input, four outputs, and two select lines. The select lines decide which output receives the input signal while all other outputs remain LOW.

The functionality of the demultiplexer is verified using a Verilog testbench.

---

## Features

- 1 Input line
- 4 Output lines
- 2 Select lines
- Combinational logic design
- Simple Verilog implementation
- Testbench verification

---

## Inputs

| Signal | Description |
|--------|-------------|
| D | Data Input |
| S1,S0 | Select Lines |

---

## Outputs

| Signal | Description |
|--------|-------------|
| Y0 | Output 0 |
| Y1 | Output 1 |
| Y2 | Output 2 |
| Y3 | Output 3 |

---

## Truth Table

| S1 | S0 | Y0 | Y1 | Y2 | Y3 |
|----|----|----|----|----|----|
| 0 | 0 | D | 0 | 0 | 0 |
| 0 | 1 | 0 | D | 0 | 0 |
| 1 | 0 | 0 | 0 | D | 0 |
| 1 | 1 | 0 | 0 | 0 | D |

---

## Files

- `demux1x4.v` – Demultiplexer design code
- `demux1x4_tb.v` – Testbench file
- `output.txt` – Expected simulation output
- `README.md` – Project documentation

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado

---

## How to Run

Compile:

```bash
iverilog demux1x4.v demux1x4_tb.v
```

Run:

```bash
vvp a.out
```

---

## Expected Output

```
S1 S0 | Y0 Y1 Y2 Y3
-------------------
0  0  | 1  0  0  0
0  1  | 0  1  0  0
1  0  | 0  0  1  0
1  1  | 0  0  0  1
```

---

## Applications

- Data Routing
- Communication Systems
- Digital Switching
- Processor Systems
- Control Applications

---

