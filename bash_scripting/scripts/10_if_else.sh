#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -gt 40 ]]
then
	echo "You are passed."
else
	echo "You are failed."
fi
