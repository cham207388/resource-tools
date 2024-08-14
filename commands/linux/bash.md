# Type of shells

Gnome
KDE
sh
bash

cat /ect/shells

    /dev/null (anything into this file will be junk)

## variable

File1

    #!/bin/bash

    name=Alhagie
    son_name='EC'

    echo "My name is $name"
    echo "My son is $son_name"

## Input/Output

File2

    #!/bin/bash
    a=`hostname`
    echo My server name is: $a
    echo Welcome to scripting.
    echo
    echo What is your name?
    read name_input
    echo
    echo Hello $name_input

## If-then script

    # !/bin/bash

    count=100

    if [ $count -eq 100 ]; then
        echo "100"

    # Check if count is greater than 100
    elif [ $count -gt 100 ]; then
        echo "count is greater"

    # Check if count is less than 100
    elif [ $count -lt 100 ]; then
        echo "count is less"
    fi

## For loop

    #!/bin/bash

    # Simple for loop example

    for i in {1..5}
    do
        echo "Iteration $i"
    done

## Do while

    # !/bin/bash

    # Initialize the counter variable
    count=1

    # This will execute the loop body at least once and then check the condition

    while :
    do
        echo "Iteration $count"
        ((count++))

        # Break the loop if count is greater than 5
        if [ $count -gt 5 ]; then
            break
        fi
    done
