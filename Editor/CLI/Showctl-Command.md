---
title: Showctl Command
layout: default
nav_exclude: true
---

# Showctl Command  

The **showctl** command is used to manage show files and control scene selection, filtering, and ready‑mode behavior during a running show. It provides several sub‑commands, each with its own set of arguments.

## Sub‑commands Overview  

| Sub‑command | Description |
|------------|-------------|
| **commit** | Commit the current show file state. Optionally load the default scene after committing. |
| **load** | Load a `.show` file from a specified path. |
| **select-scene** | Switch to a specific scene in the actived show. |
| **filtermsg** | Send an update to a filter associated with a scene. |
| **readymode** | Control ready‑mode actions such as enable, abort, commit, or query. |

---

## Detailed Usage

### `showctl commit [--select-default-scene]`

Commit any pending changes to the current show file.

- **`--select-default-scene`** *(optional flag)* – If present, the default scene is automatically loaded after the commit completes.

**Example**  
```
showctl commit --select-default-scene
```

### `showctl load <path>`

Load the provided show file.

### `showctl select-scene <scene-ID>`

Activate the scene with the specified `<scene-ID>` (int).

### `showctl filtermsg <scene-ID> <filter-ID> <parameter> <value>`

Sends the specified parameter value update to the specified filter. Virtual filters are supported as well.

**Example**  
```
showctl filtermsg 2 brightnessCtrl value 0.75
```

### `showctl readymode <action>`

Control the current ready mode.
Action may be one of the following:

 * `enable` -- Turn Ready mode on.
 * `abort` -- Abort ready mode.
 * `commit` -- Commit ready mode.
 * `query` -- Is the console currently in ready mode?
