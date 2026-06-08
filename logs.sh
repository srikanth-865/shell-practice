#!/bin/bash
logs-dir=/home/ec2-user/shell-logs  #it is a directory as we give path
logs-file="$logs-dir/$0.log" #/home/ec2-user/shell-logs/logs.sh.log
userid=$(id -u)
if  [   $userid -ne 0 ];then
echo "Please run this script with root access"
exit 1
fi
dnf list installed mysql &>> $logs-file
VALIDATE()
{
    if [ $2 -ne 0 ]; then
        echo "Installing $1 is ... FAILED"
        exit 1
    else
        echo "Installing $1 is ... SUCCESS"
    fi
}

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y &>> $logs-file
    VALIDATE MySQL $?  #here we are passing arguments $1=mysql & $2=$?
fi

dnf list installed nginx &>> $logs-file
if [ $? -eq 0 ]; then
    echo "nginx is already installed ... SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y &>> $logs-file
    VALIDATE nginx $?
fi