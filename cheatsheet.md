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

| Key     | Action           |
|---------|------------------|
| SPC f f | find file        |
| SPC b b | find buffer      |
| SPC ?   | find key mapping |

## Ranger.vim

| Key     | Action      |
|---------|-------------|
| SPC f r | open ranger |

## buffers

| Key       | Action             |
|-----------|--------------------|
| SPC [1-9] | go to buffer n     |
| SPC h     | previous buffer    |
| SPC l     | next buffer        |
| SPC TAB   | last edited buffer |
| SPC b d   | close buffer       |


## EasyMotion

| Key                | Action           |
|--------------------|------------------|
| SPC SPC w          | go forward word  |
| SPC SPC b          | go backward word |
| SPC SPC j          | go foward line   |
| SPC SPC k          | go backward line |
| SPC SPC f `<char>` | go find `<char>` |
| SPC SPC t `<char>` | go till `<char>` |

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
| <kbd>⇥</kbd>    | jump forward   |
| <kbd>⇧⇥</kbd>   | jump backward  |
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
