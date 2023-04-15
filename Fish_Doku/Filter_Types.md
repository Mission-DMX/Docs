# filter types
The following file specifies the type identifiers as well as the channel names of the filters.

## Constants
These filters provide constant inputs and their values can be updated from the GUI.
### 8 bit constant
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

### 16 bit constant
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

### float constant
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

### color constant
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
#### color format
The following format can be parsed: `<hue as a double>,<saturation as a double>,<value as a double>`.
For example: `180.0,1.0,1.0` is a cyan like color.

## Debug Filters
These filters print out the received values on the command line. Later they're supposed to
post them to the debug table of the GUI.
### 8 bit output
- Type name: `dbg:8bit`
- Type id: `4`
- Input channels: `value` of type `8bit`
- Output channels: None
- Configuration parameters: None (Later: method to be used for gui communication)
- initial parameters: None
- GUI update keys: None

### 16 bit output
- Type name: `dbg:16bit`
- Type id: `5`
- Input channels: `value` of type `16bit`
- Output channels: None
- Configuration parameters: None (Later: method to be used for gui communication)
- initial parameters: None
- GUI update keys: None

### float output
- Type name: `dbg:float`
- Type id: `6`
- Input channels: `value` of type `double`
- Output channels: None
- Configuration parameters: None (Later: method to be used for gui communication)
- initial parameters: None
- GUI update keys: None

### color output
- Type name: `dbg:pixel`
- Type id: `7`
- Input channels: `value` of type `hsv_pixel`
- Output channels: None
- Configuration parameters: None (Later: method to be used for gui communication)
- initial parameters: None
- GUI update keys: None

## Adapters and Arithmetics
### Split 16 bit unsigned ints to two 8 bit unsigned ints
- Type name: `adapter:16bit_to_dual_byte`
- Type id: `8`
- Input channels: `value` of type `16bit`
- Output channels:
  * `value_lower`: The lower part of the original variable
  * `value_upper`: The upper part of the original variable
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

### Convert 16 bit to ngn
- Type name: `adapter:16bit_to_bool`
- Type id: `9`
- Input channels: `value` of type `16bit`
- Output channels: `value` (0 if input was 0, 1 if input was greater than zero)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

### MAC filter
- Type name: `arith:mac`
- Type id: `10`
- Input channels:
  * `factor1`: double
  * `factor2`: double
  * `summand`: double
- Output channels: `value` (:= `(factor1 * factor2) + summand`)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

### Universe Output
Note: While technically possible, it is advised to use one output filter per universe, as each filter looks up its universe on every cycle and this operation, while being quite fast, cannot be performed in constant time and will, most likely, introduce cache misses.
- Type name: `output`
- Type id: `11`
- Input channels:
  * for each configured universe channel an 8bit one of same name
- Output channels: None
- Configuration parameters:
  * `universe`: The id of the universe to output to
  * every other supplied parameter will be parsed in the format `<universe channel>`:`<filter input channel id>` and registered with the output module, where `<universe channel>` is the key and `<filter input channel id>` the value of the parameter. Every supplied input channel id needs to pe avaiable as an 8 bit input channel within the filter mapping.
- initial parameters: None
- GUI update keys: None
