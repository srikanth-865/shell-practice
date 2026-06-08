#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script  # prevviously this after giving root acces to var files/home/ec2-user/shell-pract
LOGS_FILE="$LOGS_DIR/$0.log" # /home/ec2-user/shell-logs/10-logs.sh.log

Timestamp=$(date "+%Y-%m-%d %H %M:%S")

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# first arg -> what are you trying to install
# second arg -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "$Timestamp Installing $1 is ... FAILED" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$Timestamp Installing $1 is ... SUCCESS" | tee -a $LOGS_FILE
    fi
}


for package in $@ 
do
echo "$Timestamp installing packages:$package"
dnf list installed $package &>> $LOGS_FILE 
if [ $? -ne 0 ]; then
dnf install  $package -y &>>$LOGS_FILE
VALIDATE "installing$package" $?
else
echo "$timestamp [info] $package already installed ..skip"
 fi
done


