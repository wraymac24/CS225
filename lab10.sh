#!/bin/bash

cleanup()
{
	rm -f $tmp
	exit
}

trap "cleanup" SIGINT

VAR=$(ls -1Ra /*)
tmp=$(mktemp)
COUNT="0"

for line in $VAR ;do
	if [[ ( "$line" == "." ) || ( "$line" == ".." ) ]] 
	then :
	else 
		((COUNT++))
		echo "File "$COUNT": "$line""
	fi
done >> $tmp







