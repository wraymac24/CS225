#!/bin/bash

echo "Please enter a number"

read Num

if [[ "$Num" > '5' ]] ; then
      echo "Your number is greater than 5"

elif [[ "$Num" < '5' ]] ; then
        echo "Your number is less than 5"

elif [[ "$Num" -eq '5' ]] ; then
        echo "Your number is equal to 5"

fi
