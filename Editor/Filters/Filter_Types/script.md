---
title: Scripting Filters
layout: default
---
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

