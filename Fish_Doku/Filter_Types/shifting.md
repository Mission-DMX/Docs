# Shift Filters

### filter_shift_8bit
 - Type name: `filter_shift_8bit`
 - Type id: `45`
 - Input channels: 
   * `input` of type `8bit` (default 0)
   * `switch_time` of type `double` (in ms) (default 1000)
   * `time` of type `double` (default 0 with warning)
 - Output channels:
   * `output_1` of type `8bit`
   * `output_2` of type `8bit`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

### filter_shift_16bit
 - Type name: `filter_shift_16bit`
 - Type id: `46`
 - Input channels: 
   * `input` of type `16bit` (default 0)
   * `switch_time` of type `double` (in ms) (default 1000)
   * `time` of type `double` (default 0 with warning)
 - Output channels:
   * `output_1` of type `16bit`
   * `output_2` of type `16bit`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

### filter_shift_float
 - Type name: `filter_shift_float`
 - Type id: `47`
 - Input channels: 
   * `input` of type `float` (default 0)
   * `switch_time` of type `double` (in ms) (default 1000)
   * `time` of type `double` (default 0 with warning)
 - Output channels:
   * `output_1` of type `float`
   * `output_2` of type `float`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None

### filter_shift_color
 - Type name: `filter_shift_color`
 - Type id: `48`
 - Input channels: 
   * `input` of type `color` (default white)
   * `switch_time` of type `double` (in ms) (default 1000)
   * `time` of type `double` (default 0 with warning)
 - Output channels:
   * `output_1` of type `color`
   * `output_2` of type `color`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None


