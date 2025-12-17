---
title: Dimmer Brightness Mixin vFilter
layout: default
---
# Dimmer Brightness Mixin

V-Filter that allows brightness mixin for 8bit and 16bit values.

The filter allows the configuration of an input and a mixin input channel.
Their defaults are the global brightness and a constant 1.
If they're connected their input data typed can both be configured as either 8bit or 16bit.
The optional offset input channel needs to be a float. Reasonable values range from (-1, 1).

The outputs can be configured as 8bit or 16bit.

## Ports
The input ports are `input`, `mixin` and `offset`. The output ports are `dimmer_out8b` (if enabled) and `dimmer_out16b` (if enabled).
