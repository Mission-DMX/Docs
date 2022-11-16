# Fish real time update cycle

## Components
Fish constists out of the following components:
 * I/O update module: Runs a libev event loop for network / ArtNet traffic as well as IPC and FPGA communication
 * Cycle module that loads the correct execution engine (direct or filter), executes it and triggeres the output of new packages
 * On demand module that loads filter sets from a given project file

## Update cycle
```mermaid
graph TD;
	Start Cycletimer --> Wait for input data structure to be ready;
	Wait for input data structure to be ready --> Lock input data structure;
	Lock input data structure --> Choose Execution Engine;
	Choose Execution Engine --> Calculate filters;
	Choose Execution Engine --> output values from direct mode;
	Calculate filters --> Release Input data structure;
	output values from direct mode --> Release Input data structure;
	Release Input data structure --> Construct output packages;
	Construct output packages --> Stop Cycle timer;
	Stop Cycle timer --> Send state to UI;
	Send state to UI --> Wait until 2ms prior to the next required cycle;
	Wait until 2ms prior to the next required cycle --> Start Cycletimer;
```
