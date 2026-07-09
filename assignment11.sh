#!/bin/bash
LOGS_FOLDER="/var/log/tmp/script"
sudo mkdir -p $LOGS_FOLDER
sudo chown -R ec2-user:ec2-user $LOGS_FOLDER
sudo chmod -R 755 $LOGS_FOLDER
LOGS_FILE="$LOGS_FOLDER.log"
ls "$LOGS_FOLDER" 1>> $LOGS_FILE
touch "$LOGS_FOLDER/srikanth.log"  
echo "created srikanth.log" 1>> $LOGS_FILE
touch "$LOGS_FOLDER/sk.log"   
echo "created sk.log" 1>> $LOGS_FILE
 ls $LOGS_FOLDER 1>> $LOGS_FILE

Error_folder="/var/log/script-errors"
sudo mkdir $Error_folder
sudo chown -R ec2-user:ec2-user "$Error_folder"
sudo chmod -R 755 "$Error_folder"
ERRORLOGS_FILE="$Error_folder/scripts.log"
ls ljnkjl 2>> "$ERRORLOGS_FILE"

ls /tmp 
ls /fakedir   2>> "$ERRORLOGS_FILE"
date