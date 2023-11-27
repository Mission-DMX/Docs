# Joystick Mapping
The following key codes are reported by the MCU:
 * X-Axis: JoyX
 * Y-Axis: JoyY
 * U-Axis: JoyR
 * V-Axis: JoyU
 * Button: JoyPOV1

# Setting moving heads
In order to garuntee a consistent user experience, we should stick to this input schema:
 * JoyX: changes to Pan
 * JoyY: changes to Tilt
 * JoyR and JoyU: changes to zoom if JoyPOV1 is not pressed, else changes to focus.
