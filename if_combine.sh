#!/bin/bash

# Check if the content of files are the same
# keep only one if they are the same

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)

if [[ $a = $b ]] && [[ $a = $c ]] ; then
	rm file2.txt file3.txt
else
	echo "Files aren't the same"
fi
