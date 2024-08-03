#!/bin/bash

# Array
myArray=( 1 2 10.5 Hello "Hey man" )

echo "Value in 3rd index: ${myArray[3]}"

echo "All the values in the array are: ${myArray[*]}"

# How to find the count of values in the array
echo "No. of values is ${#myArray[*]}"

echo "Values of index 2-3 are: ${myArray[*]:2:2}"

# Updating array with new values
myArray+=( New 30 40)
echo "Values of the new array are: ${myArray[*]}"
