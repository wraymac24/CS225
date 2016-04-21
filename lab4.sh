#!/bin/bash

echo "Please enter a number: "
read Number

#expr $Num + 1 1> /dev/null
if [[ $Number =~ ^[+]?[-]?[0-9]+$ ]] && [[ $Number > 50 && $Number <100 ]] ;then
           echo "That is successful"
else
	   echo "The number you entered is not in range."
fi
echo "Please enter a number between 50 - 100: "
read NUM
CLEAN=$ (echo $NUM | sed 's/[.].*$//')

if [[ $CLEAN =~ ^[0-9]+$ && $CLEAN -gt '49' && $CLEAN -lt '101' ]] ;then
	echo "Good job, ${NUM} is a number between 50 - 100."
else
	echo "Sorry ${NUM} is not a number between 50 - 100."
