#!/bin/bash
#we can get no of lines present in file.sh in this lines.sh file
lines=$(wc -l<files.sh) #here files.sh file gives input to the lines variable
echo "lines in file.sh $lines"
