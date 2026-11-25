# Text Diff Utils

A ColdBox module for comparing text strings with the `diff_match_patch` Java library.

## Requirements

- ColdBox
- Adobe ColdFusion 9.02+ or Lucee 4.5+

## Installation

Install with CommandBox:

```bash
box install diff
```

## Usage

Get the module model from the `diff` namespace:

```cfml
var diff = getInstance( "Diff@diff" );
```

Use `diff()` to return a list of text diff operations:

```cfml
var operations = diff.diff( "Original text", "Updated text" );
```

Use `getDiffHTML()` to output the differences with `<ins>` and `<del>` tags:

```cfml
diff.getDiffHTML( "Original text", "Updated text" );
```
