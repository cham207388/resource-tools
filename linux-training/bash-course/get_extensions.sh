#/bin/bash

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname 

PS3="Please select your phone type: "
select phone in headset handheld
do
	echo "Your phone type is: $phone"
	break
done

PS3="Please select your department: "
select department in finance sales customer service engineering
do
	echo "Your department is: $department"
	break
done

read -p "What is your extension number?: " -n 4 extension
echo
read -p "What access code would you like to use when dialing in?: " -s -n 4 access
echo
echo "$firstname,$lastname,$extension,$access,$phone,$department" >> extension.csv

