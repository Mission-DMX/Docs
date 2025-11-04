---
---
# Using the Control Desk

The control desk (at the moment only controllers implementing the X-Touch protocol are supported) allows more tactile human interfacing than mouse or touchscreen an keyboard.
In general, the functionality can be splitted into the fader banks and keyboard area.

### Columns

Faders either represent number or color input.
All fader columns support the `Select` button. Clicking the button opens up a view allowing sophisticated settings for the faders in select mode.
If a button is in select mode, the select button will glow.
In order to select multiple faders, press and hold the select button of the first fader while pressing the select buttons of all other desired columns.
All faders in select mode will be updated with the made settings.

Furthermore, columns can enter the ready mode by pressing the `RDY` button.
All settings of all columns in ready mode will only be applied (but then all at once together with changes from the show UI) if the user presses the `CMT` button.
Columns in ready mode can be identified by their glowing ready buttons.

In number mode, motorized faders can be used to quickly dial in a number, whereas the encoder can be used to do fine grained settings.
Pressing the `Black` button of the column will output make the column output 0 as long as it is active. Black mode activity is indicated by the illumination of the button.
Pressing the `Flash` button makes the column output the maximum configured numerical value (65565 by default).
Unlike the `Black` button, the `Flash` button only stays active as long as the user presses it.

If the column is in number mode, the fader can be used to set the Intensity of the color.
The rotary encoder can be used to set set hue and saturation, while pressing it changes which setting is changed.
The current saturation is displayed using the led meter bar of the column and hue is displayed using the encoder led bar.
In addition, the display outpouts approximate names for the current hue setting while changing it.
Pressing the `Black` button makes the color output an intensity of zero while it is active, whereas `Flash` outputs maximum intensity.

The bank switching buttons glow if there are multiple fader banks available in the current set and allow switching between those.

### Main Brightness Fader

The main brightness fader can (as in optional usage) be used to control global illumination.
The large `Black` button on top of it makes all honoring filters go dark.

### View Buttons

The view buttons provide quick access to the six main views (Quick Console, Editing, Show UI, Visualizer, Patching and Debug).
If one of the primary views is active, the corresponding button is illuminated.

### Control Buttons
Below the view buttons, there is a set of buttons used to control the show. These buttons are:
 * _Commit Show_ Pressing the commit button applies the current configuration of the show file to fish.
 * _Oops_ Pressing this button loads the previous show configuration into fish. This is useful if the newest configuration did not have the intended behaviour and the user wishes to fall back to the previous state.
 * _CMT_ Commits the current outstanding changes to faders and Show UI settings in ready mode.
 * _Find_ If in quick console mode: Enters a mode to find fixtures on stage by making the fixture in question illuminated while turning others dark. This is useful for testing the fixtures and wireing after builtup of the stage. If not in quick console mode, it opens a search bar to search for specific components in the show file.
 * _Events_ Opens the event linking dialog.
 * _Assets_ Opens the assets linking dialog.

### F-Keys

The F-Keys (F1 to F8) can be mapped to various shortcurs or macros.

## TODOs

* TODO explain media buttons or do so in sequencer and cue editor pages of manual
* TODO explain universe switching buttons (for quick console and and patching)
* TODO explain the ussage of the numpad, joystick and general edit buttons
