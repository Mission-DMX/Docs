---
title: Cue Filter
layout: default
---
# Cue Filter

Cue filters allow you to record changes to a range of predefined channels marked at a given time (called *cue*).
Using control widgets in the show UI or CLI commands, the current running cue can be changed, paused, stopped or restarted.
Based on user setting for a given cue, the current values are hold, the cue gets restarted or the next cue is played once the cue finished.

Typical use cases of cue filters are building theatre cues using one large configuration or having multiple filters controlling small features that can be used to compose complex behaviors while busking.

## Editing Cues

If you open the settings of a cue editor you'll be greeted with a dialog asking you if you'd like to switch to preview mode or would like to stay at the current show configuration.

![Screenshot of dialog asking user to switch to live preview of cue filter](images/cues-greeting.png)

If you say no here, the current running show will continue without interruption.
If you say yes, the show file will be reapplied with the cue filter accepting the current entered channel data as live preview.
The latter is quite helpful while building show files.

At any given time only one cue filter (or sequencer filter for that matter) should be in live preview mode.
If a filter was in live preview mode and its settings panel gets closed, it will be reverted to normal configuration.

### Channel Management

TODO describe channel management

### Cue Management

TODO describe cue list table functionality (including ordering, renaming deleting and duplication of cues)

### Using the Timeline Editor

TODO describe cue filter cue recording (including xtouch controls for recording, position change, time indicator and zoom; also explain how to take up values of a key frame into the current record buffer and how to edit existing key frames)

### Settings panel

TODO describe general settings and cue settings panel

## Control UI Widget

TODO describe show UI widget usage
