# Dummy Text

This plugin inserts the names of mountains in Vermont, U.S.A. for use as dummy
text. The names have been stripped of words like `Mountain`, `Mount`, and
`Peak`. Names with multiple words have been reduced to a single word with
concatenation.

Most of the names were scraped from [Wikipedia](https://en.wikipedia.org/wiki/List_of_mountains_of_Vermont).

## Usage

Make a visual selection. Then, call the `Vtmt` command (`:Vtmt`). In visual line
mode, the plugin will insert the names of Vermont mountains at the begging of
each selected line. In visual or visual block mode, the text will be inserted
along the left side of the selection.

`VtmtFill` will insert all of the mountain names on new lines. It's great for
filling up an empty file.

## Installation

Install with your favorite plugin manager. For example, with VimPlug...

Place this in your `init.vim`:

```
Plug 'njaczko/nvim-dummy-text'
```

Then, source `init.vim` and run `:PlugInstall`.
