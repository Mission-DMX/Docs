# Mission DMX

This repository contains documentation about the Mission DMX project.

## Fish
Fish is the real time translation engine.
 * IPC protocol for communication with the user interface can be found [here](FormatSchemes/IPCMessages).
 * The XML scheme of show files can be found [here](FormatSchemes/ProjectFile/ShowFile_v0.xsd).
 * Documentation about the software architecture can be found in the following locations:
 	- [Update Cycle](Fish_Doku/Update_Cycle.md)
	- data structure of filter execution engine
	- data structure of direct execution engine
	- behaviour of I/O engine

## Filter documentation
Fish receives a list of filters per scene. The preprocessing done by the GUI will be documented [here](Editor/internal/preprocessing.md). Documentation about the non-virtual filters can be found [here](Fish_Doku/Filter_Types/Filter_Types.md). The virtual filters can be found [here](Editor/Filters/VirtualFilter/VirtualFilterTech.md). Hopefully all filters are listed [here](Editor/Filters/FilterUsage.md), so you can also get some information about how to use them.
