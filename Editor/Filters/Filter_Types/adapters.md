---
title: Adapter Filters
layout: default
---
# Adapters

## Split 16 bit unsigned ints to two 8 bit unsigned ints
- Type name: `16bit_to_dual_byte`
- Type id: `8`
- Input channels: `value` of type `16bit` (default 0)
- Output channels:
  * `value_lower`: The lower part of the original variable
  * `value_upper`: The upper part of the original variable
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## Merge two 8 bit unsigned ints to 16 bit unsigned int
- Type name: `combine_bytes_to_16bit`
- Type id: `57`
- Input channels:
  * `lower` of type `8bit` (default 0)
  * `upper` of type `8bit` (default 0)
- Output channels:
  * `value` of type `16bit` The merged value of the two 8bit ones
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## Map one 8 bit unsigned int to 16 bit unsigned int
- Type name: `map_8bit_to_16bit`
- Type id: `58`
- Input channels:
  * `value_in` of type `8bit` (default 0)
- Output channels:
  * `value` of type `16bit` maps the range of 8bit to the range of 16bit
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## Map a float to an 8 bit value
- Type name: `map_float_to_8bit`
- Type id: `54`
- Input channels:
  * `value_in` of type `float` (default 0)
- Output channels:
  * `value` of type `8bit` maps a specific range of float to another range of 8bit
- Configuration parameters: None
- initial parameters:
  * `lower_bound_in`: parseable as float, default: `0`
  * `upper_bound_in`: parseable as float, default: `1`
  * `lower_bound_out`: parseable as float, default: `0`
  * `upper_bound_out`: parseable as float, default: `255`
  * `limit_range`: `1` when the boundaries should be hard, otherwise the output could exceed the range if the input does as well
- GUI update keys: same as initial parameters
- Note: `lower_bound_in` and `upper_bound_in` cant be the same value

## Map a float to an 16 bit value
- Type name: `map_float_to_16bit`
- Type id: `55`
- Input channels:
  * `value_in` of type `float` (default 0)
- Output channels:
  * `value` of type `16bit` maps a specific range of float to another range of 16bit
- Configuration parameters: None
- initial parameters:
  * `lower_bound_in`: parseable as float, default: `0`
  * `upper_bound_in`: parseable as float, default: `1`
  * `lower_bound_out`: parseable as float, default: `0`
  * `upper_bound_out`: parseable as float, default: `65535`
  * `limit_range`: `1` when the boundaries should be hard, otherwise the output could exceed the range if the input does as well

  The bounds are not really boundaries, so you could exceed the input range for getting values exceeding the output range (if the output range is less then 16bit can handle)
- initial parameters: None
- GUI update keys: same as initial parameters
- Note: `lower_bound_in` and `upper_bound_in` cant be the same value

## Map a float range to another float range
- Type name: `map_float_to_float`
- Type id: `56`
- Input channels:
  * `value_in` of type `float` (default 0)
- Output channels:
  * `value` of type `float` maps a specific range of float to another range of float
- Configuration parameters: None
- initial parameters:
  * `lower_bound_in`: parseable as float, default: `0`
  * `upper_bound_in`: parseable as float, default: `1`
  * `lower_bound_out`: parseable as float, default: `0`
  * `upper_bound_out`: parseable as float, default: `1`
  * `limit_range`: `1` when the boundaries should be hard, otherwise the output could exceed the range if the input does as well

  The bounds are not really boundaries, so you could exceed the input range for getting values exceeding the output range.
- initial parameters: None
- GUI update keys: same as initial parameters
- Note: `lower_bound_in` and `upper_bound_in` cant be the same value

## Convert 16 bit to ngn
- Type name: `16bit_to_bool`
- Type id: `9`
- Input channels: `value_in` of type `16bit` (default 0)
- Output channels: `value` (0 if input was 0, 1 if input was greater than zero)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## 8bit to float
- Type name: `filter_8bit_to_float`
- Type id: `51`
- Input channels: `value_in` of type `8bit`
- Output channels: `value` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## 16bit to float
- Type name: `filter_16bit_to_float`
- Type id: `52`
- Input channels: `value_in` of type `16bit` (default 0)
- Output channels: `value` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## color to RGB
- Type name: `hsi_to_rgb`
- Type id: `15`
- Input channels: `value` of type `color` (default white)
- Output channels:
  * `r` of type `8bit`
  * `g` of type `8bit`
  * `b` of type `8bit`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## color to RGBW
- Type name: `hsi_to_rgbw`
- Type id: `16`
- Input channels: `value` of type `color` (default white)
- Output channels:
  * `r` of type `8bit`
  * `g` of type `8bit`
  * `b` of type `8bit`
  * `w` of type `8bit`
- Configuration parameters: None
- initial parameters: None

## color to RGBWA
- Type name: `hsi_to_rgbw`
- Type id: `17`
- Input channels: `value` of type `color` (default white)
- Output channels:
  * `r` of type `8bit`
  * `g` of type `8bit`
  * `b` of type `8bit`
  * `w` of type `8bit`
  * `a` of type `8bit`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## float to color
- Type name: `float_to_pixel`
- Type id: `18`
- Input channels:
  * `h` of type `double` (default 0)
  * `s` of type `double` (default 0)
  * `i` of type `double` (default 1)
- Output channels:
  * `value` of type `color`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## color to floats
- Type name: `pixel_to_floats`
- Type id: `53`
- Input channels:
  * `input` of type `color` (default white)
- Output channels:
  * `h` of type `double`
  * `s` of type `double`
  * `i` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None


## Universe Output
Note: While technically possible, it is advised to use one output filter per universe, as each filter looks up its universe on every cycle and this operation, while being quite fast, cannot be performed in constant time and will, most likely, introduce cache misses.
- Type name: `output`
- Type id: `11`
- Input channels:
  * for each configured universe channel an 8bit one of same name
- Output channels: None
- Configuration parameters:
  * `universe`: The id of the universe to output to
  * every other supplied parameter will be parsed in the format `<filter input channel id>`:`<universe channel>` and registered with the output module, where `<universe channel>` is the value and `<filter input channel id>` the key of the parameter. Every supplied input channel id needs to pe avaiable as an 8 bit input channel within the filter mapping.
- initial parameters: None
- GUI update keys: None
