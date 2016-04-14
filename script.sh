#!/bin/bash

#echo "Enter your name"
#read NAME

#echo "Hello ${NAME}"

#FILE="$(cat /etc/passwd)"

#echo "$(FILE)"

#USERNAME="$(whoami)"

#echo "$(USERNAME)"

echo "Please enter your name"
read NAME

if [[ "$NAME" = 'bob' ]] ;then
       echo "Hello bob"
elif [[ "$NAME" = 'ted' ]] ;then
       echo "Hello ted"
else
       echo "I don't know you"
fi

#grep root /etc/passwd
#RESULT=$?

if grep root /etc/passwd | awk '{print $1}' ; then
        echo "root is there"
else
        echo "root isn't"
fi

