#!/bin/bash
LOGS_FOLDER="/var/log/script"
sudo mkdir -p $LOGS_FOLDER
sudo chown -R ec2-user:ec2-user $LOGS_FOLDER
sudo chmod -R 755 $LOGS_FOLDER
LOGS_FILE="$LOGS_FOLDER/$0.log"
echo "hello" 1>> $log_file
ls ljnkjl 2>> $log_file
ls /tmp ls /fakedir  date  &>> $log_file