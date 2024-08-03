#!/bin/bash

no=6

for i in {1..10}
do
	if [[ $no -eq i ]]
	then
		echo "$no is FOUUND!!!"
		break
	fi
	echo "Number is $i"
done
