#!/bin/bash
userid=$(id -u)
if  [   $userid -ne 0 ];then
echo "Please run this script with root access"
exit 1
fi
dnf list installed mysql
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
    dnf install mysql -y
    VALIDATE MySQL $?  #here we are passing arguments $1=mysql & $2=$?
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "nginx is already installed ... SKIPPING"
else
    echo "Installing nginx"
    dnf install nginx -y
    VALIDATE nginx $?
fi


# Why use both &>> and tee?

# Suppose your script is:

# dnf install mysql -y &>> install.log
# echo "Installing MySQL is SUCCESS" | tee -a install.log
# dnf install... produces a lot of detailed output (package download, dependencies, etc.), which is stored only in the log file.
# The echo command prints a simple success or failure message to both the terminal and the log file.

# For example:

# Terminal
# Installing MySQL is SUCCESS
# Installing nginx is SUCCESS
# Log file
# Downloading packages...
# Installing mysql...
# Complete.
# Installing MySQL is SUCCESS
# Downloading packages...
# Installing nginx...
# Complete.
# Installing nginx is SUCCESS