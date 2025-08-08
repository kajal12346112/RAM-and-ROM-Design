# RAM-and-ROM-Design
# Single-Port RAM, Dual-Port RAM, and ROM in Verilog

## Overview
1. Single-Port RAM– Memory with one read/write port.
2. Dual-Port RAM – Memory with two independent read/write ports.
3. ROM (Read-Only Memory)– Pre-initialized memory with read-only access.
4. 
##  Features
1. Single-Port RAM
- One port used for both read and write operations.
- Synchronous read and write (data read on the next clock edge).
 2. Dual-Port RAM
- Two independent ports.
- Each port has its own address, data, and control signals.

 3. ROM
- Preloaded with data using an `initial` block.
- Synchronous read on clock edge.
- Output is read-only; no write logic.
