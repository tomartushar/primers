#!/bin/bash

read -p "What is your age? " age
read -p "What is your country? " country

if [[ $age -ge 18 ]] && [[ ${country^^} == "INDIA" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi
