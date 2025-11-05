---
layout: default
---

# Event Sources

Fish supports various event sources, which are documented here.

#### fish.builtin.plain

This event source does not provide any special behaviour. It is only used to distinguish events inserted
by software (either using the Lua API or the GUI).

#### fish.builtin.midi

This event source listens on local midi ports and forwards the midi events into the event storage.

TODO: document configuration

#### event_source fish.builtin.midirtp

This event source listens on configured remote midi sources (using the midi-rtp protocol) and forwards the
midi events into the event storage.

TODO: document configuration

#### fish.builtin.gpio

This event source forwards changes (based on the configured thresholds) on attached GPIO sources
from attached X-Touch controllers to the event storage.

TODO: document configuration

#### fish.builtin.macrokeypad

This event source forwards inputs on the macro keypad to the event storage.

TODO: document configuration
