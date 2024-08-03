#!/bin/bash

FILEPATH="`pwd`/xyz.txt"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "Creating file now"
	touch $FILEPATH
fi
