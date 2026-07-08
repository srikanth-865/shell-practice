#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
USAGE_THRESHOLD=10

while IFS= read -r line # we are taking in line data
do
    USAGE=$( echo $line | awk '{print $6}' | cut -d "%" -f1 )   

    PARTITION=$( echo $line | awk '{print $7}' )

    if [ "$USAGE" -ge "$USAGE_THRESHOLD" ]; then
        MESSAGE+="High Disk Usage on $PARTITION: $USAGE \n"
    fi
done <<< "$DISK_USAGE"   # here we are passing the diskusage value to while loop

echo -e "$MESSAGE"