#!/bin/bash
# num=$1
# if [ $((num%2)) -eq 0 ];then  #[ 0 -eq 0 ]     first (4%2) ,then $(0) replace by 0 
# echo " $num is even"
# else
# echo "$num is odd"
# fi

#or

num=4
if (( num%2 == 0 ));then
echo " $num is even"
else
echo "$num is odd"
fi

# What does (( )) mean?

# (( )) is Bash's arithmetic evaluation syntax.

# Everything inside it is treated as a mathematical expression.

# For example:

# ((5 + 3))
# ((10 > 4))
# ((num % 2 == 0))

# Inside (( )):

# You don't write $num.
# You use normal math operators (+, -, *, /, %).
# You can use comparison operators like ==, >, <.



