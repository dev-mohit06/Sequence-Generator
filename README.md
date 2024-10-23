
# Sequence Generator Project

## Table of Contents
- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Design & Implementation](#design--implementation)
- [Setup Instructions](#setup-instructions)
  - [Prerequisites](#prerequisites)
  - [Installation Steps](#installation-steps)
    - [For macOS](#for-macos)
    - [For Ubuntu/Debian](#for-ubuntudebian)
    - [For Windows](#for-windows)
- [Simulation Setup and Results](#simulation-setup-and-results)
  - [Steps to Run the Simulation](#steps-to-run-the-simulation)
  - [Output Description](#output-description)
- [Project Report](#project-report)
- [Conclusion](#conclusion)

<!-- --- -->

## Overview
This project involves designing and implementing a sequence generator that cycles through a specific 3-bit sequence. The circuit is implemented using Verilog and simulated with Icarus Verilog and GTKWave to visualize the output.

<!-- --- -->

## Problem Statement
The objective is to generate a specific 4-state sequence: `101 → 110 → 011 → 001`. The sequence generator is driven by a clock signal and should reset to its initial state when a reset signal is asserted.

<!-- --- -->

## Design & Implementation

### Sequence Generator Circuit
The sequence generator transitions through four states in response to a clock signal. A reset signal is used to initialize the state machine.

<!-- --- -->

## Setup Instructions

### Prerequisites
- **Icarus Verilog** for compiling and running Verilog code.
- **GTKWave** for visualizing waveforms.

### Installation Steps

#### For macOS:
1. **Install Icarus Verilog and GTKWave** using the bundled installer from [tinyurl.com/wave-log](https://tinyurl.com/wave-log).
   - Follow the instructions provided on the page to complete the installation.

#### For Ubuntu/Debian:
1. **Update Package List:**
   ```bash
   sudo apt update
   ```
2. **Install Icarus Verilog:**
   ```bash
   sudo apt install iverilog
   ```
3. **Install GTKWave:**
   ```bash
   sudo apt install gtkwave
   ```

#### For Windows:
1. **Download and Install Icarus Verilog**:
   - Go to [Icarus Verilog for Windows](https://bleyer.org/icarus/).
   - Download the Windows installer and follow the setup instructions.
2. **Download and Install GTKWave**:
   - Go to [GTKWave for Windows](https://gtkwave.sourceforge.net/).
   - Download the installer and complete the setup.

<!-- --- -->

## Simulation Setup and Results

### Steps to Run the Simulation
1. **Compile the Code:** 
   ```bash
   iverilog -o sequence_generator_tb lib/sequence_generator.v tb_sequence_generator.v
   ```
2. **Run the Test Bench:** 
   ```bash
   vvp sequence_generator_tb
   ```
3. **Visualize the Output with GTKWave:**
   ```bash
   gtkwave sequence_generator.vcd
   ```

### Output Description
The output waveform in GTKWave will display the sequence transitioning through the states: `101 → 110 → 011 → 001`. This verifies the correct implementation of the sequence generator.

<!-- --- -->

## Project Report
For a detailed project report, including methodologies, analysis, and additional information, please click [here](./docs/Sequence%20Generator%20Documentation.pdf).

<!-- --- -->

## Conclusion
The sequence generator was successfully implemented to produce a 3-bit sequence. The design was validated using Icarus Verilog and visualized in GTKWave.
