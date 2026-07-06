#!/bin/bash
#Declare an  array with items fruits
fruits=("Apple" "Banana" "Mango" "Orange")
#loops through by array

for fruit in "${fruits[@]}";do
echo " fruit is $fruit" #we can get all fruits
done

#without loop access elements by just index values
echo "First fruit is "${fruits[0]}"
echo "second fruit is "${fruits[1]}"

#length of an array is

echo "count=${#fruits[$@]}"  #all fruits values are passed through #