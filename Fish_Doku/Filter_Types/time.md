# Time related filters

## time
- Type name: `time`
- Type id: `32`
- Input channels: None
- Output channels: `value` of type `double` in milliseconds
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * time is the number of millisecons since start of the program
  * it is recommended to use for each scene only one time node, because the calculation takes long

## switch_on_delay_8bit
- Type name: `switch_on_delay_8bit`
- Type id: `33`
- Input channels: 
  * `value_in` of type of type `8bit` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type of type `8bit`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None

## switch_on_delay_16bit
- Type name: `switch_on_delay_16bit`
- Type id: `34`
- Input channels: 
  * `value_in` of type of type `16bit` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type of type `16bit`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None

## switch_on_delay_double
- Type name: `switch_on_delay_double`
- Type id: `35`
- Input channels: 
  * `value_in` of type `double` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type `double`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None

## switch_off_delay_8bit
- Type name: `switch_off_delay_8bit`
- Type id: `36`
- Input channels: 
  * `value_in` of type of type `8bit` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type of type `8bit`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None

## switch_off_delay_16bit
- Type name: `switch_off_delay_16bit`
- Type id: `37`
- Input channels: 
  * `value_in` of type of type `16bit` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type of type `16bit`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None

## switch_off_delay_double
- Type name: `switch_off_delay_double`
- Type id: `38`
- Input channels: 
  * `value_in` of type `double` (default 0)
  * `time` of type of type `double` in milliseconds (default 0 with warning)
- Output channels: `value` of type `double`
- Configuration parameters: 
  * `delay` should be parseable as `double` in seconds
- initial parameters: None
- GUI update keys: None