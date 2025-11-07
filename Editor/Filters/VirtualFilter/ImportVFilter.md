---
title: Importing Filters
layout: default
---
# Import VFilter

Importing selected filters from different pages of the same scene is done using the import v-filter.
It features the `target` property indicating the filter to be imported. All requested ports are forwarded
to the desired target filter. Furthermore, the optional `rename_dict` property (items are separated by `,`, each
item is of the format `<original channel name>=<new channel name>`) allows the renaming of individual output channel names.
