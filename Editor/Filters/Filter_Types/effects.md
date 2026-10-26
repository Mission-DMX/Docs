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
  * `trigger_event`: If this parameter exist and is not empty, the chaser will advance on the defined event instead of the time. As a rule of thumb, one event trigger has the same significance as 1000ms having passed. Speed parameters can be adjusted of course. An event is encoded in the following manner: `<sender id>:<sender_function>:<sender argument 1>:<...>:<sender argument 7>` (the arguments are optional).
- Initial parameters / GUI updatable parameters:
  * `config`: A current generator setting. Generator settings are a `;` separated list of layers. Each layer contains the functionality identifier followed by a list of its parameters which can either be a channel name or color constant or number constant. Each layer can set the current alpha mask or use the alpha mask for applying values. The default alpha mask is `100%` for all pixels. The default color is white. Parameters are separated from each other using `|`. The following layer functionality identifiers are available:
    - `plain_color`: Accepts a color parameter and sets all pixels to the provided parameter
    - `rainbow`: Accepts two color parameters and sets all pixels on the range between the two colors. The last parameter (number) indicates the number of segments.
    - `sprinkles`: Accepts five number parameters. The first indicates how many random sprinkles should be set on the alpha mask and the second indicates the size. The third parameter indicates the update rate in `ms` where 0 indicates no updates happening. The forth and last parameters set the values that the mask should get if there is no vs there is a spinkle at the given location.
    - `dots`: Like `sprinkles` but uses an even distribution instead of a random one
    - `scale`: Accepts four number parameters. The first one indicates where the cutoff in the alpha mask should start and the second indicated where it should end. The second set of parameters indicate the start mask value and the end mask value.
    - `scale_inv`: Like `scale` but setting the alpha mask in the other direction.
    - `flat_mask`: Accepts one number parameter, setting the mask to it.
    - `mask_shift`: Shifts the mask after the number of `ms` specified by the accepted number parameter.
    - `color_shift`: Shifts the pixels after the number of `ms` specified by the accepted number parameter.
    - `trig__XXX`: Where `XXX` is one of the supported trigonometric functions. Takes in four number parameters (lowest value, highest value, phase and frequency) and updates the alpha mask based on the output of the function. The frequency ranges from one period over the entire output range up to one period per mask entry.
    - `strobe`: Accepts one number input and enables the alpha mask based on this parameter interpreted as BPM.
    - `maskmod__XXX`: Where `XXX` is either `add`, `mul`, or `div`. Accepts three number parameters. Modifies the values of the mask with the first accepted number parameter. The second and third parameters indicate the start and end range of the application, interpreted as percent of the overall pixel width.
    - `johnson__DIR`: Where `DIR` is either `fwd` or `rev`. Generates a johnson counter effect on the mask. This layer accepts two number parameters indicating the update speed of the effect (in `ms`) and the desired mask target.
    - `colormix`: Mix the two provided color parameters and apply the result using the mask
    - `color_chanmod_X` where X is either `r`, `g`, `b`, `h`, `s`, or `i`. Set the represented channel to the value provided by the number parameter.
    - `color_chancalc_Y_XXX` where Y is either `r`, `g`, `b`, `h`, `s`, or `i` and `XXX` is either `sub` or `add` or `mult` or `div`: Modify the channel with the selected operation using the accepted number parameter.
    - `random_color`: Generate N random colors and change them every M `ms`, where N and M are number parameters.
    - `gaussian_blur`: Apply gaussian blur to the pixels where the mask allows using a number parameter as filter size in percent of pixel width.
    - `gaussian_curve_on_mask`: Draw a gaussian curve on the alpha mask using the first number parameter as position, the second as width and the third as height.
    - `invert_color`: Takes no parameters and inverts the color values.
    - `invert_mask`: Takes no parameters and inverts the mask.
    - `close_to_center`: Applys a pattern on the mask that travels from the edges to the center. Accepted number parameters are the update speed, decay rate and mask application intensity.
    - `open_from_center`: Applys a pattern on the mask that travels from the center to the edges. Accepted number parameters are the update speed, decay rate and mask application intensity.
    - `segwave__DIR` where `DIR` is either `fwd` or `rev`: This layer generates a segmented waves on the mask in the specified direction. Accepted number parameters are the update speed, decay rate, the number of waves and mask application intensity.
    - `wave__DIR` where `DIR` is either `fwd` or `rev`: This layer generates a decaing wave on the mask in the specified direction. Accepted number parameters are the update speed, decay rate, the number of waves and mask application intensity.

