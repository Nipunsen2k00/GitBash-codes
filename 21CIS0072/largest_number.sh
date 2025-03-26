#!/bin/bash

# Prompt the user to enter three numbers
echo -n "Enter three numbers: "
read num1 num2 num3

# Determine the largest number using an if-else statement
if [[ $num1 -ge $num2 && $num1 -ge $num3 ]]
then
    largest=$num1
elif [[ $num2 -ge $num1 && $num2 -ge $num3 ]]
then
    largest=$num2
else
    largest=$num3
fi

# Print the largest number
echo "The largest number is $largest"
