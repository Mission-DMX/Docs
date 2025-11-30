---
title: Event Command
layout: default
---
# Event Command

The event command is useful for manageing events.
The following two sub commands are available:
 * `add-sender`
 * `send`

## add-sender
The `add-sender` command expects a name of the sender to be added as the first argument.
Using `--sender-type` the type can be specified, defaulting to `fish.builtin.plain`.
Using the `--enable-debug` flag, the newly created sender will be in debug mode.
By specifying key-value pairs using the `configure` flag, a list of options can be provided to the new sender.

## send
The `send` command is used to insert events for plain senders from the GUI.
Either the target sender id (`-i` or `--sender_id`) needs to be provided, or the sender needs to be looked up using `-n` (or `--sender_name`).
A target function can be specified with `--function`, defaulting to zero.

By setting `--type` to `single`, `start` or `release` reoccuring events can be scheduled.
By default, inserted events are single ocasion events.

Arguments can be appended using the `--args` flag.

