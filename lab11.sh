#!/bin/bash
. ~/bin/CS225/functionLibrary.sh

trap "STOP" SIGINT

Directory=$1
TimeFiles=$(find $Directory -maxdepth 1)
Scriptname=${0##*/}

while getopts :fh opt ;do
		case $opt in
			f) FORCE='true' ;;
			h) echo "Usage: $Scriptname [options]"
			   echo " "
			   echo "Options:"
			   echo " -f	forces files to be moved, not copied"
			   echo " -h	prints out help page"
			   exit 0
			   ;;
			*) echo "Invalid Option: Try 'Scriptname -h' for more information."	
		esac
done	

for Line in $TimeFiles ;do
	if [ ! -d $Line ] ;then
		timestamp $Line
		LOCATION="${Directory}/${YEAR}/${MONTH}/${DAY}"
		checkDir "$LOCATION"
		echo "Processing: ${Line##*/}"
		if [ -z $FORCE ] ;then
			copy "$Line" "$LOCATION"
		else
			move "$Line" "$LOCATION"
		fi
	fi
done
