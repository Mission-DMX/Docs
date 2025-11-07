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
| [8 bit constant](../../Fish_Doku/Filter_Types/constants.md#8-bit-constant)
| [16 bit constant](../../Fish_Doku/Filter_Types/constants.md#16-bit-constant)
| [float constant](../../Fish_Doku/Filter_Types/constants.md#float-constant)
| [color constant](../../Fish_Doku/Filter_Types/constants.md#color-constant)
| [position constant](./constants.md#position-constant) | [position constant](./Constants.md#position-constant)

## Debug

| Filter | Description |
|--------|-------|
| [8 bit output](../../Fish_Doku/Filter_Types/debug.md#8-bit-output)
| [16 bit output](../../Fish_Doku/Filter_Types/debug.md#16-bit-constant)
| [float output](../../Fish_Doku/Filter_Types/debug.md#float-constant)
| [color output](../../Fish_Doku/Filter_Types/debug.md#color-constant)

## Adapter

| Filter | Description |
|--------|-------|
| [Split 16 bit to two 8 bit](../../Fish_Doku/Filter_Types/adapters.md#Split-16-bit-unsigned-ints-to-two-8-bit-unsigned-ints)
| [Merge two 8 bit to 16 bit](../../Fish_Doku/Filter_Types/adapters.md#Merge-two-8-bit-unsigned-ints-to-16-bit-unsigned-int)
| [Map one 8 bit to 16 bit](../../Fish_Doku/Filter_Types/adapters.md#Map-one-8-bit-unsigned-int-to-16-bit-unsigned-int)
| [Map a float to 8 bit value](../../Fish_Doku/Filter_Types/adapters.md#Map-a-float-to-an-8-bit-value)
| [Map a float to 16 bit value](../../Fish_Doku/Filter_Types/adapters.md#Map-a-float-to-an-16-bit-value)
| [Map a float to float](../../Fish_Doku/Filter_Types/adapters.md#Map-a-float-range-to-another-float-range)
| [Convert 16 bit to ngn](../../Fish_Doku/Filter_Types/adapters.md#Convert-16-bit-to-ngn)
| [8bit to float](../../Fish_Doku/Filter_Types/adapters.md#8bit-to-float)
| [16bit to float](../../Fish_Doku/Filter_Types/adapters.md#16bit-to-float)
| [color to RGB](../../Fish_Doku/Filter_Types/adapters.md#color-to-RGB)
| [color to RGBW](../../Fish_Doku/Filter_Types/adapters.md#color-to-RGBW)
| [color to RGBWA](../../Fish_Doku/Filter_Types/adapters.md#color-to-RGBWA)
| [floats to color](../../Fish_Doku/Filter_Types/adapters.md#float-to-color)
| [color to floats](../../Fish_Doku/Filter_Types/adapters.md#color-to-floats)
| [universe output](../../Fish_Doku/Filter_Types/adapters.md#Universe-Output)

## Arithmetics

| Filter | Description |
|--------|-------|
| [MAC filter](../../Fish_Doku/Filter_Types/arithmetics.md#MAC-filter)
| [float to 16bit](../../Fish_Doku/Filter_Types/arithmetics.md#float-to-16bit)
| [float to 8bit](../../Fish_Doku/Filter_Types/arithmetics.md#float-to-8bit)
| [round float](../../Fish_Doku/Filter_Types/arithmetics.md#round-float)
| [logarithm](../../Fish_Doku/Filter_Types/arithmetics.md#logarithm)
| [exponential](../../Fish_Doku/Filter_Types/arithmetics.md#exponential)
| [minimum](../../Fish_Doku/Filter_Types/arithmetics.md#minimum)
| [maximum](../../Fish_Doku/Filter_Types/arithmetics.md#maximum)

## Trigonometric

| Filter | Description |
|--------|-------|
| [sine](../../Fish_Doku/Filter_Types/trigonometrics.md#sine) | [sine](./Trigonometrics.md)
| [cosine](../../Fish_Doku/Filter_Types/trigonometrics.md#cosine)
| [tangent](../../Fish_Doku/Filter_Types/trigonometrics.md#tangent)
| [arcsine](../../Fish_Doku/Filter_Types/trigonometrics.md#arcsine)
| [arccosine](../../Fish_Doku/Filter_Types/trigonometrics.md#arccosine)
| [arctangent](../../Fish_Doku/Filter_Types/trigonometrics.md#arctangent)

## Waves

| Filter | Description |
|--------|-------|
| [square](../../Fish_Doku/Filter_Types/wave.md#square) | generates a square wave. |
| [triangle](../../Fish_Doku/Filter_Types/wave.md#triangle) | Generates a triangle wave. |
| [sawtooth](../../Fish_Doku/Filter_Types/wave.md#sawtooth) | Generates a saw wave. |

## Time related filters

| Filter | Description |
|--------|-------------|
| [time](../../Fish_Doku/Filter_Types/time.md#time) | Get iteration time. |
| [switch_on_delay_8bit](../../Fish_Doku/Filter_Types/time.md#switch_on_delay_8bit) | Delay switching on by specified time for 8bit values. |
| [switch_on_delay_16bit](../../Fish_Doku/Filter_Types/time.md#switch_on_delay_16bit) | Delay switching off by specified time for 16bit values. |
| [switch_on_delay_double](../../Fish_Doku/Filter_Types/time.md#switch_on_delay_double) | Delay switching off by specified time for float values. |
| [switch_off_delay_8bit](../../Fish_Doku/Filter_Types/time.md#switch_off_delay_8bit) | Delay switching off by specified time for 8bit values. |
| [switch_off_delay_16bit](../../Fish_Doku/Filter_Types/time.md#switch_off_delay_16bit) | Delay switching off by specified time for 16bit values. |
| [switch_off_delay_double](../../Fish_Doku/Filter_Types/time.md#switch_off_delay_double) | Delay switching off by specified time for float values. |

## Fader input

| Filter | Description |
|--------|-------------|
| [filter_main_brightness_fader](../../Fish_Doku/Filter_Types/fader.md#filter_main_brightness_fader) | Get global brightness value. |
| [filter_fader_column_raw](../../Fish_Doku/Filter_Types/fader.md#filter_fader_column_raw) | Get value of a configured fader. |
| [filter_fader_column_hsi](../../Fish_Doku/Filter_Types/fader.md#filter_fader_column_hsi)| |
| [filter_fader_column_hsia](../../Fish_Doku/Filter_Types/fader.md#filter_fader_column_hsia) | |
| [filter_fader_column_hsiu](../../Fish_Doku/Filter_Types/fader.md#filter_fader_column_hsiu) | |
| [filter_fader_column_hsiau](../../Fish_Doku/Filter_Types/fader.md#filter_fader_column_hsiau) | |

## Effect-filters

| Filter | Description |
|--------|-------|
| [cue_list_filter](../../Fish_Doku/Filter_Types/effects.md#cue_list_filter) | [Cue Filter](./Cues.md#cue-filter) |
| [filter_shift_8bit](../../Fish_Doku/Filter_Types/effects.md#filter_shift_8bit) | Shift 8 bit values into specified direction |
| [filter_shift_16bit](../../Fish_Doku/Filter_Types/effects.md#filter_shift_16bit) | Shift 16 bit values into specified direction |
| [filter_shift_float](../../Fish_Doku/Filter_Types/effects.md#filter_shift_float) | Shift floats into specified direction |
| [filter_shift_color](../../Fish_Doku/Filter_Types/effects.md#filter_shift_color) | Shift colors into specified direction |

## Script filters

| Filter | Description |
|--------|-------|
| [lua_script_filter](../../Fish_Doku/Filter_Types/script.md#lua_script_filter) | Filter to execute user defined scripts in scene. See also: [Scripting](./Scripting.md) |
