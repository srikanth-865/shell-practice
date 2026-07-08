#!/bin/bash
logfile=/var/log
errorcount=$(grep -ri "error" $logfile | wc -l)
if [ "$errorcount" -gt 0 ];then
echo "count is:$errorcount is more than 0 "
else
echo "no errors found "
fi