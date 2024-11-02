#!/bin/bash

while read -r line ; do
	mkdir "$line"
done < "$1"
