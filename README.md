# RISC CPU Design

This is a simple RISC processor designed from scratch in Verilog and VHDL with Intel/Altera Quartus II, for a Computer Architecture course. It has 32-bit instructions and a 16-bit datapath.

## Architecture

![RTL view](CPU%20Project/rtl1.jpg)

The processor is built from these parts:

- **ALU (`ALU.v`):** a 16-bit ALU with 8 operations: pass, add, subtract, two shift operations, NAND, and max. It outputs zero, sign, equal and overflow flags.
- **Register file (`regFile.v`):** 32 registers of 16 bits, with two read ports and one write port.
- **Memory (`memory.v`):** memory with 8-bit addresses and 16-bit data, using a start/ready handshake.
- **Multiplier:** a 16x16 multiplier (`mult16x16`).
- **Special registers:** the 32-bit instruction register (`reg32_IR`), 8-bit PC, SP and address registers (`reg8_PC`, `reg8_SP`, `reg8_AR`), and 16-bit temporary and status registers.
- **Multiplexers:** 2-to-1 multiplexers in 8, 16 and 32-bit widths.
- **Control unit (`ControlLogicGates`):** generates the datapath control signals from the instruction.
- **Datapath and top level:** `DataPath.bdf` connects the parts, and `cpu.bdf` is the top-level design.

![Datapath](CPU%20Project/circuits.jpg)

## Instruction format

![Instruction format](CPU%20Project/inst0.jpg)
![Instruction format](CPU%20Project/inst1.jpg)

## Simulation

`Waveform.vwf` contains the waveform tests used to check that instructions run correctly.

![RTL view](CPU%20Project/rtl2.jpg)

## Running

1. Open `CPU Project/cpu.qpf` in Quartus II 9.0 SP2 Web Edition.
2. Compile the project. The target device is set in the project settings.
3. Open `Waveform.vwf` and run the simulation.

## Tech

- Verilog
- VHDL
- Quartus II block diagrams
- Altera megafunctions (multiplier, registers, multiplexers)
