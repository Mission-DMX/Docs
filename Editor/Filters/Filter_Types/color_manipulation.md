---
title: Color Manipulation Filters
layout: default
---
# Color Manipulation

## Color Mixer CSV
This filter mixes colors based on their individual color properties.
- Type name: `color_mixer_csv`
- Type id: `59`
- input channels: For every configured input, there is an input channel of type `color` with the channel name being the number (starting at `0`)
- Output channel:
  * `value` of type `color`
- Configuration parameters:
  * `input_count`: Number of inputs, default: 0
- initial parameters:
  * `reduce_saturation_on_far_angles`: If set to `true`, the filter will decrease the saruration of colors if they're far apart.
- GUI update keys: None

## Color Mixer Additive RGB
This filter mixes colors based on additive RGB mixing.
- Type name: `color_mixer_add_rgb`
- Type id: `60`
- input channels: For every configured input, there is an input channel of type `color` with the channel name being the number (starting at `0`)
- Output channel:
  * `value` of type `color`
- Configuration parameters:
  * `input_count`: Number of inputs, default: 0
- initial parameters: None
- GUI update keys: None

## Color Mixer Normative RGB
This filter mixes colors based on normative RGB mixing.
- Type name: `color_mixer_normative_rgb`
- Type id: `61`
- input channels: For every configured input, there is an input channel of type `color` with the channel name being the number (starting at `0`)
- Output channel:
  * `value` of type `color`
- Configuration parameters:
  * `input_count`: Number of inputs, default: 0
- initial parameters: None
- GUI update keys: None
