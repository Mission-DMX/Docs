---
title: Bankset Command
layout: default
nav_exclude: true
---

# Bankset Command  

The **bankset** command is used to create, modify, and manage collections of banksets.
It provides a set of sub‑commands for creating a new bank set, adding columns to banks, committing changes, and inspecting or activating the current set.

## Sub‑commands Overview  

| Sub‑command | Description |
|------------|-------------|
| **create** | Create a new bank set and make it the selected (active) one. |
| **add**    | Add a column to a specified bank within the selected bank set. |
| **commit** | Commit (save) all pending changes made to the current bank set. |
| **info**   | Display the contents and configuration of the selected bank set. |
| **activate** | Switch the active bank set to the one currently selected. |

---

## Detailed Usage

### bankset create

Create a fresh bank set and automatically set it as the active one.

- **`description`** *(optional, `str`)* – A human‑readable description for the new bank set.  
  - If omitted, the bank set is created with an empty description.

**Example**  
```
bankset create "front light dimmers"
```

## See Also
`select` command for switching slected bankset.
