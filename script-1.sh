#!/bin/bash

GREETING="Hello, good morning"
echo "$GREETING"
echo "PID of SCRIPT-1: $$"

./script2.sh 

source./script-2.sh


#when we source./script-2.sh we can access variables of script-2 and script-2 can also access the variables of script-1.


