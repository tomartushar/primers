#!/bin/bash

FILE="`pwd`/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done
