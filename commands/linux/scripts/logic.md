# List operators

## Options

Options are used to check the status of a file or string.

- `-a file` = True if file exists
  - Example: `if [ -a /etc/passwd ]; then echo "File exists"; fi`
- `-b file` = True if file exists and is a block special file
  - Example: `if [ -b /dev/sda ]; then echo "Block special file exists"; fi`
- `-c file` = True if file exists and is a character special file
- `-d file` = True if file exists and is a directory
- `-e file` = True if file exists
- `-f file` = True if file exists and is a regular file
- `-r file` = True if file exists and is readable
- `-w file` = True if file exists and is writable
- `-x file` = True if file exists and is executable
- `-d directory` = True if directory exists

## Operators

- `&`: allows for asyc execution of commands: `async command1 & command2`
- `;`: allows for sequential execution of commands: `command1; command2`
  - both commands are executed regardless of the success of the first
- `&&`: allows for sequential execution of commands: `command1 && command2`
  - second command is executed only if the first command is successful
- `||`: allows for sequential execution of commands: `command1 || command2`
  - second command is executed only if the first command is not successful
- ternary operator: `command1 && command2 || command3`
  - if command1 is successful, command2 is executed, otherwise command3 is executed

## Test command + Conditional Operators [[ condition ]]: the space between the brackets and the condition is required

- [ ] simple
- [[  ]]
  - advanced: allows for pattern matching, logical operators, etc

Compare different information types:
`echo $?` = shows exit status of the last command: 0 = success, 1 = failure

- integer comparison: `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`, `geq`
- decimal comparison:
- string comparison: `=, !=, <, >`
  - `-z string` = True if string is empty
  - `-n string` = True if string is not empty
- file comparison: `-nt`, `-ot`, `-ef`
  - `-a file` = True if file exists
    - Example: `if [[ -a /etc/passwd ]]; then echo "File exists"; fi`
  - `-b file` = True if file exists and is a block special file
    - Example: `if [[ -b /dev/sda ]]; then echo "Block special file exists"; fi`
  - `-c file` = True if file exists and is a character special file
  - `-d file` = True if file exists and is a directory
  - `-e file` = True if file exists
  - `-f file` = True if file exists and is a regular file
  - `-r file` = True if file exists and is **readable**
  - `-w file` = True if file exists and is **writable**
  - `-x file` = True if file exists and is **executable**
  - `-d directory` = True if directory exists
  - `-nt file1` = True if file1 is newer than file2
  - `-ot file1` = True if file1 is older than file2
  - `-ef file1` = True if file1 is the same file as file2

## if statements

  starts with `if` and ends with `fi`

```bash
if [[ condition ]]; then echo "condition is true"; fi
```

```bash
if [[ condition ]]; then
  echo "condition is true"
else
  echo "condition is false"
fi
```

```bash
if [[ condition ]]; then
  echo "condition is true"
elif [[ condition ]]; then
  echo "condition is true"
else
  echo "condition is false"
fi
```

## case statements

Add `$` and `""` to the variable

starts with `case` and ends with `esac`

```bash
case "$variable" in
  pattern1)
    echo "pattern1"
    ;;
  pattern2)
    echo "pattern2"
    ;;
  *)
    echo "default"
    ;;
esac
```
