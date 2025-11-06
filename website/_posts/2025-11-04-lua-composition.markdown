---
layout: post
title:  "Lua Compositions"
date:   2025-11-04 10:56:01 +0100
categories: Tips and Tricks
author: Doralitze
---
# Lua Compositions
We all love [Tidal](https://tidalcycles.org/), right?
While this post is not about reading MIDI input to control a sequencer filter, it is about using a scripting language to create art.
When running a show, I usually set up a few macros and cues to control moving heads and steer the remaining lights using a set of prepared code snippets to paste into a Lua filter.
Let's start without furhter ado.

We begin with a bunch of led bars patched into a universe and a Lua scripting filter.
We add some input channels (`Color1` and `Color2` as well as an 8-bit input called `SelectedEffect`) but no output channels as we're going to drive the bars directly.
Also, we add some variables defining our bar addresses and initialize our `colors` array.

```
bar_start = 1
universe = 1
num_bars = 6

colors = {}
for x = 0, num_bars-1 do
    for y = 1, 8 do
        colors[(x*8)+y] = {0,0,0}
    end
end

track_sender = get_event_sender(1)
dimmer = 0
```

Our handling of `scene_activated()` is equally boring as we simply reset all colors.

```
function scene_activated()
    for i = 1, #colors do
        colors[i]["h"] = 0
        colors[i]["s"] = 0
        colors[i]["i"] = 0
    end
end
```

Now for the fun part: we can write a method that assigns our colors in what ever fashion we fancy.
We'll start of with one, that does a rainbow effect between our two input colors on every beat.

```
function update()
    if dimmer > 0 then
        dimmer = dimmer - 1
    end
    if has_event(track_sender) then
        dimmer = 255
    end
    for i = 1, #colors do
        colors[i] = mix_color_interleaving(Color1, Color2, i / #colors)
    end
    write_output()
end
```

The `write_output()` method simply writes the content of the color array to our led bars. It may look as follows:
```
function write_output()
    current_start_addr = bar_start
    for i = 1, num_bars do
        output[universe][current_start_addr + 0] = dimmer
        output[universe][current_start_addr + 1] = 0 -- strobe
        output[universe][current_start_addr + 2] = 0 -- color auto program
        output[universe][current_start_addr + 3] = 0 -- color presets
        output[universe][current_start_addr + 4] = 0 -- auto mode function
        output[universe][current_start_addr + 5] = 0 -- auto mode parameter
        output[universe][current_start_addr + 6] = 0 -- auto mode speed
        for seg = 0, 7 do
            r, g, b, w = hsi_to_rgbw(colors[(i-1) * 8 + seg])
            output[universe][current_start_addr + 7 + (4 * seg) + 0] = r
            output[universe][current_start_addr + 7 + (4 * seg) + 1] = g
            output[universe][current_start_addr + 7 + (4 * seg) + 2] = b
            output[universe][current_start_addr + 7 + (4 * seg) + 3] = w
        end
        current_start_addr = current_start_addr + 39
    end
end
```

At this point we have our output and can change or append (which is why we have our `SelectedEffect` channel) our behavior and apply the show file any time.
If we mess up, there is always the `Oops` button, right?

Playing around further, we can implement running lights or randomly switch individual pixels.
Increasing the number of active pixels based on the amount of beats per second turned out to be a particularly nice effect.

Combining multiple effects is possible by simply adding or multiplying different color arrays.
This is best done by splitting effects into functions that you can call.
However, One thing to look out for is that you do not want to increase brightness too much in a party setting.

Having an ever-growing text file with these snipps to switch out, definitely comes in handy at the next party, so it is wise to keep the good looking ones.

Finally, I hope you enjoyed these thoughts and wish you a lot of fun at your next show.

