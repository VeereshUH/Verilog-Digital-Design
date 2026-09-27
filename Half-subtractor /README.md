# Half Subtractor using Verilog

## Description

A Half Subtractor is a combinational digital circuit that subtracts two 1-bit binary inputs and produces two outputs: Difference and Borrow.

## Logic

- **Difference = A XOR B**
- **Borrow = A' AND B**

## Truth Table

| A | B | Difference | Borrow |
|---|---|------------|--------|
| 0 | 0 |     0      |   0    |
| 0 | 1 |     1      |   1    |
| 1 | 0 |     1      |   0    |
| 1 | 1 |     0      |   0    |

## Implementation

The Half Subtractor is implemented using Verilog gate-level primitives:

- XOR gate for Difference
- NOT gate to complement input A
- AND gate for Borrow

## Files

- `design.sv` - Half Subtractor design
- `testbench.sv` - Testbench used for simulation

## Simulation

The design can be simulated using Icarus Verilog:

```bash
iverilog -g2012 design.sv testbench.sv
vvp a.out
