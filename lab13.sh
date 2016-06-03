#!/bin/bash

. ~/bin/CS225/functionLibrary.sh
trap "STOP" SIGINT

echo "Please enter appropriate information:"
read INPUT

if [[ -z $INPUT ]] ;then
	echo "Incorrect information was given, please enter a SSN#, Phone#, CreditCard# or IP#."
	exit
fi 

#Social Security Number Input
check_ssn()
{
if [[ $INPUT =~ ^[[:digit:]]{3}-?[[:digit:]]{2}-?[[:digit:]]{4}$ ]] ;then
		echo "$INPUT is a Social Security Number."
		return "0"
	else
		echo "Not a Valid Social Security Number."
		return "1"
fi 
}

#Phone Number Input
check_pn()
{
if [[ $INPUT =~ ^[0-1]?[-(]?[1-9][[:digit:]]{2}[-)]?[[:digit:]]{3}-?[[:digit:]]{4}$ ]] ;then
		echo "$INPUT is a Valid Phone Number."
		return "0"
	else
		echo "Not a Valid Phone Number."
		return "1"
fi
}

#IP Address Input
check_ip()
{
if [[ $INPUT =~ ^([2][5][0-5][.]|[2][0-4][0-9][.]|[1][0-9]{2}[.]|[1-9]?[0-9][.]){3}([2][5][0-5]|[2][0-4][0-9]|[1][0-9]{2}|[0-9]?[0-9])$ ]] ;then
		echo "$INPUT is a Valid IP Address."
		return "0"
	else
		echo "Not a Valid IP Address."
		return "1"
fi 
}

#Credit Card Number Input
check_ccn() 
{
if [[ $INPUT =~ ^[[:digit:]]{4}-?[[:digit:]]{4}-?[[:digit:]]{4}-?[[:digit:]]{4}$ ]] ;then
		echo "$INPUT is a Valid Credit Card Number."
		return "0"
	else
		echo "Not a Valid Credit Card Number."
		return "1"
fi
}

check_ssn
check_pn
check_ip
check_ccn
