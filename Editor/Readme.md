---
title: Getting Started
nav_order: -1
layout: default
---
# Mission DMX user guide

This document describes how to use the Mission DMX lighting control desk.

Basically, there are two ways to use the control desk. The first option is to quickly [patch some fixtures](Patching.md) and then control their DMX values directly using the [quick console view](Console.md). While this method is great for testing small things or even some small and static setups, it does not scale. The second option is to first [build a show file](ShowfileWorkflow.md) and then operate it using the [Show Control](ShowGUI.md).

Show files are XML files containing the show configuration.
While assets may be embedded into them, it may not be sufficient to copy the `.show` file alone, as external files might be loaded upon startup.
When transferring show files together with potentially required external files, keep in mind, that show files are executable code and should only be
opened if you trust the source.

## Quick Start
1. [Show File Basics](ShowfileWorkflow.md)
    1. [Patching](Patching.md)
    2. [Quick Console](Console.md)
    3. [Editor + Apply](EditorView.md)
    4. The Debug View

2. Advanced Topics
    1. Filter Pages and Imports
    2. [Using the Control Desk](Desk.md)
    3. [Remote Control](Remote.md)

3. [Using ShowUI Tab](ShowGUI.md)
4. Using the visualizer
5. [Events](Events.md)
6. [Macros and the Command Line](CLI/)

## Filter reference
A user guide about filters can be found [here](Filters/).

## Internal behavior
From time to time, it can be helpful to know a bit about the internals of show files. These are documented [here](internal).
