#!/bin/bash

select day in mon tues wed thur fri sat sun;
do
	echo "The day of the week is $day"
break
done
