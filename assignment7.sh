#!/bin/bash
num=$1
count=0
for ((i=1; i<=$num; i++))
do
if [ $((num%i)) -eq 0 ]; then
count=$((count+1))
fi
done
if [ $count -eq 2 ] ; then
echo "given number is $num  prime"
else
echo " $num its not prime"
fi

# #or
# num=$1
# count=0
# for ((i=1 ;i<=$num ; i++))
# do
# if (( num % i == 0 ));then  #or (( $num % $i == 0 ))
# count=$((count+1))  
# fi
# done
# if [ $count -eq 2 ];then
# echo "given number is $num  prime"
# else
# echo "its not prime"
# fi




