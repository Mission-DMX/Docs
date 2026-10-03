---
layout: post
title:  "Example Showfiles for Event Router and Color Director"
date:   2026-10-03 10:59:03 +0200
categories: Tips and Tricks
author: doralitze
---
# Example Showfiles for Event Router and Color Director

Some people requested example show files on how to use the event router and color director.
So here they are.
(Please be reminded that show files contain executable code and should therefore only be retrieved from trusted sources.)

## Event Router
Please download the show file <a href="/blog_images/event_scheduler_example.show" download>here</a>.
The basis of the show file is a [Sequencer](https://mission-dmx.org/docs/Filters/Sequences.html) filter reacting on events that are scheduled by [Event Scheduler.0](/docs/Filters/EventScheduler.md).
Within the show UI, the output of the sequencer channels can be observed, the step of the event scheduler can be advanced using the macro button and the event scheduler can be reconfigured.

## Color Director
Please download the show file <a href="/blog_images/color_director_example.show" download>here</a>.
This example instantes a [color director](/docs/Filters/ColorDirector.md), controlled by a UI widget.
The outputs are piped back into the show UI for visual inspection.
