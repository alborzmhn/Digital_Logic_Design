
# ROM Circuit Project

This repository contains the implementation of a ROM-based datapath system. The project combines several essential components of digital design, including ROM, arithmetic units, control logic, and datapath design, to create a functional circuit for computational operations.

## Project Overview

The project implements the following key functionalities:
- **Read-Only Memory (ROM):** Stores predefined data or instructions that the datapath uses during execution.
- **Datapath Design:** Includes components like multiplexers, adders/subtractors, multipliers, and registers to process and store data.
- **Control Unit:** Orchestrates the execution of instructions by managing signals and controlling the datapath.
- **Arithmetic and Logical Operations:** Provides functionality for comparison, addition, subtraction, multiplication, and data routing.

This project is designed as part of an academic assignment to demonstrate the integration of ROM with a custom datapath and controller for basic computational tasks.

## Contents

### Verilog Source Files
- **`rom.v`**, **`romQ.v`**: ROM modules for data storage.
- **`addsub.v`**: Adder/Subtractor module.
- **`comperator.v`**: Comparator module for logical operations.
- **`controller.v`**, **`controllerQ.v`**: Modules for control unit design.
- **`counter.v`**: Counter module for sequencing operations.
- **`multiplexer.v`**: Multiplexer module for data routing.
- **`multiplier.v`**: Multiplier module for arithmetic operations.
- **`register.v`**: Register module for data storage.

### Testbenches
- **`cosTB.v`**: Comprehensive testbench for the system, testing key operations and modules.

### Block Diagrams
- Visual representations of the main components and their interconnections:
  - **ROM:** `romQ.bsf`
  - **Datapath and Components:** `datapathfinalblock.bsf`, `datapathfinalblock2.bsf`, etc.
  - **Arithmetic Units:** `addsub.bsf`, `comperator.bsf`, `multiplier.bsf`.
  - **Control Unit:** `controllerQ.bsf`
  - **Data Routing and Storage:** `multiplexer.bsf`, `registerQ.bsf`.

### Synthesis and Black Box Files
- Synthesized modules and black box definitions for key components:
  - **Arithmetic Units:** `addsub_syn.v`, `addsub_bb.v`, etc.
  - **Datapath Modules:** Synthesized equivalents like `counter_syn.v`, `multiplexer_syn.v`.

### Quartus Project Files
- **`romQ.qpf`**, **`subaddQ.qpf`**, **`datapathQ.qpf`**, etc.: Quartus project files for the respective designs.

### Documentation
- **`Computer Assignment 6 Paaeez 1402.pdf`**: Detailed project description and requirements.
