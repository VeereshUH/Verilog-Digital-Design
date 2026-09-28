# 4-Bit Ripple Carry Adder – Verilog

A **4-bit Ripple Carry Adder (RCA)** designed using Verilog HDL to add two 4-bit binary numbers.

### Logic

For each bit:

**Sum:**

```text
Sum = A ⊕ B ⊕ Cin
```

**Carry:**

```text
Cout = (A & B) | (B & Cin) | (A & Cin)
```

### Carry Propagation

Three intermediate carry signals are used to pass the carry from one bit to the next:

```text
Cin → C1 → C2 → C3 → Cout
```

* `C1` → Carry from bit 0 to bit 1
* `C2` → Carry from bit 1 to bit 2
* `C3` → Carry from bit 2 to bit 3
* `Cout` → Final carry output

### Test Cases

```text
0001 + 0010 = 0011
0101 + 1010 = 1111
```

### Tools

* Verilog HDL
* Verilog Simulator
* GitHub
