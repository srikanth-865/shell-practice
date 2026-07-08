#!/bin/bash
echo "Running is $USER"
echo "current directory: $PWD"
echo "home directory is $HOME"
echo "PID of script is $$"
sleep 5 &
echo "background pid is $!"
echo "Random number is $RANDOM"
start_time=$(date +%s)
stop_time=$(date +%s)
run=$(($stop_time-$start_time))
echo "script run in $run seconds"
