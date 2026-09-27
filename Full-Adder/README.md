# Full Adder using Verilog

## Description

A Full Adder is a combinational digital circuit that adds three 1-bit binary inputs and produces two outputs: Sum and Carry.

The three inputs are A, B, and Carry-in (Cin).

## Logic

- **Sum = A XOR B XOR Cin**
- **Carry = AB + BCin + ACin**

## Truth Table

| A | B | Cin | Sum | Carry |
|---|---|-----|-----|-------|
| 0 | 0 |  0  |  0  |   0   |
| 0 | 0 |  1  |  1  |   0   |
| 0 | 1 |  0  |  1  |   0   |
| 0 | 1 |  1  |  0  |   1   |
| 1 | 0 |  0  |  1  |   0   |
| 1 | 0 |  1  |  0  |   1   |
| 1 | 1 |  0  |  0  |   1   |
| 1 | 1 |  1  |  1  |   1   |

## Implementation

The Full Adder is implemented using Verilog gate-level primitives:

- XOR gate for Sum
- AND gates for intermediate Carry terms
- OR gate for final Carry

## Files

- `design.sv` - Full Adder design
- `testbench.sv` - Testbench used for simulation

## Simulation

The design can be simulated using Icarus Verilog:

```bash
iverilog -g2012 design.sv testbench.sv
vvp a.out
