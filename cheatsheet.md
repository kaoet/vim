Cheetsheet
==========

[TOC]

## General

| Key                         | Action                |
|-----------------------------|-----------------------|
| <kbd>^W</kbd> <kbd>^W</kbd> | undo newline          |
| `zM`                        | close all folding     |
| `zR`                        | open all folding      |
| `zo`                        | open folding          |
| `zc`                        | close folding         |
| `.`                         | repeat                |
| `%`                         | jump to matching pair |
| <kbd>^B</kbd>               | next page             |
| <kbd>^F</kbd>               | previous page         |

## FZF

| Key           | Action      |
|---------------|-------------|
| <kbd>^P</kbd> | find file   |
| <kbd>^E</kbd> | find buffer |

## Ranger.vim

| Key  | Action      |
|------|-------------|
| `,f` | open ranger |

## buffers

| Key                        | Action             |
|----------------------------|--------------------|
| `,[1-9]`                   | go to buffer n     |
| `,h`                       | previous buffer    |
| `,l`                       | next buffer        |
| <kbd>^E</kbd> <kbd>↩</kbd> | last edited buffer |
| `:bd`                      | close buffer       |


## EasyMotion

| Key             | Action               |
|-----------------|----------------------|
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

| Key                                  | Action                                   | Example                         |
|--------------------------------------|------------------------------------------|---------------------------------|
| <kbd>^S</kbd> `<what>`               | add a surrounding `<what>`               | <kbd>^S</kbd> `"`               |
| <kbd>^S</kbd> <kbd>^S</kbd> `<what>` | add a surrounding `<what>` with newlines | <kbd>^S</kbd> <kbd>^S</kbd> `{` |

## UltiSnips

| Key             | Action         |
|-----------------|----------------|
| <kbd>⇥</kbd>    | expand snippet |
| <kbd>^J</kbd>   | jump forward   |
| <kbd>^K</kbd>   | jump backward  |
| `:Rg <keyword>` | ripgreping     |

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
