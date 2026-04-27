---
title: Effect Filters
layout: default
---
# Effect filters

## cue_list_filter
 - Type name: `cue_list_filter`
 - Type id: `44`
- Input channels: 
  * `time` of type of type `double`(default time node)
  * `time_scale` of type of type `double`(default 1)
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
   * `persistence`: If this is set to `true`, the filter will remember his state between scene switches or show file updates.
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
  - update Message for GUI:
    * Messagetype: `update_parameter`
    * filter_id: id of the cue filter
    * parameter_key: `actual_state`
    * parameter_value: following values seperated with `;`
      * running_state: `stop`, `play`, `pause` or `error`
      * active_cue: the number (zero indexed) of the current cue running
      * time: the time already passed of the current cue
      * end_time (if the current cue has at least one frame) the duration of the whole cue
      * scale factor: the factor 
    * scene_id: the id of the current (hopefully the one of the cue_filter) scene
    

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

## Sequencer
A sequencer is a filter that (much like the Cue filter) is capable of executing predefined transitions on a fixed set of channels.
Unlike the Cue filter, it overlaps all currently running transitions and starts them based on events instead of fixed orders.
- Type name: `sequencer_filter`
- Type id: `69`
- Input channels: 
  * `time` of type of type `double`(default time node)
  * `time_scale` of type of type `double`(default 1)
- Output channels:
    The name of the channel  with its type, for Example:
      * `wash_x_pos` of type `float`
      * `wash_y_pos` of type `float`
      * `wash_dimmer` of type `8bit`
      * `wash_color` of type `color`
- Configuration parameters:
  * `channels`: channel definitions, separated by `;`. A channel definition itself, is a list of values separated
    by `:`. The values are the following:
      1. The name of the channel (as it is also referenced by the transitions and the output channels).
      2. The data type of the channel (`8bit`, `16bit`, `float` or `color`)
      3. The default value of the channel (default encoded)
      4. Should the default value be applied on empty transitions? (`true` or `false`)
      5. Should the default value be applied after scene switches? (`true` or `false`)
      6. Interleaving method. (`average`, `min` or `max`)
  * `transitions`: Transition definitions, separated by `;`. Each transition consists out of the following: `<encoded trigger event>#<transition name>#<keyframe_0>#<keyframe_1>#...#<keyframe_n>`. The event is encoded as `<sender id>:<sender_function>:<sender argument 1>:<...>:<sender argument 7>`. A keyframe is encoded as `<target channel name [string]>:<target value[default encoded]>:<transition[edg, lin, sig, e_i or e_o]>:<duration [double ms]>`. Transition names are only relevant for human reference.
- update Message for GUI: `active_transition_list` with a `;` separated list of their names as its value

## Chaser
A chaser is a filter to generate color effects for multiple color outputs.
- Type name: `chase_filter`
- Type id: `75`
- Input channels:
  * `time` of type of type `double`(default time node)
  * `time_scale` of type of type `double`(default 1)
  * A `color` channel for each configured color parameter with the associated name.
  * A `16bit` channel for each configured number parameter with the associated name. The values can be either interpreted as direct values or as percentages between 0 and 100%.
- Output channels: channels up to the configured number of output pixels named ascending of data type `color`
- Configuration parameters:
  * `number_of_pixels`: Number of configured output channels
  * `color_parameters`: A list of input channels used as color parameters separated by `:`.
  * `number_parameters`: A list of input channels used as number parameters separated by `:`.
  * `presets`: A list of settings that can be inserted into the `config` GUI update parameters. This configuration parameter is only used by the editor. It is separated by `#`.
- Initial parameters / GUI updatable parameters:
  * `config`: A current generator setting. Generator settings are a `;` separated list of layers. Each layer contains the functionality identifier followed by a list of its parameters which can either be a channel name or color constant or number constant. Each layer can set the current alpha mask or use the alpha mask for applying values. The default alpha mask is `100%` for all pixels. The default color is white. Parameters are separated from each other using `|`. The following layer functionality identifiers are available:
    - `plain_color`: Accepts a color parameter and sets all pixels to the provided parameter
    - `rainbow`: Accepts two color parameters and sets all pixels on the range between the two colors
    - `sprinkles`: Accepts five number parameters. The first indicates how many random sprinkles should be set on the alpha mask and the second indicates the size. The third parameter indicates the update rate in `ms` where 0 indicates no updates happening. The forth and last parameters set the values that the mask should get if there is no vs there is a spinkle at the given location.
    - `dots`: Like `sprinkles` but uses an even distribution instead of a random one
    - `scale`: Accepts four number parameters. The first one indicates where the cutoff in the alpha mask should start and the second indicated where it should end. The second set of parameters indicate the start mask value and the end mask value.
    - `scale_inv`: Like `scale` but setting the alpha mask in the other direction.
    - `flat_mask`: Accepts one number parameter, setting the mask to it.
    - `mask_multiply`: Multiplies the mask with the accepted number parameter.
    - `mask_shift`: Shifts the mask after the number of `ms` specified by the accepted number parameter.
    - `color_shift`: Shifts the pixels after the number of `ms` specified by the accepted number parameter.
    - `trig__XXX`: Where `XXX` is one of the supported trigonometric functions. Takes in three number parameters (lowest value, highest value and phase) and updates the alpha mask based on the output of the function.
    - `strobe`: Accepts one number input and enables the alpha mask based on this parameter interpreted as BPM.
    - `maskmod__XXX`: Where `XXX` is either `add`, `mul`, or `div`. Modifies the values of the mask with the accepted number parameter.
    - `colormix`: Mix the two provided color parameters and apply the result using the mask
    - `color_chanmod_X` where X is either `r`, `g`, `b`, `h`, `s`, or `i`. Set the represented channel to the value provided by the number parameter.
    - `color_chancalc_Y_XXX where Y is either `r`, `g`, `b`, `h`, `s`, or `i` and `XXX` is either `sub` or `add` or `mult`: Modify the channel with the selected operation using the accepted number parameter.
    - `random_color`: Generate N random colors and change them every M `ms`, where N and M are number parameters.
    - `gaussian_blur`: Apply gaussian blur to the pixels where the mask allows using a number parameter as filter size in percent of pixel width.
    - `gaussian_curve_on_mask`: Draw a gaussian curve on the alpha mask using the first number parameter as position, the second as width and the third as height.
