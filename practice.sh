#!/bin/bash
days=14
source=/var/log/roboshop

file=$(find $source -name "*.log" -type f -mtime +$days)
echo "we get files by $days and $file"
