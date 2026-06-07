---
title: Asset Command
layout: default
nav_exclude: true
---
# Asset Command

The asset command can be used to manage the show file assets.

## load
Use `asset load <class> <resource>` to load an asset of the specified class.
The following classes are available:
 * `images.file`
 * `images.embedded`
 * `video.file`
 * `video.stream`
 * `text.file`
 * `text.jsonuri`

### Example
Use `asset load images.file duck.png` to create a new asset containing the image `duck.png`.
