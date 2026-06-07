#!/bin/bash
starttime=$(date +%s)
sleep 3
endtime=$(date +%s)
totaltime=$(($endtime-$starttime))

echo "time take script print is:$totaltime in seconds"