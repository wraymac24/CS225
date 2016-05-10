#!/bin/bash

ScriptName=${0##*/}

while getopts :dvhl:n: opt ;do
	case $opt in
		d) set -x ;;
		v) verbose=true ;;
		h) echo "Usage: $ScriptName [options]"
		   echo	"	$ScriptName -n NAME"
                   echo "    	$ScriptName -l DIR"
                   echo ""
		   echo "Options:"
		   echo "	-d, turns on debugging"
		   echo "	-v, sets Verbose variable to true"
		   echo "	-h, prints out help message"
		   echo "	-n, takes name argument and prints message"
		   echo "	-l, lists the directory" ;;
		l) dir="$OPTARG"
		   	read -p "Would you like to display the $dir contents?" Answer
			case "$Answer" in
			[yY]|[yY][eE][sS]) ls $dir ;;
			[nN]|[nN][oO]) echo "Unable to proceed!!" ;;
			*) echo "Invalid answer, please enter yes or no:" 
				exit 1 ;;	
			esac
		;;
		n) name="$OPTARG" 
			echo "Hello $name" ;;
		\?) echo "Use $ScriptName --help for more information" 
		    exit ;;		
	esac
done
shift $(($OPTIND-1))
echo "$1"
echo "$2"
echo "$3"


