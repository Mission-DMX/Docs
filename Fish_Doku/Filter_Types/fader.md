
# Fader input
The following filters can be used to fetch fader input.

## filter_main_brightness_fader
 - Type name: `filter_main_brightness_fader`
 - Type id: `49`
 - Input channels: None
 - Output channels:
    * `brightness` of type `16bit`
 - Configuration parameters: None
 - initial parameters: None
 - GUI update keys: None

## filter_fader_column_raw
 - Type name: `filter_fader_column_raw`
 - Type id: `39`
 - Input channels: None
 - Output channels:
   * `primary` of type `16bit`
   * `secondary` of type `16bit`
 - Configuration parameters:
   * `set_id` The set to use for column lookup
   * `column_id` The column to look up
 - initial parameters: None
 - GUI update keys:
   * `set` A new set UUID to follow
   * `column` A new column UUID to follow

## filter_fader_column_hsi
 - Type name: `filter_fader_column_hsi`
 - Type id: `40`
 - Input channels: None
 - Output channels:
   * `color` type `hsv_pixel`
 - Configuration parameters:
   * `set_id` The set to use for column lookup
   * `column_id` The column to look up
   * optional: `ignore_main_brightness_control` If it is set to `true`, the main brightness fader is ignored.
 - initial parameters: None
 - GUI update keys:
   * `set` A new set UUID to follow
   * `column` A new column UUID to follow

## filter_fader_column_hsia
 - Type name: `filter_fader_column_hsia`
 - Type id: `41`
 - Input channels: None
 - Output channels:
   * `color` type `hsv_pixel`
   * `amber` type `8bit`
 - Configuration parameters:
   * `set_id` The set to use for column lookup
   * `column_id` The column to look up
   * optional: `ignore_main_brightness_control` If it is set to `true`, the main brightness fader is ignored.
 - initial parameters: None
 - GUI update keys:
   * `set` A new set UUID to follow
   * `column` A new column UUID to follow

## filter_fader_column_hsiu
 - Type name: `filter_fader_column_hsiu`
 - Type id: `42`
 - Input channels: None
 - Output channels:
   * `color` of type `hsv_pixel`
   * `uv` of type `8bit`
 - Configuration parameters:
   * `set_id` The set to use for column lookup
   * `column_id` The column to look up
   * optional: `ignore_main_brightness_control` If it is set to `true`, the main brightness fader is ignored.
 - initial parameters: None
 - GUI update keys:
   * `set` A new set UUID to follow
   * `column` A new column UUID to follow

## filter_fader_column_hsiau
 - Type name: `filter_fader_column_hsiau`
 - Type id: `43`
 - Input channels: None
 - Output channels:
   * `color` of type `hsv_pixel`
   * `amber` of type `8bit`
   * `uv` of type `8bit`
 - Configuration parameters:
   * `set_id` The set to use for column lookup
   * `column_id` The column to look up
   * optional: `ignore_main_brightness_control` If it is set to `true`, the main brightness fader is ignored.
 - initial parameters: None
 - GUI update keys:
   * `set` A new set UUID to follow
   * `column` A new column UUID to follow
