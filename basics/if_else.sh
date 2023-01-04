# !/bin/bash

num_A=100
num_B=90

# NB: The if statement here uses the square brackets to perform its check unlike flutter which uses normal parenthesis
# NB: Always leave a space between the square brackets and the condition
if [ $num_A -gt $num_B ]; then
  echo "$num_A is greater than $num_B"
else
  echo "$num_A is less than $num_B"
fi