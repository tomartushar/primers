#!/bin/bash

#Script to show variable demo

age=10
name="ABC"

echo "My name is $name and age is $age"

name="xyz"

echo "My name is $name"

# variable to store the output of command

HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
