#!/bin/bash
days=14
source=/var/log/roboshop

file=$(find $source -name "*.log" -type f -mtime +$days)
while IFS= read -r line 
do
echo "$line"
done <<< $file