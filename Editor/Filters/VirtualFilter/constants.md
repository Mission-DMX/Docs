---
title: position Constant vFilter
layout: default
---
# Constants Virtual

## position constant
- Type name: `PanTiltConstant`
- Type id: `-5`
- Input channels: None
- Output channels:
  * `pan8bit`: the pan in 8 bit of the position
  * `tilt8bit`: the tilt in 8 bit of the position
  * `pan16bit`: the pan in 16 bit of the position
  * `tilt16bit`: the tilt in 8 bit of the position
- Configuration parameters:
  * `outputs`: `16bit`, `both` or `8bit`, to get the outputs respectively
- initial parameters:
  * `pan`: the pan (between `0` and `1`), default `0.5`
  * `tilt`: the tilt (between `0` and `1`), default `0.5`
- GUI update keys:
  * `pan`: (only for making the show UI available) # Todo: method to make the show ui available (Do the update keys be only relevant for fish?)
- real filter:
  * two `16 bit constant` filter for pan and tilt
  * if necessary two `16bit_to_dual_byte` filter for making 8bit available
