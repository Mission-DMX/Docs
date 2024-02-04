# Constants
These filters provide constant inputs and their values can be updated from the GUI.
## 8 bit constant
- Type name: `constants:8bit`
- Type id: `0`
- Input channels: None
- Output channels:
  * `value`: the stored 8 bit value
- Configuration parameters: None
- initial parameters:
  * `value`: the content of the storage to be set (needs to be parsable as an int)
- GUI update keys:
  * `value`: the content of the storage to be set (needs to be parsable as an int)

## 16 bit constant
- Type name: `constants:16bit`
- Type id: `1`
- Input channels: None
- Output channels:
  * `value`: the stored 16 bit value
- Configuration parameters: None
- initial parameters:
  * `value`: the content of the storage to be set (needs to be parsable as an int)
- GUI update keys:
  * `value`: the content of the storage to be set (needs to be parsable as an int)

## float constant
- Type name: `constants:float`
- Type id: `2`
- Input channels: None
- Output channels:
  * `value`: the stored double value
- Configuration parameters: None
- initial parameters:
  * `value`: the content of the storage to be set (needs to be parsable as a double)
- GUI update keys:
  * `value`: the content of the storage to be set (needs to be parsable as a double)

## color constant
- Type name: `constants:pixel`
- Type id: `3`
- Input channels: None
- Output channels:
  * `value`: the stored color value
- Configuration parameters: None
- initial parameters:
  * `value`: the content of the storage to be set (needs to be in the color format specified below)
- GUI update keys:
  * `value`: the content of the storage to be set (needs to be in the color format specified below)
### color format
The following format can be parsed: `<hue as a double>,<saturation as a double>,<iluminance as a double>`.
For example: `180.0,1.0,1.0` is a cyan like color.

## Position constant
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