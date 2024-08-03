#!/bin/bash

# How to store the key value pair

declare -A myMap

myMap=( [name]="ABC" [age]=29 [city]="Paris" )

echo "Name is ${myMap[name]}"
echo "Age is ${myMap[age]}"
