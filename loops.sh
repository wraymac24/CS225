#!/bin/bash

#LIST="1,2,3,4,5"
#OLDIFS="$IFS"
#IFS=$','

#for item in $LIST
#do
#	echo "Item $item"
#done

#IFS="$OLDIFS"

PWDFILE=$(cat /etc/passwd)

IFS=$'\n'
for line in $PWDFILE ;do
	if [[ line =~ root* ]] ;then
		break #also use continue
	fi
	#echo "line"
done

#done\

#for i in $(seq 1 1000) ;do
#	for j in $(seq 1 1000) ;do
#	    grep root /etc/passwd | awk -F: '{print $6}'
#	done
#done

#NUM=0
#until [ "$NUM" -ge '10' ] ;do
#	if [[ $NUM -eq 1 ]] ;then
#	   echo "Ran this $NUM time"
#	else 
# 	   echo "Ran this $NUM times"
#	fi
#	(( NUM++ ))
#done

#while true ;do
#	echo "Hey"
#done

# C programming in bash
#for ( i = 0; i < 10; i++ ) ;do
#done
 

