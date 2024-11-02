#!/bin/bash

read -p "Enter a first number: " first
read -p "Enter a second number: " second

if [[ $first -gt $second ]]; then
	echo "$first is greater than $second"
elif [[ $first -lt $second ]]; then
	echo "$first is less than $second"
else
	echo "$first is equal to $second"
fi
