#!/bin/bash
logfile=/var/log
errorcount= $(grep -ri "error" $logfile | wc -l)
if [ $errorcount -gt 0 ];then
echo " error count is:$errorcount is more than 0 "
fi