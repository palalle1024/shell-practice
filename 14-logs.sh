#!/bin/bash

USERID=(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"



LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0 | cut -d "."-f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"




mkdir -p $LOGS_FOLDER

if [ $USERID -ne 0 ]
then
    echo -e "$R it is a  not a root user $N" | tee -a $LOG_FILE 
else 
    echo "it is root user" | tee -a $LOG_FILE
fi

VALIDATE (){
    if [ "$1" -eq 0 ]
    then 
        echo "the $2 is sucessfull" | tee -a $LOG_FILE
    else
        echo "the $2 is not failure" | tee -a $LOG_FILE
    fi


}


dnf list installed mysql &>>$LOG_FILE
 
if [ $? -ne 0 ]
then 
     echo "mysql is not installed" | tee -a $LOG_FILE
     dnf install mysql -y
     VALIDATE $? "mysql"
else
     echo "my sql is already installed"
fi 

dnf list installed python3 &>>$LOG_FILE

if [ $? -ne 0 ]
then 
    echo "python is not installed" | tee -a $LOG_FILE
    dnf install python3 -y
    VALIDATE $1 "python3"
else 
    echo "python is installed"
fi

dnf list installed nginx &>>$LOG_FILE

if [ $? -ne 0 ]
then 
     echo "nginx is not installed"  | tee -a $LOG_FILE
     dnf install nginx -y
     VALIDATE "$1" "nginx"
else 
    echo "nginx is installed"
fi

