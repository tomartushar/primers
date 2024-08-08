#!/bin/bash

# To redirect the output
ping -c 1 www.google.com > redirect.log

# To redirect the output and error in different file
ping -c 1 www.google.com > output.log 2>error.log

# To redirect the output and error in the same file
ping -c 1 www.google.com &> output.log

ping -c 1 www.google.com > output.log 2>&1
