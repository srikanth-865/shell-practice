#!/bin/bash
num1=8
num2=5
sum=$(($num1+$num2))
echo "sum is :$sum"

# Array
MOVIES=("RRR" "Varanasi" "Pushpa") # index always starts from 0
echo "Movies are: ${MOVIES[@]}"
echo "First movie is: ${MOVIES[0]}"
echo "Second movie is: ${MOVIES[1]}"
echo "Third movie is: ${MOVIES[2]}"