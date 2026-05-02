---
title: Signal Routing Filters
layout: default
---
# Signal Routing Filters

## filter_shift_8bit
 - Type name: `filter_shift_8bit`
 - Type id: `45`
 - Input channels: 
   * `input` of type `8bit` (default 0)
   * `switch_time` of type `double` (in ms) /(default 1000), neagtive values indicate reverse operation
   * `time` of type `double` (default time node)
 - Output channels:
   * `output_1` of type `8bit`
   * `output_2` of type `8bit`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

## filter_shift_16bit
 - Type name: `filter_shift_16bit`
 - Type id: `46`
 - Input channels: 
   * `input` of type `16bit` (default 0)
   * `switch_time` of type `double` (in ms) (default 1000), neagtive values indicate reverse operation
   * `time` of type `double` (default time node)
 - Output channels:
   * `output_1` of type `16bit`
   * `output_2` of type `16bit`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

## filter_shift_float
 - Type name: `filter_shift_float`
 - Type id: `47`
 - Input channels: 
   * `input` of type `float` (default 0)
   * `switch_time` of type `double` (in ms) (default 1000), neagtive values indicate reverse operation
   * `time` of type `double` (default time node)
 - Output channels:
   * `output_1` of type `float`
   * `output_2` of type `float`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

## filter_shift_color
 - Type name: `filter_shift_color`
 - Type id: `48`
 - Input channels: 
   * `input` of type `color` (default white)
   * `switch_time` of type `double` (in ms) (default 1000), neagtive values indicate reverse operation
   * `time` of type `double` (default time node)
 - Output channels:
   * `output_1` of type `color`
   * `output_2` of type `color`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

## filter_switch_8bit
 - Type name: `filter_switch_8bit`
 - Type id: 76
 - Input Channels:
   * `select` of type `8bit`: Indicates which input should be routed to the output
   * numerically enumerated inputs (0 to `n`) up to the number of configured inputs
 - Output Channels:
   * `out` of type `8bit`: contains the selected input value.
 - Configuration Parameters
   * `nr_inputs`: The number of inputs (parsable as base 10 int)
 - initial parameters: None
 - GUI update keys: None

## filter_switch_16bit
 - Type name: `filter_switch_16bit`
 - Type id: 77
 - Input Channels:
   * `select` of type `16bit`: Indicates which input should be routed to the output
   * numerically enumerated inputs (0 to `n`) up to the number of configured inputs
 - Output Channels:
   * `out` of type `16bit`: contains the selected input value.
 - Configuration Parameters
   * `nr_inputs`: The number of inputs (parsable as base 10 int)
 - initial parameters: None
 - GUI update keys: None

## filter_switch_float
 - Type name: `filter_switch_float`
 - Type id: 78
 - Input Channels:
   * `select` of type `float`: Indicates which input should be routed to the output
   * numerically enumerated inputs (0 to `n`) up to the number of configured inputs
 - Output Channels:
   * `out` of type `float`: contains the selected input value.
 - Configuration Parameters
   * `nr_inputs`: The number of inputs (parsable as base 10 int)
 - initial parameters: None
 - GUI update keys: None

## filter_switch_color
 - Type name: `filter_switch_color`
 - Type id: 79
 - Input Channels:
   * `select` of type `color`: Indicates which input should be routed to the output
   * numerically enumerated inputs (0 to `n`) up to the number of configured inputs
 - Output Channels:
   * `out` of type `color`: contains the selected input value.
 - Configuration Parameters
   * `nr_inputs`: The number of inputs (parsable as base 10 int)
 - initial parameters: None
 - GUI update keys: None
