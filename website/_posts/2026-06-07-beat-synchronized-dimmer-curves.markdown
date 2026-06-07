---
layout: post
title:  "Beat Synchronized Dimmer Curves"
date:   2026-06-06 10:59:01 +0200
categories: Tips and Tricks
author: doralitze
---
# Beat Synchronized Dimmer Curves

A common quirk at music events are beat syncronized effects.
In this blog post, we're going through setup of dimmer curves that are matched to the beat.
While many show files simply use a "Speed" fader, matching the exact frequency and phase turns out to be quite tricky.
Therefore we're going to use automation for this.

## Setting up the event source
The fist thing required is a beat analysis event source.
Follow [these instructions](/docs/Events.html#audio-extractor) to set one up.

In an ideal case, one would use a mono source.
If one is using a stereo audio source, best results are achieved by having both channels contain the drum set tracks.

Dial in the settings and see if the generated events match expectations.
If everything is fine, take the time to rename the generated events to something reasonable as this will help us later on.

## Setting up the Dimmer mixin

Next, we need to react on these events.
Usually, a [dimmer mixin](/docs/Filters/VirtualFilter/brightness_mixin.html) is setup for each fixture having a dimmer channel.
Typically, the `input` and `mixin` ports are in use by the individual fixture brightness and global brightness properties.
We're going to use the `offset` channel of these and therefore do not need additional mixing.
If additional ports are reuired, remember that brightness faders can automatically utilize the global brightness fader to multiply their intensity.

The `offset` channel value gets added to the normalized brightness (ranging from 0 to 1).
If we would like to temporarily reduce the brightness on a beat, we should supply a negative value between -1 and 0.
If we would like to increase the brightness instead, we would provide a positive value on beat.
I usually go for the first route as I can have the brightness on full this way and still see results.

While there are meany ways to generate the offsets on beats, the easiest one is using a [sequencer](/docs/Filters/Sequences.html).
Within the sequencer, we set up a `float` channel and set the default value to `0.0` with return to default option.
This way, we will have no changed brightness if there is no beat.
Next, set up a transition that performs your desired offset change on the beat events.
In order to generate meaningful results it would be best if there is a sharp edge towards the offset value with a smooth transition back.
The duration of the whole transition should not exceed your minimum time between beats.
For example, if you expect up to 180BPM music, your transition time should not exceed one third of a second.

This works really well for music in four-four time and two-four time.
If you're illuminating a ball room with tree-four time music you definitely want smooth entrances of the transition as well.
Set your transition length to a full second in that case and use the `time_scale` of the sequence filter to adjust the speed matching your music.
You may use the `bpm` output of an [event counter](/docs/Filters/Filter_Types/time.html#event-counter) to do so.
Just keep in mind that time scaling will affect all transitions in your sequencer filter, requiring you to either match them as well or use a seperate filter.

### Alternative dimmer generator

A totally different approach, would be using a Lua filter to generate the required dimmer curves.
The advantage is the increased flexibility in handling of multiple effects on subgroup outputs.
In the following example, a script is used to create dimmer curves based on steps.

```
temperature = 255

function update()
    if temperature < 255 then
        -- Adjust the change based on your needs. Remember, this method gets called on every DMX value update, ~40 times per second.
        temperature = temperature + 10
    end
    -- Here it would be smarter to query the event sender by name inside the setup
    -- instead of having to remember to change the sender id when migrating the show file to a new.
    -- Trust me, I spend quite a bit of time debugging such a mistake once ;-)
    if has_event(1, 0) then
        temperature = 0
    end
    if select == 0 then
        dimmer_out = dimmer
    else
        dimmer_out = ((dimmer / 255.0) * (temperature / 255.0)) * 255.0
    end
end

function scene_activated()
    temperature = 255
end
```

This script requires the following inputs:
 * `select` (any number but 16 bit was used here)
 * `dimmer` (8 bit number, if a 16 bit or float dimmer would be used, the constants above would have to be adjusted.)

The `dimmer_out` output (also an 8bit one) can then be used for controls.

## Turning the Effect on and off
Finally, one may decide to have an ON/OFF switch for this mechanism.
A simple event proxy does the trick just fine.
Simply setup some macro buttons inside your show UI to route the events if and only if you desire to do so at the moment.

A different approach would be the multiplication of the offset with a fader controlling the impact of the effect.
If the fader is set to 0, the monotone voice of the moderator on stage will not trigger the beat matching.

If you like a speed override as well, consider the following script:

```
last_update = 0

function update()
    event_required = false
    if source_speed == 0 then
        if has_event(1, 0) then
            event_required = true
            -- Beat forwarded
        end
    else
        if time > last_update + (source_speed * 20) then
            event_required = true
            last_update = time
            -- Generating timed event
        end
    end
    if event_required then
        insert_event(2, 0)
    end
end

function scene_activated()
    last_update = 0
end
```

It will use `source_speed` input to determine if the events should be generated by the beat matching (if the input is set to 0) or if they should be generated based on the timer.
If an event should be forwarded or generated, a second event gets inserted using a different source (or function).
Of course, such a script could also be extended to handle the ON/OFF switch we talked earlier about.

## Final Words
Which method one may choose for beat matching is totally up to personal choice.
Besides the two methods meantioned above, there are many more ways to do this.
However, once a likable method has been found, do not forget to setup a preset recipe, in order to have it at hand quickly for your next show!


