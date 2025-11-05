---
layout: default
---
# Constants

Constants are filter outputting a static value.
There exists one constant per data type as well as one for positions, explained below.
The content of positions can be updated during the show.

## position constant
- Type name: `PanTiltConstant`
- Reference: [PanTiltConstantVirtual](./VirtualFilter/constants.md#position-constant)
- Input channels: None
- Output channels:
  * `pan8bit`: the pan in 8 bit of the position
  * `tilt8bit`: the tilt in 8 bit of the position
  * `pan16bit`: the pan in 16 bit of the position
  * `tilt16bit`: the tilt in 8 bit of the position
- Configuration:
  * set the position with the mouse or joystick control
  * `8bit` makes the 8bit values available
  * `16bit` makes the 16bit values available
- Edit UI
  * show UI applied
- Show UI
  * position controllable with mouse
    - on changes an update message gets send to fish
  * `allow changes from joystick` allows also changes from joystick for this filter
