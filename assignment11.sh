#!/bin/bash
LOGS_FOLDER="/var/log/script"
sudo mkdir -p $LOGS_FOLDER
sudo chown -R ec2-user:ec2-user $LOGS_FOLDER
sudo chmod -R 755 $LOGS_FOLDER
LOGS_FILE="$LOGS_FOLDER/$0.log"

Error_folder="/var/log/script-errors"
sudo mkdir $Error_folder
sudo chown -R ec2-user:ec2-user $Error_folder
sudo chmod -R 755 $Error_folder
ERRORLOGS_FILE="$Error_folder/scripts.log"
echo "hello" 1>> $LOGS_FILE
ls ljnkjl 2>> $ERRORLOGS_FILE

ls /tmp ls /fakedir  date