#!/bin/bash
today_date=$(date +%A | awk '{print$1f}')
if [ "$today_date" == "Sunday"] || [ "$today_date" == "Saturday"]
echo "Weekend!Enjoy your holiday"
elif [ "$today_date" == "Monday"]
echo "Start of the week. Let's go!"
else
echo "Weekday. Go to school/work"