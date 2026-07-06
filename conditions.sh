#!/bin/bash
number= $1
# gt - greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal

if [  $number -gt 20 ];then
echo "print given number is:$number is greater than 20"
else
echo "$number is less than 20"
fi