# Full Subtractor – Verilog

A **1-bit Full Subtractor** designed using Verilog HDL.

### Logic

**Difference:**

```text
Diff = A ⊕ B ⊕ Bin
```

**Borrow:**

```text
Borrow = (~A & B) | (B & Bin) | (~A & Bin)
```

### Truth Table

| A | B | Bin | Diff | Borrow |
| - | - | --- | ---- | ------ |
| 0 | 0 | 0   | 0    | 0      |
| 0 | 0 | 1   | 1    | 1      |
| 0 | 1 | 0   | 1    | 1      |
| 0 | 1 | 1   | 0    | 1      |
| 1 | 0 | 0   | 1    | 0      |
| 1 | 0 | 1   | 0    | 0      |
| 1 | 1 | 0   | 0    | 0      |
| 1 | 1 | 1   | 1    | 1      |

### Highlights

* Implemented using **continuous assignments (`assign`)**.
* Testbench verifies all **8 input combinations**.
* Uses a `for` loop for automatic testing.

### Tools

* Verilog HDL
* Verilog Simulator
* GitHub
