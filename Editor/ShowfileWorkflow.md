---
title: Show File Basics
layout: default
---
# Building a show file

This document explains basic show file administration.

## Loading

Loading of a show file can be done using the *File* > *Load Showfile* entry from the menu. Alternatively, the hotkey `Ctrl+O` can be used. This action will pop up a dialog asking zou to specify the file you'd like to load. You can load any existing show file, however backups need their file ending renamed first.

<center>
<img width="300" height="200" alt="open-show-file" src="https://github.com/user-attachments/assets/d0ad034b-fe55-4cf3-b680-f6ced7c55f80" />
</center>

Loading other files, such as macro presets or stage layouts need to be done using the associated view. Once they're imported into a show file however, they will be opened together with them from the next time on.

## Store
Saving show files does not happen automatically. Therefore it is best, to hit `CTRL+S` every now and then. This action can also be triggered by selecting *File* > *Save Showfile* from the menu bar. Upon first save of a show file, the editor will ask you where to store the show file and will use that location in the future as well. If you'd like to save the file somewhere differently (for example if you just prepared a base show and would like to have multiple versions of that file, one for each act), select *File* > *Save Showfile As* or press `CTRL+Shift+S` on your keyboard. Every time you save the show, the last state will be moved to a backup file and the old backup will be erased.

## Apply
A show file with a fully defined filter graph can be appiled to fish. In case of errors, a dialog will show up listing the details. Error messages can be recalled in the debug view later on.
If everything went fine, the status indicator will switch to "Showfile Applied".

## Settings
The settings menu can be opened by selecting *File* > *Settings* from the menu. This dialog lets you choose some generic properties regarding your show file and editor behavior. Please keep in mind, that these settings are local to your show file. Therefore it is a good habit to set them right from the beginning.

<center>
<img width="402" height="353" alt="settings" src="https://github.com/user-attachments/assets/cc7b3570-6340-483d-86e6-d7066a4c86f1" />
</center>

