# Bash Script rules

- Begin with `#!/bin/bash`
  - Use `#!` to specify the script interpreter
  - Use `#` for comments
- Statement(s)
- End with exit code
  - `exit 0` for success
  - `exit 1` for failure
  - `exit 2` for syntax error

## **Parameter expansion tricks**: {paramter}

- `echo ${parameter:-word}`
  - If parameter is set, use it; otherwise, use word

Examples
name="John"

- First character to lowercase: `echo ${name,}`
- First character to uppercase: `echo ${name^}`
- All characters to lowercase: `echo ${name,,}`
- All characters to uppercase: `echo ${name^^}`
- Check length of string: `echo ${#name}`
- Slice string: `echo ${name:+start:length}` or `echo ${name: -start:length}`

## **Command substitution**: $(command)

- `time=$(date +%s)`

## **Arithmetic expansion**: $((expression))

Examples

- `echo $((10 + 5))`
- `echo $((10 - 5))`
- `echo $((10 * 5))`
- `echo $((10 / 5))`
- `echo $((10 % 5))`

### *bc* = bash calculator (without `$((...))`)

- `echo "10 + 5" | bc`
- `echo "10 - 5" | bc`
- `echo "10 * 5" | bc`
- `echo "10 / 5" | bc`
- `echo "10 % 5" | bc`

## **Tilde expansion:** ~

- `echo ~`
- `echo ~username`

### Switch back and forth

- `cd -`
- `cd ~-`

- `echo $PWD`
- `echo $OLDPWD`

## **Brace expansion**: {start..end..increment}

Examples
Spaces changes the behavior

- `echo {1,2,3,4}` list of arguments
- `echo {1..10}` range of numbers
- `echo {a..z}` range of letters
- `echo {10..1}` reverse range of numbers
- `echo {10..1..2}` reverse range of numbers with increment

## Resources

- install tldr
  - install node
  - `npm install -g tldr`

## command types

- `type -a command` = shows if the command is an alias, built-in, or a file
- `type command` = similar to above

### help and man pages

internal commands

#### `help`

Some examples:

- `help cd`
- `help -d command` = shows the description of the command
- `help -m command` = shows the manual page of the command
- `help -s command` = shows the syntax of the command

external commands: `man` or `info`

#### `man`

- `man command`
- `man -k compress` = shows all commands that match the keyword (finding the command for compressing files)
- `man -K keyword` = shows all commands that match the keyword
- `man -f command` = shows the manual page of the command
- `man -w command` = shows the website of the command
- `man -l command` = shows the manual page of the command in the specified format

#### `info`

- `info` = shows the info page
- `info command` = shows the info page of the command
