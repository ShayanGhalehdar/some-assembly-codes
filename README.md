# MIPS Assembly Programs (MARS Simulator)

Selected MIPS assembly programs written during a Computer Architecture course. The MARS simulator (`Mars4_3.jar`) is bundled in the repo so the programs can be run as-is on any platform with a JVM.

## Programs

| File | What it does |
|---|---|
| `add two 64-bit numbers from memory.asm` | 64-bit addition using two 32-bit registers with carry propagation. |
| `subtract two 64-bit numbers from memory.asm` | 64-bit subtraction with borrow propagation. |
| `BCD2Binary.asm` | Converts a binary-coded-decimal (BCD) number to its plain binary representation. |
| `fibonacci number corresponding to an indices.asm` | Computes the n-th Fibonacci number. |
| `floating points comparison.asm` | Bitwise comparison of two IEEE-754 single-precision values without using FPU compare instructions. |
| `lunar to solar date.asm` | Converts a Lunar (Hijri) date to the Gregorian/solar calendar. |
| `signed numbers multiplication.asm` | Signed multiplication using shift-and-add with sign correction. |
| `spent days drom 100 years ago.asm` | Counts the number of days elapsed between a given date and a baseline 100 years prior. |

## How to Run

1. Open MARS: `java -jar Mars4_3.jar` (requires Java 8+).
2. File → Open → pick any `.asm` file.
3. Assemble (F3), then Go (F5).
4. Input values from memory/registers as the program comments describe.
