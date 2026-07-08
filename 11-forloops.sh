#!/bin/bash

for number in {1..10}
do
echo $number
done

# or another way
# for i in 1 2 3 4 5;do
# echo "numbers $i"
# done

# we can pass multiple values in terminal also

# for i in $@ ;do
# echo "$i"
# done

#another way is also

# for ((i=1; i<=5; i++))
# do
#     echo "$i"
# done