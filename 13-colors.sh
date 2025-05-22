#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -eq 0 ]
then 
    echo -e "$R this is a root user $N"
else 
    echo -e "$G it is not a root user $N"
fi 
