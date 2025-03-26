#!/bin/bash

# Ask user for input
echo -n "Enter a number: "
read num

# Initialize factorial to 1
factorial=1

# Loop to calculate factorial
for (( i=1; i<=num; i++ ))
do
  factorial=$((factorial * i))
done

# Print the result
echo "Factorial of $num is $factorial"
