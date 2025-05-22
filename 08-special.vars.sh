#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "Current Directory: $PWD"
echo "User running the script: $USER"
echo "Home directory of user: $HOME"
echo "PID of the script: $$"
echo "PID of the last command: $!"