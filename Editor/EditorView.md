# Editor View

The editor consists out of four primary widgets.

<img width="1690" height="903" alt="image" src="https://github.com/user-attachments/assets/631f357a-31dd-4802-b157-b0accea080b9" />

1. An action bar giving access to
    * Adding new scenes
    * Editing the current selected item
    * Refreshing the show browser
    * Applying the current show file state to fish
2. The show browser
3. A tab view allowing to switch between current open editors
4. A currently displayed editor page

## Show browser

The show browser allows you to navigate the content of the show file.
It provides gloabal show content (`Show`), access to fixtures, sorted by universes (`Universes`) and content of the current scene (`Current Scene`).

### Global Structure

The show file is structured by global items, such as scenes, macros, event mapping and media objects.
Within global objects a hirachy exists.
Most notably, scenes are structured by their contained filter pages, UI pages as well as their fader banks.

<img width="423" height="182" alt="image" src="https://github.com/user-attachments/assets/bea1812c-038f-40d0-b989-179849779325" />

Right clicking any items opens up a context menu providing appropriate options. Nesting filter pages is possible.

<img width="1920" height="1080" alt="20250721_09h54m31s_grim" src="https://github.com/user-attachments/assets/425e10d5-4c3e-41ae-867c-1f7405e8ca05" />

TODO explain remaining structures

## Editors

There a multiple different editors, opened depending on the content.

### Filter Page Editor

### UI Editor

### Fader Editor

### Media Management Editor

### Scene Default editor
A scene has default values for the universe that are applied upon switching to the scene.
This editor allows you to set them.
Basically, this is editor page behaves like the quick console mode, except that it does not allow you to map channels to faders in order to prevent accidents and confusion.
