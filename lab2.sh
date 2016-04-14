#!/bin/bash

echo "Please enter a number: "
read Number

# Remove any leading zeros
Num=$(echo $Number | sed 's/^0*//')

# Confirm a number was entered and output if the number is even or odd
expr $Num + 1 1> /dev/null
if [[ $? = 0 ]] ; then
           echo "$Num is a number"

	rem=$(( $Num % 2 ))
     	if [[ $rem -eq 0 ]] ; then
           echo "$Num is a even number"

     	else
           echo "$Num is a odd number"
	fi

else  
	echo "$Num is not a number"

fi

