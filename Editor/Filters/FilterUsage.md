---
title: Filter Overview
layout: default
---
# Filter Overview

All filter are listed here and their usage is linked


## Constants

A general introduction to constants is given [here](Constants.md).

| Filter | Description |
|--------|-------|
| [8 bit constant](Filter_Types/constants.md#8-bit-constant)
| [16 bit constant](Filter_Types/constants.md#16-bit-constant)
| [float constant](Filter_Types/constants.md#float-constant)
| [color constant](Filter_Types/constants.md#color-constant)
| [position constant](Filter_Types/constants.md#position-constant) | [position constant](./Constants.md#position-constant)

## Debug

| Filter | Description |
|--------|-------|
| [8 bit output](Filter_Types/debug.md#8-bit-output)
| [16 bit output](Filter_Types/debug.md#16-bit-constant)
| [float output](Filter_Types/debug.md#float-constant)
| [color output](Filter_Types/debug.md#color-constant)

## Adapter

| Filter | Description |
|--------|-------|
| [Split 16 bit to two 8 bit](Filter_Types/adapters.md#Split-16-bit-unsigned-ints-to-two-8-bit-unsigned-ints)
| [Merge two 8 bit to 16 bit](Filter_Types/adapters.md#Merge-two-8-bit-unsigned-ints-to-16-bit-unsigned-int)
| [Map one 8 bit to 16 bit](Filter_Types/adapters.md#Map-one-8-bit-unsigned-int-to-16-bit-unsigned-int)
| [Map a float to 8 bit value](Filter_Types/adapters.md#Map-a-float-to-an-8-bit-value)
| [Map a float to 16 bit value](Filter_Types/adapters.md#Map-a-float-to-an-16-bit-value)
| [Map a float to float](Filter_Types/adapters.md#Map-a-float-range-to-another-float-range)
| [Convert 16 bit to ngn](Filter_Types/adapters.md#Convert-16-bit-to-ngn)
| [8bit to float](Filter_Types/adapters.md#8bit-to-float)
| [16bit to float](Filter_Types/adapters.md#16bit-to-float)
| [color to RGB](Filter_Types/adapters.md#color-to-RGB)
| [color to RGBW](Filter_Types/adapters.md#color-to-RGBW)
| [color to RGBWA](Filter_Types/adapters.md#color-to-RGBWA)
| [floats to color](Filter_Types/adapters.md#float-to-color)
| [color to floats](Filter_Types/adapters.md#color-to-floats)
| [universe output](Filter_Types/adapters.md#Universe-Output)
| [Color Brightness Mixin](VirtualFilter/ColorBrightnessMixin.md) | Mix brightness of Color with other value. |
| [Dimmer Brightness Mixin](VirtualFilter/brightness_mixin.md) | Mix two numerical brightness values | 

## Arithmetics

| Filter | Description |
|--------|-------|
| [MAC filter](Filter_Types/arithmetics.md#MAC-filter)
| [float to 16bit](Filter_Types/arithmetics.md#float-to-16bit)
| [float to 8bit](Filter_Types/arithmetics.md#float-to-8bit)
| [round float](Filter_Types/arithmetics.md#round-float)
| [logarithm](Filter_Types/arithmetics.md#logarithm)
| [exponential](Filter_Types/arithmetics.md#exponential)
| [minimum](Filter_Types/arithmetics.md#minimum)
| [maximum](Filter_Types/arithmetics.md#maximum)

## Trigonometric

| Filter | Description |
|--------|-------|
| [sine](Filter_Types/trigonometrics.md#sine) | [sine](./Trigonometrics.md)
| [cosine](Filter_Types/trigonometrics.md#cosine)
| [tangent](Filter_Types/trigonometrics.md#tangent)
| [arcsine](Filter_Types/trigonometrics.md#arcsine)
| [arccosine](Filter_Types/trigonometrics.md#arccosine)
| [arctangent](Filter_Types/trigonometrics.md#arctangent)

## Waves

| Filter | Description |
|--------|-------|
| [square](Filter_Types/wave.md#square) | generates a square wave. |
| [triangle](Filter_Types/wave.md#triangle) | Generates a triangle wave. |
| [sawtooth](Filter_Types/wave.md#sawtooth) | Generates a saw wave. |

## Time related filters

| Filter | Description |
|--------|-------------|
| [time](Filter_Types/time.md#time) | Get iteration time. |
| [switch_on_delay_8bit](Filter_Types/time.md#switch_on_delay_8bit) | Delay switching on by specified time for 8bit values. |
| [switch_on_delay_16bit](Filter_Types/time.md#switch_on_delay_16bit) | Delay switching off by specified time for 16bit values. |
| [switch_on_delay_double](Filter_Types/time.md#switch_on_delay_double) | Delay switching off by specified time for float values. |
| [switch_off_delay_8bit](Filter_Types/time.md#switch_off_delay_8bit) | Delay switching off by specified time for 8bit values. |
| [switch_off_delay_16bit](Filter_Types/time.md#switch_off_delay_16bit) | Delay switching off by specified time for 16bit values. |
| [switch_off_delay_double](Filter_Types/time.md#switch_off_delay_double) | Delay switching off by specified time for float values. |

## Fader input

| Filter | Description |
|--------|-------------|
| [filter_main_brightness_fader](Filter_Types/fader.md#filter_main_brightness_fader) | Get global brightness value. |
| [filter_fader_column_raw](Filter_Types/fader.md#filter_fader_column_raw) | Get value of a configured fader. |
| [filter_fader_column_hsi](Filter_Types/fader.md#filter_fader_column_hsi)| |
| [filter_fader_column_hsia](Filter_Types/fader.md#filter_fader_column_hsia) | |
| [filter_fader_column_hsiu](Filter_Types/fader.md#filter_fader_column_hsiu) | |
| [filter_fader_column_hsiau](Filter_Types/fader.md#filter_fader_column_hsiau) | |

## Effect-filters

| Filter | Description |
|--------|-------|
| [cue_list_filter](Filter_Types/effects.md#cue_list_filter) | [Cue Filter](./Cues.md#cue-filter) |
| [filter_shift_8bit](Filter_Types/effects.md#filter_shift_8bit) | Shift 8 bit values into specified direction |
| [filter_shift_16bit](Filter_Types/effects.md#filter_shift_16bit) | Shift 16 bit values into specified direction |
| [filter_shift_float](Filter_Types/effects.md#filter_shift_float) | Shift floats into specified direction |
| [filter_shift_color](Filter_Types/effects.md#filter_shift_color) | Shift colors into specified direction |

## Script filters

| Filter | Description |
|--------|-------|
| [lua_script_filter](Filter_Types/script.md#lua_script_filter) | Filter to execute user defined scripts in scene. See also: [Scripting](./Scripting.md) |