## filter_series_strobe_generator_8bit
A series strobe generator gates a brightness channel through a square-wave strobe whose frequency and duty cycle are driven by two 8bit input channels.
 - Type name: `filter_series_strobe_generator_8bit`
 - Type id: `81`
 - Input channels:
   * `brightness` of type `8bit` (default 0): the brightness value that will be gated into the strobe output.
   * `frequency` of type `8bit` (default 0): 0 disables strobing (brightness is forwarded unchanged); 1 selects the slowest configured frequency; 255 selects the maximum frequency, at which the output toggles every update tick (20 Hz full cycles on a 40 Hz update loop). Intermediate values interpolate linearly in Hz between the slowest configured frequency and the maximum.
   * `duty_cycle` of type `8bit` (default 128): 0 means exactly one update tick per cycle outputs the brightness and the rest output 0; 255 means exactly one update tick per cycle outputs 0 and the rest output the brightness. Intermediate values linearly interpolate the number of ON ticks.
 - Output channels:
   * `value` of type `8bit`
 - Configuration parameters:
   * `slowest_period_ms`: a `double` (parsed via `std::stod`) giving the full-cycle period in milliseconds that is selected when `frequency == 1`. Must be at least 50 ms (two update ticks at 40 Hz).
 - initial parameters: None
 - GUI update keys: None
 - Notes
   * At `frequency == 255` the cycle is only two update ticks long, so the `duty_cycle` input has no observable effect.
   * The internal cycle counter is reset on scene activation and whenever `frequency` is 0.

## filter_series_strobe_generator_16bit
 - Type name: `filter_series_strobe_generator_16bit`
 - Type id: `82`
 - Input channels:
   * `brightness` of type `16bit` (default 0)
   * `frequency` of type `8bit` (default 0): same semantics as the 8bit variant.
   * `duty_cycle` of type `8bit` (default 128): same semantics as the 8bit variant.
 - Output channels:
   * `value` of type `16bit`
 - Configuration parameters:
   * `slowest_period_ms`: see `filter_series_strobe_generator_8bit`.
 - initial parameters: None
 - GUI update keys: None
 - Notes: see `filter_series_strobe_generator_8bit`.

## filter_series_strobe_generator_float
 - Type name: `filter_series_strobe_generator_float`
 - Type id: `83`
 - Input channels:
   * `brightness` of type `float` (default 0.0)
   * `frequency` of type `8bit` (default 0): same semantics as the 8bit variant.
   * `duty_cycle` of type `8bit` (default 128): same semantics as the 8bit variant.
 - Output channels:
   * `value` of type `float`
 - Configuration parameters:
   * `slowest_period_ms`: see `filter_series_strobe_generator_8bit`.
 - initial parameters: None
 - GUI update keys: None
 - Notes: see `filter_series_strobe_generator_8bit`.

