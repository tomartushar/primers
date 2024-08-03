#!/bin/bash

# Generating a random numbers b/w 1 t0 6

NO=$(( $RANDOM%6 + 1 ))
echo "Number is $NO"
