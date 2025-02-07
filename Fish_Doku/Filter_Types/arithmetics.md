# Arithmetics

## MAC filter
- Type name: `mac`
- Type id: `10`
- Input channels:
  * `factor1`: double (default 1)
  * `factor2`: double (default 1)
  * `summand`: double (default 0)
- Output channels: `value` (:= `(factor1 * factor2) + summand`)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## float to 16bit
- Type name: `round_to_16bit`
- Type id: `12`
- Input channels: `value_in` of type `double` (default 0)
- Output channels: `value` of type `16bit` (= rounded and then cut value of input channel)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## float to 8bit
- Type name: `round_to_8bit`
- Type id: `13`
- Input channels: `value_in` of type `double` (default 0)
- Output channels: `value` of type `8bit` (= rounded and then cut value of input channel)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## round float
- Type name: `round`
- Type id: `14`
- Input channels: `value_in` of type `double` (default 0)
- Output channels: `value` of type `double` (= rounded value of input channel)
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## logarithm
- Type name: `logarithm`
- Type id: `28`
- Input channels: 
  * `value_in` of type `double` (default 1)
- Output channels: `value` of type `double`
  * = `ln(value)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## exponential
- Type name: `exponential`
- Type id: `29`
- Input channels: 
  * `value_in` of type `double` (default 0)
- Output channels: `value` of type `double`
  * = `e(value)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## minimum
- Type name: `minimum`
- Type id: `30`
- Input channels: 
  * `param1` of type `double` (default 0)
  * `param2` of type `double` (default 0)
- Output channels: `value` of type `double`
  * = `min(param1, param2)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## maximum
- Type name: `maximum`
- Type id: `31`
- Input channels: 
  * `param1` of type `double` (default 0)
  * `param2` of type `double` (default 0)
- Output channels: `value` of type `double`
  * = `max(param1, param2)`
- Configuration parameters: None
- initial parameters: None
- GUI update keys: None

## 8bit Auto Sum
- Type name: `filter_sum_8bit`
- Type id: `62`
- Input channels: For every configured input, there is an input channel of type `8bit` with the channel name being the number (starting at 0)
- Output channel: `value` of type `8bit`
- Configuration parameters:
  * `input_count`: Number of inputs
- initial parameters: None
- GUI update keys: None

## 16bit Auto Sum
- Type name: `filter_sum_16bit`
- Type id: `63`
- Input channels: For every configured input, there is an input channel of type `16bit` with the channel name being the number (starting at 0)
- Output channel: `value` of type `16bit`
- Configuration parameters:
  * `input_count`: Number of inputs
- initial parameters: None
- GUI update keys: None

## float Auto Sum
- Type name: `filter_sum_float`
- Type id: `64`
- Input channels: For every configured input, there is an input channel of type `double` with the channel name being the number (starting at 0)
- Output channel: `value` of type `double`
- Configuration parameters:
  * `input_count`: Number of inputs
- initial parameters: None
- GUI update keys: None
