# Script filters

## lua_script_filter
 - Type name: `filter_lua_script`
 - Type id: `50`
 - Input channels:
    The name of the channel  with its type, Example:
    * `in_dimmer` of type `8bit` (default 0)
    * `in_color` of type `color` (default white)
 - Output channels:
    The name of the channel  with its type, Example:
      * `out_dimmer` of type `8bit`
      * `out_color` of type `color`
      * `out_color2` of type `color`
 - Configuration parameters:
    * `in_mapping`: The type as `8bit`, `16bit`,`float` or `color` of the channels behind the name of the channel and `:` divided by `;`
      * Example: `in_dimmer:8bit;in_color:color`
    * `out_mapping`: The type as `8bit`, `16bit`,`float` or `color` of the channels behind the name of the channel and `:` divided by `;`
      * Example: `out_dimmer:8bit;out_color:color;out_color2:color`
 - initial parameters:
    * `script`: the lua script to run with the given values
      - Example:
```
function update()
    -- This method will be called once per DMX output cycle
    -- Put your effect here
    out_color = {
        h = in_color[\"h\"]*8,
        s = in_color[\"s\"]*3,
        i = in_color[\"i\"]*2}
    out_dimmer = in_dimmer/2
    out_color2 = in_color
    out_color2.h = in_color.h/10
    out_color2.s = in_color.s/2
end
function scene_activated()
    -- This method will be called every time the show is switched to this scene
end
```
 - GUI update keys: None
 - Notice: you can access these functions in lua:
    - `hsi_to_rgb(color)`
    - `hsi_to_rgbw(color)`

### Lua Filter API

#### Execution Order
When a filter is constructed, the content of the script is executed. Use this behaviour in order to set up constant values.
After that the following functions are called on appropriate occasion:
 * `scene_activated()` is called every time the scene gets activated. Place reoccuring initializations here.
 * `update()` is called on every scene update (40 times per second). Place your filter behaviour here

#### Global variables
Every configured input and output port is mapped as a global variable of the same type. These are also updated once per cycle.
Besides that, the following global variables have a special meaning:
 * `output`: This global variable is a two dimensional array. The first dimension is interpreted as the universe id to output to.
   The second one defines the channel. For example `output[1][3] = 255` would set channel `4` of universe `1` to `255`.

#### Additional Functions
Besides the Lua standard library, the following functions are avaiable:
 * `hsi_to_rgb(color)` Converts pixel data type to three dimensional array of color values. Ussage: `r, g, b = hsi_to_rgb(my_color)`
 * `hsi_to_rgbw(color)` Converts pixel data type to four dimensional array of color values. Ussage: `r, g, b, w = hsi_to_rgbw(my_color)`
 * `mix_color_rgb_additive(color1, color2)` Mix two colors together using the additive rgb algorithm. Ussage: `new_color = mix_color_rgb_additive(color1, color2)`
 * `mix_color_rgb_normative(color1, color2)` Mix two colors together using the normative rgb algorithm. Ussage: `new_color = mix_color_rgb_normative(color1, color2)`
 * `mix_color_hsi(color1, color2, distance_obediance=true)` Mix two colors together using the HSI avarage algorithm. The thirs parameter is optional (defaulting to true) and indicates if distant colors should get their brightness reduced once they're mixed. Ussage: `new_color = mix_color_hsi(color1, color2)`
 * `mix_color_interleaving` Mix to colors based on a given range from `0.0` to `1.0`. If 0 is provided the first color will be returned, if 0.5 is given an even mixture of both and in case of 1 the second color. Usage: `new_color = mix_color_interleaving(color1, color2, range)`
