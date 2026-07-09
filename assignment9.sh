#!/bin/bash
root_user=$(id -u)
if [ $root_user -ne 0 ];then
echo "please run script with root access"
exit 1 
else
dnf list installed "$1"
if [ $? -eq 0 ];then
echo "$1 is already installed ..skipped"
exit 0 
else
echo "$1 is going to install"
dnf install "$1" -y 
if [ $? -eq 0 ];then
echo "$1 installed successfully"
else
echo "$1 is not installed successfully"
fi
fi
fi