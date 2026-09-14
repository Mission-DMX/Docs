---
title: Misc Filters
layout: default
---
# Misc Filters

## Event Scheduler Filter
 - Type name: `filter_event_scheduler`
 - Type id: `80`
 - Input channels: None
 - Output channels: None
 - Configuration parameters:
    * `event_data`: The events that can be scheduled. Format: Event definitions are separated by `;`. An event definition is a sequence of sender-id, sender-function, event type and arguments (each one number). They are separated by `,`. Example: `2,1,0,30,20` would be an event from sender `2` with function `1` and single trigger type. The arguments would be 30 and 20. See also the [event type enumeration](https://mission-dmx.org/docs/fish-dev/event__type_8hpp_source.html).
 - initial parameters:
    * `length`: Integer. How many steps should be available?
    * `update_triggers`: Update list entries, separated by `;`. Each update list entry has the following format: `<step:int>,<event-index:int>,<activated:TRUE|FALSE>`. Example: `2,7,TRUE` would enable the trigger of event 7 at step 2.
    * `step`: Integer. Set the current step.
    * `synchronization_target`: Event that triggers a step advancement. Format: `<sender-id>,<function-id>`
 - GUI update keys: All initial parameters can also be updated.
