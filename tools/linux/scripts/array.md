# Arrays

```bash
array=("value1" "value2" "value3")
```

Indexes start at 0.

to get all values:

```bash
echo "${array[@]}"
```

to add a value:

```bash
array+=("value4")
```

to delete a value:

```bash
unset array[1]
```

to delete the entire array:

```bash
unset array
```

to get all indexes:

```bash
echo "${!array[@]}"
```

to get the index of a value:

```bash
echo "${!array[1]}"
```

to get the length of the array:

```bash
echo "${#array[@]}"
```

to change the value of an index:

```bash
array[1]="value5"
```

## readarray

Reads from a file or stdin into an array.

```bash
readarray -t array < <(ls /etc)
```

Shows the array invisible characters.

```bash
echo "${array[@]@Q}"
```


