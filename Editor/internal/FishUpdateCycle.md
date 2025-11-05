---
layout: default
---
# Fish real time update cycle

## Components
Fish constists out of the following components:
 * I/O update module: Runs a libev event loop for network / ArtNet traffic as well as IPC and FPGA communication
 * Cycle module that loads the correct execution engine (direct or filter), executes it and triggeres the output of new packages
 * On demand module that loads filter sets from a given project file

## Update cycle
```mermaid
graph TD;
	A[Start Cycletimer] --> B;
	B[Wait for input data structure to be ready] --> C;
	C[Lock input data structure] --> D;
	D[Choose Execution Engine] --> E;
	D[Choose Execution Engine] --> F;
	E[Calculate filters] --> G;
	F[output values from direct mode] --> G;
	G[Release Input data structure] --> H;
	H[Construct output packages] --> I;
	I[Stop Cycle timer] --> J;
	J[Send state to UI] --> K;
	K[Wait until 2ms prior to the next required cycle] --> A;
```
