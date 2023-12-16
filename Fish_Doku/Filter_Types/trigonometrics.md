# Trigonometric

## sine
- Type name: `sine`
- Type id: `19`
- Input channels: 
  * `value_in` of type `double`
  * `factor_outer` of type `double` (default `1`)
  * `factor_inner` of type `double` (default `1`)
  * `phase` of type `double` (default `0`)
  * `offset` of type `double` (default `0`)
- Output channels: `value` of type `double`
  * = `factor_outer*(sin((value_in+phase)*factor_inner)) + offset`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * is calculated as degree

## cosine
- Type name: `cosine`
- Type id: `20`
- Input channels: 
  * `value_in` of type `double`
  * `factor_outer` of type `double` (default `1`)
  * `factor_inner` of type `double` (default `1`)
  * `phase` of type `double` (default `0`)
  * `offset` of type `double` (default `0`)
- Output channels: `value` of type `double`
  * = `factor_outer*(cos((value_in+phase)*factor_inner)) + offset`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * is calculated as degree

## tangent
- Type name: `tangent`
- Type id: `21`
- Input channels: 
  * `value_in` of type `double`
  * `factor_outer` of type `double` (default `1`)
  * `factor_inner` of type `double` (default `1`)
  * `phase` of type `double` (default `0`)
  * `offset` of type `double` (default `0`)
- Output channels: `value` of type `double`
  * = `factor_outer*(tan((value_in+phase)*factor_inner)) + offset`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * defaults were taken by fish, if these values are not set
  * is calculated as degree

## arcsine
- Type name: `arcsine`
- Type id: `22`
- Input channels: 
  * `value_in` of type `double`
- Output channels: `value` of type `double`
  * = `arcsin(value_in)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * is calculated as degree

## arccosine
- Type name: `arccosine`
- Type id: `23`
- Input channels: 
  * `value_in` of type `double`
- Output channels: `value` of type `double`
  * = `arccos(value_in)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * is calculated as degree

## arctangent
- Type name: `arctangent`
- Type id: `24`
- Input channels: 
  * `value_in` of type `double`
- Output channels: `value` of type `double`
  * = `arctan(value_in)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None
- Notes
  * is calculated as degree