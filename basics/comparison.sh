#!/bin/bash

string_A="Hello"
string_B="World"
echo "$string_A"
echo "$string_B"

echo "Are $string_A and $string_B equal?"
[ "$string_A" = "$string_B" ]
echo $? # 1 means false, 0 means true

num_A=100
num_B=100

echo "Are $num_A and $num_B equal?"
[ $num_A -eq $num_B ]
echo $? # 1 means false, 0 means true
