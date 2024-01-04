# Filter Preprocessing

The GUI performs a range of preprocessing steps, prior to sending a show to fish. These steps are explained within this document.

## Order of operations
The GUI carries out these operations in the following order:

1. Resolve virtual filters
2. Instantiation of constants for default parameters of filters
3. Perform filter optimizations
4. Pack the show file for fish

## Resolving virtual filters
TODO explain how virtual filter resolution works.

## Placement of constants
The GUI iterates over all left empty inputs of filters and creates constant filters for these ports. It does so by creating one constant per tuple of data type and value, then reuses them for each occurance.

## Filter optimizations
The following optimizations are performed:
 * Grouping of universe outputs
 * Consolidation of time reference filters
 * Consolidation of global brightness fader input

## Show file packing
The GUI encodes only the parts of the show file that are actually relevant for fish. This excludes most of the meta data as well as virtual filter definitions.

TODO explain this in greater detail.
