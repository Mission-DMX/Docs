---
layout: default
---
# Waves

## square
- Type name: `square_wave`
- Type id: `25`
- Input channels: 
  * `value_in` of type `double` (default 0)
  * `factor_outer` of type `double` (default 1)
  * `factor_inner` of type `double` (default 0.1)
  * `phase` of type `double` (default 0)
  * `offset` of type `double` (default 0)
  * `length` of type `double` (default 180)
- Output channels: `value` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * the period is `360°`
  * the length defines the part (in degrees) where the square is `1` the rest of the period is `-1`

![](images/Waveforms.svg.png)
I took this picture as reference, so the waves are also defined like the sine with `360°` and an output between `-1` and `1`.

## triangle
- Type name: `triangle_wave`
- Type id: `26`
- Input channels: 
  * `value_in` of type `double` (default 0)
  * `factor_outer` of type `double` (default 1)
  * `factor_inner` of type `double` (default 0.1)
  * `phase` of type `double` (default 0)
  * `offset` of type `double` (default 0)
- Output channels: `value_in` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * the period is `360°`

## sawtooth
- Type name: `sawtooth_wave`
- Type id: `27`
- Input channels: 
  * `value_in` of type `double` (default 0)
  * `factor_outer` of type `double` (default 1)
  * `factor_inner` of type `double` (default 0.1)
  * `phase` of type `double` (default 0)
  * `offset` of type `double` (default 0)
- Output channels: `value` of type `double`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * the period is `360°`
