#!/bin/bash

shopt -s extglob
VAR="${1}"

if [[ $VAR = '/' ]] ;then
	echo "/"
	exit
fi

VAR="${VAR%%+(/)}"

if [[ -z $VAR ]] ;then
	echo "Expecting an argument"
		exit 1
fi
echo ${VAR##*\/}

