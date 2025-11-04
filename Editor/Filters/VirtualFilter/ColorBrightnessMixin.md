---
layout: default
---
# Color Brightness Mixin

This virtual filter accepts a color (`color_in`) and optionally a `brightness` (as a uint8, ranging from 0 to 255, dark to bright)
channel as inputs. It provides the output channel `out` which contains the input color, except that the brightness has been mixed
with the input brightness. If the brightness input has been obmitted, the main brightness setting will be used.
