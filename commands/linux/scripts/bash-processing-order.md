# Bash Processing Order

5 Steps of Command line processing

1. Tokenization: Bash breaks the command line into tokens.
trol Operators: `;` `;;` `&` `&&` `|` `||` `;&` `;;&` `|&` `Newline`
   - Redirection Operators: `>`, `>>`, `<`, `<<`, `>&`, `>&-`, `>|`, `<<-`
   - Word Splitting: `IFS`
   - Filename Expansion: `*`, `?`, `[...]`

2. Command Identification:
   - Simple Command: `command [arguments...]`
   - Compound Command: mostly in `if`, `while`, `for`, `until` gives bash it's programming constructs

3. Expansion

    There are 4 stages of expansion: arranged in order of precedence.
    Remember BODMAS

    1. Stage 1: Brace Expansion: `{start..end..increment}`: `{a,b,c}`
    2. Stage 2:
        - Parameter Expansion: `${!name[@]}`
        - Arithmetic Expansion: `$(())`
        - Command Substitution: `$(command)`
        - Tilde Expansion: `~`

    3. Stage 3: Word Splitting: a shell mechanism to split the result of some **unquoted** expansions
      nto separate words: only (*parameters, command substitutions, and arithmetic expansions*)
        - `IFS` (Internal Field Separator) variable (space, tab, newline)
        - `echo "${IFS@Q}"`
        - change `IFS` to something else to change where splitting occurs. e.g a comma
        - `IFS=","`

    4. Stage 4: Globbing (Filename Expansion)
        - `*` matches any string
        - `?` matches any single character
        - `[` and `]` match any character between them: file[abc].txt = filea.txt, fileb.txt, filec.txt
        - `[...]`
        - `!(pattern-list)`
        - `?(pattern-list)`
        - `*(pattern-list)`
        - `+(pattern-list)`
        - `@(pattern-list)`

4. Quote Removal:

    Quoting: Quoting is used to remove special meaning from special characters so that they can be interpreted literally.

    - `\` removes the special meaning of the next character if it means something
      - `echo \$HOME` = $HOME
    - `"` removes all meaning of characters except `$` and `\`
      - `echo "$HOME"` = /home/user
    - `'` removes all meaning of characters except `'`
      - `echo '\$HOME'` = \$HOME

5. Redirection
    Streams:
    - `0` stdin
    - `1` stdout
    - `2` stderr

    Operators:

    - `>` redirects output to a file
        - `echo "Hello, World!" > hello.txt` = creates or overwrites hello.txt with "Hello, World!"
    - `>>` appends output to a file
        - `echo "Hello, World!" >> hello.txt` = appends "Hello, World!" to hello.txt
    - `<` redirects input from a file
        - `cat < hello.txt` = displays contents of hello.txt
    - `2>` redirects stderr to a file
        - `ls no-such-file 2> errors.txt` = creates or overwrites errors.txt with error message
    - `&>` redirects both stdout and stderr to a file
        - `some-command &> output.txt` = redirects both stdout and stderr to output.txt
        - `cd /root &> /dev/null` = suppresses error message (no output to terminal)