## filter_dimmer_director
Fans a single 16bit dimmer input per group out to an `X*Y*Z` grid of 16bit outputs. Each output cell is modulated by a shared pre-sampled effect curve whose index is shifted per axis by the cell's `(x, y, z)` coordinate, then passed through a dimmer response curve (linear, sigmoidal or custom cubic Bézier) that is selected per group at runtime.
 - Type name: `filter_dimmer_director`
 - Type id: `84`
 - Input channels:
   * One 16bit channel per group with the group's name (e.g. a group named `wash` requires an input `wash`).
   * `mixin_<i>` of type `16bit` for every global mixin input, with `<i>` running from `0` up to the configured count. Each mixin is normalized to `[0, 1]` and multiplied into every group's post-normalization value.
   * `offset_<i>` of type `16bit` for every global offset input. Each offset is normalized to `[0, 1]` and added after the mixins.
   * `mixin_<group>_<j>` of type `16bit` for every per-group mixin input declared on `<group>`.
   * `offset_<group>_<l>` of type `16bit` for every per-group offset input declared on `<group>`.
 - Output channels:
   * `<group>_<x>_<y>_<z>` of type `16bit` for every cell of every group (`x ∈ [0, X)`, `y ∈ [0, Y)`, `z ∈ [0, Z)`).
 - Configuration parameters:
   * `groups`: Group definitions separated by `;`. A single group definition is a list of values separated by `:`:
      1. `name`: the group's name (used as prefix for every output channel and for runtime curve selection).
      2. `X`: the first axis extent (unsigned integer, must be > 0).
      3. `Y`: the second axis extent.
      4. `Z`: the third axis extent.
      5. `n_mix_group`: the number of per-group mixin input channels. These are expected under the name `mixin_<name>_<j>`.
      6. `n_off_group`: the number of per-group offset input channels. These are expected under the name `offset_<name>_<l>`.
      7. `phase_x`: integer tick offset multiplier for the first axis. The effect curve index at cell `(x, y, z)` is `tick + phase_x*x + phase_y*y + phase_z*z`.
      8. `phase_y`: integer tick offset multiplier for the second axis.
      9. `phase_z`: integer tick offset multiplier for the third axis.
      * Example (a single 3×2×6 group named `wash` with one per-group mixin, no per-group offset and a sweep along X): `wash:3:2:6:1:0:1:0:0`.
   * `effect_curves`: Effect curve definitions separated by `;`. A single curve definition is a list of values separated by `:`:
      1. `name`: human-readable name of the curve (informational).
      2. `mode`: either `REPEAT` (curve loops forever) or `TRIGGER` (curve plays once when the normalized input delta exceeds `threshold` across the last `window` ticks).
      3. `threshold`: `float` in `[0, 1]`, defaults to `0.1` if unused. Only consulted in `TRIGGER` mode.
      4. `window`: unsigned integer count of previous update ticks used for the trigger-detection delta. Clamped to a minimum of `1`.
      5. `samples`: comma-separated list of float samples in `[-1, 1]`. The sample count also defines the curve's duration in update ticks (40 Hz).
      * Example (an eight-tick repeating sawtooth): `sweep:REPEAT:0.1:1:-1,-0.75,-0.5,-0.25,0,0.25,0.5,0.75`.
   * `dimmer_curves`: Dimmer curve definitions separated by `;`. A single dimmer curve definition is a list of values separated by `:`:
      1. `name`: human-readable name (informational).
      2. `type`: either `LIN` (affine `f(x) = a·x + b`), `SIG` (steepened logistic centered at `0.5`) or `BEZIER`.
      3. `params`: type-dependent and optional for `LIN`:
         * `LIN` accepts the two coefficients `a,b` separated by `,`. If omitted (empty params field) the default is `a=1, b=0`, which reproduces the identity. The output is clipped to `[0, 1]` after evaluation.
         * `BEZIER` requires exactly four control-point y-values separated by `,` interpreted as the y coordinates of a cubic Bézier on `[0, 1] → [0, 1]` with `t = x` (so the control points define the response of a monotone y-interpolation along the normalized input).
      * Examples: `identity:LIN:` or `identity:LIN:1,0`, `halve:LIN:0.5,0`, `bias:LIN:0.6,0.2`, `custom:BEZIER:0,0.1,0.9,1`.
 - initial parameters:
   * `active_effect` with value `<group>:<index>`: the effect curve index to activate on scene entry for the named group. The index is zero-based into the `effect_curves` list.
   * `active_dimmer` with value `<group>:<index>`: the dimmer curve index to activate on scene entry.
 - GUI update keys:
   * `active_effect` with value `<group>:<index>`: switch the group's effect curve starting with the next update tick. Returns `false` if the group name or index is unknown.
   * `active_dimmer` with value `<group>:<index>`: switch the group's dimmer curve starting with the next update tick.
   * `pause_effect` with value `<group>`: pause the effect curve of the named group, holding the current sample. Returns `false` for `TRIGGER`-mode curves, already-paused curves and unknown groups.
   * `resume_effect` with value `<group>`: resume playback of a paused effect curve. No-op (reported as success) if the group is not currently paused; returns `false` only for unknown groups. Switching the active effect curve via `active_effect` also implicitly resumes playback.
 - update Messages for GUI (feedback from fish → editor):
   * `parameter_key = "effect_state"`, `parameter_value = "<group>:<index>:<running|paused>"`
   * `parameter_key = "dimmer_state"`, `parameter_value = "<group>:<index>"`

   Fish emits these whenever a group's active curve or run-state changes so the show-mode UI widget can highlight the correct buttons and toggle the play/pause state.
 - Notes
   * Per-group signal flow: `f = clamp(dimmer / 65535 × ∏mixins + Σoffsets, 0, 1); out = clamp(f × effect_curve[idx], 0, 1); out = dimmer_curve(out) × 65535`.
   * A `TRIGGER`-mode effect curve is not re-triggered until the input value has settled (`|delta| ≤ threshold` across the full window) and the curve has reached its last sample; otherwise the curve finishes and then holds its last sample.
   * `pause_effect` only applies to `REPEAT` curves. While paused, the filter keeps re-emitting the sample the curve last reached, so changes to the dimmer input or mixin/offset channels still propagate through the normal signal flow — only the effect-curve index is frozen. After `resume_effect`, playback picks up at the next sample, independent of how many ticks were spent paused.
   * The internal tick counter and per-group virtual-time are reset on scene activation; so are all per-cell trigger flags, trigger timestamps, value-window ring buffers and pause flags.
   * The acceptance performance budget for this filter is `≤ 3 ms` for 5 groups of `50×50×50` cells per `update()` call.
