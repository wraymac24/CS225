#!/bin/bash

MEDIAXML=$(cat ~/medialab/media.xml | grep "\.mp" | awk -F'>' '{print $2}' | awk -F'<' '{print $1}' )
MEDIALAB=~/medialab
 
FOUND='0'
LOST='0'

echo "Files not in media.xml" > notxml.txt
echo "Files not in medialab" > nomedialab.txt

for LINE in $MEDIAXML ;do
		if [[ -e $MEDIALAB/$LINE ]] ;then
			echo $LINE >> notxml.txt
			(( FOUND++ ))
		else
			echo $LINE >> nomedialab.txt
			(( LOST++ ))
		fi
done

echo "Files in media.xml that are NOT listed in medialab directory: $LOST"
echo "Files in medialab directory that are NOT listed in media.xml: $FOUND"
cat notxml.txt
cat nomedialab.txt	
rm -f notxml.txt
rm -f nomedialab.txt


 
