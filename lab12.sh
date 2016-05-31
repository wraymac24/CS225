#!/bin/bash
. ~/bin/CS225/functionLibrary.sh

trap "STOP" SIGINT

oldIFS=$IFS
IFS=$'\n'

declare -a FNAME LNAME COMPANY STREET CITY STATE ZIP HPHONE WPHONE EMAIL WEBURL 
SEARCH="$(cat /var/share/CS225/addresses.csv)"
COUNTER="0"

for LINE in $SEARCH ;do

LINE=${LINE#\"}
FNAME[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
LNAME[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
COMPANY[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
STREET[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
CITY[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
LINE=${LINE#*,\"}
STATE[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
ZIP[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
HPHONE[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
WPHONE[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
EMAIL[$COUNTER]=${LINE%%\"*}
LINE=${LINE#*,\"}
WEBURL[$COUNTER]=${LINE%%\"*}

echo \""${FNAME[$COUNTER]}"\",\""${LNAME[$COUNTER]}"\",\""${COMPANY[$COUNTER]}"\",\""${STREET[$COUNTER]}"\",\""${CITY[$COUNTER]}"\",\""${COUNTY[$COUNTER]}"\",\""${STATE[$COUNTER]}"\",\""${ZIP[$COUNTER]}"\",\""${HPHONE[$COUNTER]}"\",\""${WPHONE[$COUNTER]}"\",\""${EMAIL[$COUNTER]}"\",\""${WEBURL[$COUNTER]}"\"
((COUNTER++))
done

#echo ${FNAME[@]} , ${LNAME[@]} 
#echo "First Name:	$FNAME"
#echo "Last Name:	$LNAME"
#echo "Company:	$COMPANY"
#echo "Street:		$STREET"
#echo "City:		$CITY"
#echo "State:		$STATE"
#echo "Zip Code:	$ZIP"
#echo "Home Phone:	$HPHONE"
#echo "Work Phone:	$WPHONE"
#echo "Email:		$EMAIL"
#echo "Web Page:	$WEBURL"

IFS=$oldIFS
