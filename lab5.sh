#!/bin/bash

MEDIALIST=$(cat ~/medialab/medialist.txt)
MEDIALAB=~/medialab 
FOUND='0'
LOST='0'

rm -f foundfiles.text
rm -f lostfiles.text

for LINE in $MEDIALIST ;do
		if [[ -e $MEDIALAB/$LINE ]] ;then
			echo $LINE >> foundfiles.txt
			(( FOUND++ ))
		else
			echo $LINE >> lostfiles.txt
			(( LOST++ ))
		fi
done
echo "LOST - $LOST"
echo "FOUND - $FOUND"

	
 
