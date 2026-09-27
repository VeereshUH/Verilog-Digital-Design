# Half Adder using Verilog

## Description

A Half Adder is a combinational digital circuit that adds two 1-bit binary inputs and produces two outputs: Sum and Carry.

## Logic

- **Sum = A XOR B**
- **Carry = A AND B**

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## Implementation

The Half Adder is implemented using Verilog gate-level primitives:

- XOR gate for Sum
- AND gate for Carry

## Files

- `design.sv` - Half Adder design
- `testbench.sv` - Testbench used for simulation

## Simulation

The design can be simulated using Icarus Verilog:

```bash
iverilog -g2012 design.sv testbench.sv
vvp a.out
