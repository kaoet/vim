Cheetsheet
==========

[TOC]

## General

| Key                                                                 | Action            |
|---------------------------------------------------------------------|-------------------|
| <kbd>^ Control</kbd>+<kbd>W</kbd> <kbd>^ Control</kbd>+<kbd>W</kbd> | undo newline      |
| `zM`                                                                | close all folding |
| `zR`                                                                | open all folding  |
| `zo`                                                                | open folding      |
| `zc`                                                                | close folding     |
| `.`                                                                 | repeat            |

## FZF

| Key                               | Action    |
|-----------------------------------|-----------|
| <kbd>^ Control</kbd>+<kbd>P</kbd> | Find file |

## EasyMotion

| Key             | Action               |
|-----------------|----------------------|
| `,f<char>`      | go to `<char>`       |
| `s<char><char>` | go to `<char><char>` |
| `,L`            | go to line           |
| `,w`            | go to word           |

## surround

### Normal mode

| Key             | Action                                              | Example                |
|-----------------|-----------------------------------------------------|------------------------|
| `ds<what>`      | delete surrounding `<what>`                         | `ds[` `dst` (html tag) |
| `cs<old><new>`  | change surrounding `<old>` into `<new>`             | `cs"'`                 |
| `ys<obj><what>` | add a surrounding `<what>` to `<obj>`               | `ysaw"` `ysstp>`       |
| `yS<obj><what>` | add a surrounding `<what>` to `<obj>` with newlines | `ySS{`                 |

### Visual mode

| Key       | Action                     | Example |
|-----------|----------------------------|---------|
| `S<what>` | add a surrounding `<what>` | `S"`    |

### Insert mode

| Key                                                                          | Action                                   | Example                                                                 |
|------------------------------------------------------------------------------|------------------------------------------|-------------------------------------------------------------------------|
| <kbd>^ Control</kbd>+<kbd>S</kbd> `<what>`                                   | add a surrounding `<what>`               | <kbd>^ Control</kbd>+<kbd>S</kbd> `"`                                   |
| <kbd>^ Control</kbd>+<kbd>S</kbd> <kbd>^ Control</kbd>+<kbd>S</kbd> `<what>` | add a surrounding `<what>` with newlines | <kbd>^ Control</kbd>+<kbd>S</kbd> <kbd>^ Control</kbd>+<kbd>S</kbd> `{` |

## UltiSnips

| Key                               | Action         |
|-----------------------------------|----------------|
| <kbd>Tab</kbd>                    | expand snippet |
| <kbd>^ Control</kbd>+<kbd>J</kbd> | jump forward   |
| <kbd>^ Control</kbd>+<kbd>K</kbd> | jump backward  |

## VIM Table Mode

### Normal mode

| Key        | Action                       | Example |
|------------|------------------------------|---------|
| `,tm`      | toggle table mode            |         |
| `,tdc`     | delete column                |         |
| `[\|`      | move left                    |         |
| `]\|`      | move right                   |         |
| `{\|`      | move up                      |         |
| `}\|`      | move down                    |         |
| `<sth>i\|` | do `<sth>` inside cell       | `ci\|`  |
| `<sth>a\|` | do `<sth>` to the whole cell | `da\|`  |

### Insert mode

| Key    | Action               |
|--------|----------------------|
| `\|\|` | fill horizontal line |
