#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "it is a  not a root user"
else 
    echo "it is root user"
fi

VALIDATE (){
    if [ "$1" -eq 0 ]
    then 
        echo "the $2 is sucessfull"
    else
        echo "the $2 is not failure"
    fi


}


dnf list installed mysql
 
if [ $? -ne 0 ]
then 
     echo "mysql is not installed"
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo "my sql is already installed"
fi 

dnf list installed python3

if [ $? -ne 0 ]
then 
    echo "python3 is not installed"
    dnf install python3 -y
    VALIDATE $1 "python3"
else 
    echo "python is installed"
fi

dnf list installed nginx

if [ $? -ne 0 ]
then 
     echo "nginx is not installed"
     dnf install nginx -y
     VALIDATE "$1" "nginx"
else 
    echo "nginx is installed"
fi
