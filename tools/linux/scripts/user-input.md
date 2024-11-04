# Parameter

- positional parameters: `$1`, `$2`, `$3`... `${10}`
  - for for more than 9 parameters, use the parameter expansion `${N}`
- special parameters: `$#`, `$0`
  - `$#` = number of positional parameters
  - `$0` = name of the shell or script
  - `$@` = all positional parameters: `$1 $2 $3 ... $N`
  - `"$@"` = all positional parameters in a single string: `"$1" "$2" "$3" ... "$N"`
  - `$*` = same as `$@`
  - `"$*"` = uses the IFS value as a delimiter: `$1,$2,$3` if IFS=,

- read command
  - `read [-options] [variable]`
  - `-p` = prompt
  - `-s` = silent
  - `-a` = array variable
  - `-n` = read for n characters
  - `-t` = timeout

- select command
  - PS3 = select command's prompt
  - `select name [in list]`
  - `do ... done`
  - `select` loop displays a numbered list of choices and prompts the user to input a number corresponding to a choice
  - `select` is used in shell scripts to create a menu system
  - Example:
