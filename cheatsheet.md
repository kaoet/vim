Cheetsheet
====

## General
| Key|Action|
|---|---|
| <kbd>^ Control</kbd>+<kbd>W</kbd> <kbd>^ Control</kbd>+<kbd>W</kbd> | Undo newline |

## FZF
|Key |Action|
|---|---|
|<kbd>^ Control</kbd>+<kbd>P</kbd>| Find file |

## surround

### Normal mode

|Key|Action|Example|
|---|---|---|
| `ds<what>`| delete surrounding `<what>`| `ds[` `dst` (html tag) |
| `cs<old><new>`| change surrounding `<old>` into `<new>`| `cs"'` |
| `ys<obj><what>`| add a surrounding `<what>` to `<obj>`| `ysaw"` `ysstp>`
| `yS<obj><what>`| add a surrounding `<what>` to `<obj>` with newlines| `ySS{`

### Visual mode

|Key|Action| Example|
|---|---| --- |
| `S<what>`| add a surrounding `<what>`| `S"`

### Insert mode

|Key|Action| Example |
|---|---| --- |
| <kbd>^ Control</kbd>+<kbd>S</kbd> `<what>`| add a surrounding `<what>`| <kbd>^ Control</kbd>+<kbd>S</kbd> `"` |
| <kbd>^ Control</kbd>+<kbd>S</kbd> <kbd>^ Control</kbd>+<kbd>S</kbd> `<what>`| add a surrounding `<what>` with newlines| <kbd>^ Control</kbd>+<kbd>S</kbd> <kbd>^ Control</kbd>+<kbd>S</kbd> `{` |

