# Lua Filter API

## Execution Order
When a filter is constructed, the content of the script is executed. Use this behaviour in order to set up constant values.
After that the following functions are called on appropriate occasion:
 * `scene_activated()` is called every time the scene gets activated. Place reoccuring initializations here.
 * `update()` is called on every scene update (40 times per second). Place your filter behaviour here

## Global variables
Every configured input and output port is mapped as a global variable of the same type. These are also updated once per cycle.
Besides that, the following global variables have a special meaning:
 * `output`: This global variable is a two dimensional array. The first dimension is interpreted as the universe id to output to.
   The second one defines the channel. For example `output[1][3] = 255` would set channel `4` of universe `1` to `255`.

## Additional Functions
Besides the Lua standard library, the following functions are avaiable:
 * `hsi_to_rgb(color)` Converts pixel data type to three dimensional array of color values. Ussage: `r, g, b = hsi_to_rgb(my_color)`
 * `hsi_to_rgbw(color)` Converts pixel data type to four dimensional array of color values. Ussage: `r, g, b, w = hsi_to_rgbw(my_color)`
