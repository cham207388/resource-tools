# Check shell type

```bash
echo $SHELL
```

- MacOS: /bin/zsh
- CentOS: /bin/bash

- [chmod calculator](https://chmod-calculator.com/)

## Add folder to PATH

### Appending to PATH

```bash
export PATH="$PATH:/path/to/folder"
```

### Prepending to PATH

```bash
export PATH="/path/to/folder:$PATH"
```

## Shell Variables

### Bourne Shell Variables (shell variable)

10 in total

- PATH
- HOME
- SHELL
- USER
- HOSTNAME
- HISTSIZE
- LOGNAME
- MAIL
- TERM
- PS1
- PS2
- PS3 (select command's prompt)
  - say write a prompt for select command: What is the day of the week?

### Bash Shell Variables (Bourne Again Shell=BASH)

95 in total

vim set line number

- clear cache

```bash
hash -r
```
