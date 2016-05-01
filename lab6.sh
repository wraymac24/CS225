#!/bin/bash

rm -f nomediaxml.txt
rm -f nomedialab.txt


MEDIADIR=$(ls /root/medialab/* | awk -F'/' '{print $4}' )
 
NOTXML='0'

echo "Files not in media.xml: " > nomediaxml.txt

for MEDIA in $MEDIADIR; do
	if ! grep -Fq "$MEDIA" "/root/medialab/media.xml" ;then
		echo $MEDIA >> nomediaxml.txt
		(( NOTXML++ ))
	fi
done

MEDIAXML=$(cat /root/medialab/media.xml | grep "\.mp" | awk -F'>' '{print $2}' | awk -F'<' '{print $1}' | sort -u )
MEDIALAB=~/medialab

LOST='0'

echo "Files not in medialab: " > nomedialab.txt

for LINE in $MEDIAXML ;do
	if [[ ! -e $MEDIALAB/$LINE ]] ;then
		echo $LINE >> nomedialab.txt
		(( LOST++ ))
	fi
done

echo "Files in medialab that are NOT listed in media.xml: $NOTXML"
echo "Files in media.xml that are NOT listed in medialab directory: $LOST"
cat nomediaxml.txt
cat nomedialab.txt
#rm -f nomediaxml.txt	
#rm -f nomedialab.txt


 
