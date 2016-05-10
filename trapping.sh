#!/bin/bash

trap "echo Goodbye David my friend" SIGINT


cleanup()
{
	rm -Rf $TMP
}

test()
{
	local FIRSTVAR="$VAR"
	echo  "$FIRSTVAR"
}

VAR="five"

GLOBAL=$(test)







