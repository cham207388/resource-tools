# Vim Shortcut Commands

## Basic Commands

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Open Vim                        | `vim filename`         |
| Save and exit                   | `:wq` or `ZZ`          |
| Save without exiting            | `:w`                   |
| Quit without saving             | `:q!`                  |
| Exit (prompts for save)         | `:x`                   |
| Enter command mode              | `Esc`                  |
| Enter insert mode               | `i`                    |
| Enter append mode               | `a`                    |
| Enter visual mode               | `v`                    |
| Enter visual line mode          | `V`                    |
| Enter visual block mode         | `Ctrl + v`             |

## #Navigation

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Move cursor left                | `h`                    |
| Move cursor down                | `j`                    |
| Move cursor up                  | `k`                    |
| Move cursor right               | `l`                    |
| Move to beginning of line       | `0`                    |
| Move to end of line             | `$`                    |
| Move to next word               | `w`                    |
| Move to previous word           | `b`                    |
| Move to first character of next word | `e`              |
| Move to beginning of file       | `gg`                   |
| Move to end of file             | `G`                    |
| Move to line number n           | `nG` or `:n`           |
| Move forward by screenful       | `Ctrl + f`             |
| Move backward by screenful      | `Ctrl + b`             |

## Editing

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Delete character under cursor   | `x`                    |
| Delete character before cursor  | `X`                    |
| Delete word                     | `dw`                   |
| Delete line                     | `dd`                   |
| Cut text (in visual mode)       | `d`                    |
| Copy text (in visual mode)      | `y`                    |
| Copy entire line (in visual mode)      | `yy`                    |
| Paste text                      | `p`                    |
| Undo                            | `u`                    |
| Redo                            | `Ctrl + r`             |
| Replace character under cursor  | `r`                    |
| Replace text (in visual mode)   | `R`                    |
| Change text until end of word   | `ce`                   |
| Change text until end of line   | `C`                    |
| Insert new line below cursor    | `o`                    |
| Insert new line above cursor    | `O`                    |

## Searching

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Search forward                  | `/pattern`             |
| Search backward                 | `?pattern`             |
| Repeat search forward           | `n`                    |
| Repeat search backward          | `N`                    |
| Search and replace (current line) | `:s/old/new/g`       |
| Search and replace (whole file) | `:%s/old/new/g`        |

## Indentation

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Indent line                     | `>>`                   |
| Unindent line                   | `<<`                   |
| Indent selected text (in visual mode) | `>`              |
| Unindent selected text (in visual mode) | `<`            |

## Buffers and Windows

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Open a new file                  | `:e filename`          |
| Switch to next buffer            | `:bnext` or `:bn`      |
| Switch to previous buffer        | `:bprev` or `:bp`      |
| Close current buffer             | `:bd`                  |
| Split window horizontally        | `:split` or `:sp`      |
| Split window vertically          | `:vsplit` or `:vsp`    |
| Move to next window              | `Ctrl + w + w`         |
| Move to previous window          | `Ctrl + w + W`         |
| Resize window                    | `Ctrl + w + <direction>` |

## Miscellaneous

| Action                          | Shortcut               |
| ------------------------------- | ---------------------- |
| Show line numbers               | `:set number`          |
| Hide line numbers               | `:set nonumber`        |
| Toggle line numbers             | `:set number!`         |
| Enable syntax highlighting      | `:syntax on`           |
| Disable syntax highlighting     | `:syntax off`          |
| Repeat last command             | `.`                    |
| Open command history            | `q:`                   |
| Open search history             | `q/`                   |

These shortcuts should help you navigate and edit text more efficiently in Vim. Remember that practice is key to becoming proficient with these commands.
