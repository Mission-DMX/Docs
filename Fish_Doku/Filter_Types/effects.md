

# Effect filters

## cue_list_filter
 - Type name: `cue_list_filter`
 - Type id: `44`
- Input channels: 
  * `time` of type of type `double`
 - Output channels:
    The name of the channel  with its type, Example:
      * `wash_x_pos` of type `float`
      * `wash_y_pos` of type `float`
      * `wash_dimmer` of type `8bit`
      * `wash_color` of type `color`
 - initial parameters: None
 - Configuration parameters:
   * `default_cue`: The cue to play at scene enter or -1
   * `mapping`: The type as `8bit`, `16bit`,`float` or `color` of the channels behind the name of the channel and `:` divided by `;`
      * Example: `wash_x_pos:float;wash_y_pos:float;wash_dimmer:8bit;wash_color:color`
   * `end_handling`: The handling at the end of the cuelist
      * `hold` for holding the values of the last frame
      * `start_again` starting the cue again
   * `cuelist`: The cues and their frames:
      * Each cue is divided by `$` and has a list of timestamp_configurations (divided by `|`) with its frames and then a handling for the end and a setting for the repeated play event (each seperated by `#`)
        * `timestamp_configuration`: beginning with the `timestamp` of type `double` (given in seconds) a seperator `:` and a list of frames for each channel divided by `&`
          * `frame`: string and transition type (how to get to this frame) separated by `@`
            * `color`: hue, saturation,iluminance as `double` divided by `,`
            * `transition_type`:
              * `edg` : edge
              * `lin` : linear
              * `sig` : sigmoidal
              * `e_i` : ease_in
              * `e_o` : ease_out
        * handling at the end:
          * `hold` for holding the values of the last frame
          * `start_again` starting the cue again
          * `next_cue` starting the next cue again
        * handling at repeated `play` event:
          * `do_nothing` run the cue as the event has not occured
          * `restart` starting the cue again
      * Example: 2 cues in the cuelist, with 2 frames in each cue.
      `0:0.5@edg&0.5@edg&0@edg&0,1,1@edg|3:0.5@edg&0.5@edg&240@e_i&0,1,1@edg#hold#restart$1:0.6@lin&0.45@lin&255@lin&120,1,1@e_o|4:0.6@edg&0.45@edg&0@lin&240,1,0@sig#next_cue#do_nothing`
 - GUI update keys:
   * `run_mode` of type `string`:
      * `play` : starts / restarts / continue the first or actual cue
      * `pause` : pauses the cue
      * `to_next_cue` : as play, but stops after the actual cue
      * `stop` : stops the cuelist
   * `run_cue` of type `16bit` : starts the cue with given number
   * `next_cue` of type `16bit` : runs the cue with given number when the actual cue has finished (and `next_cue` is set)
   * `set_default_cue` of type `int` : sets default (autostart) cue, a negative value or a value greater equal cuelist-size (for example `0xFFFF`) disables autostart

## filter_shift_8bit
 - Type name: `filter_shift_8bit`
 - Type id: `45`
 - Input channels: 
   * `input` of type `8bit`
   * `switch_time` of type `double` (in ms)
   * `time` of type `double`
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
   * `input` of type `16bit`
   * `switch_time` of type `double` (in ms)
   * `time` of type `double`
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
   * `input` of type `float`
   * `switch_time` of type `double` (in ms)
   * `time` of type `double`
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
   * `input` of type `color`
   * `switch_time` of type `double` (in ms)
   * `time` of type `double`
 - Output channels:
   * `output_1` of type `color`
   * `output_2` of type `color`
   * as many as in `nr_outputs` declared
 - Configuration parameters:
   * `nr_outputs` The number of shifted outputs
 - initial parameters: None
 - GUI update keys: None