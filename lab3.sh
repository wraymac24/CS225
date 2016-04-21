#!/bin/bash

#if [[ "$USER" -eq "root" ]] ; then
#	echo "It is insecure to run this script as root!!"
#	exit
#elif [[ "$UID" -lt "500" ]] ; then
#	echo "Your user id is less than 500, unable to run script."
#	exit
#fi


#home=$(grep $"USER" /etc/passwd | cut -f6 -d:)
#if [ $? = 0 ] ; then
#	dsize=$(du -sh ~ | awk -F' ' '{print $1 }')
#	echo ""
#	echo "$home is your home directory"
#	echo "Home directory does not exist."
#elif
#	dsize=$(du -sh ~ | awk -F' ' '{print $1 }')
#	echo "$dsize"
#fi

ID=$( id -u )

if [[ $ID -eq 0 ]] ;then
	echo "It is insecure to run this script as root!!"
	exit

	else
		if [[ $ID -lt 500 ]] ;then
			exit

		else
			if [[ $ID -gt 499 ]] ;then
			cat /etc/passwd > /dev/null
				if [[ $? = 0 ]] ;then
				HOM=$( grep $USER /etc/passwd | cut f6 -d: )
				dsize=$( du -sh $HOM | awk -F' ' '{print $1 }')
					echo $dsize
					fi
				fi
			fi
fi
