#!/bin/bash

# Prompt the user for two numbers
echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

# Prompt the user for an operation
echo "Choose an operation (+, -, *, /, %): "
read operation

# Perform the chosen operation using a case statement
case $operation in
    +) result=$((num1 + num2))
       echo "Result: $result"
       ;;
    -) result=$((num1 - num2))
       echo "Result: $result"
       ;;
    \*) result=$((num1 * num2))
       echo "Result: $result"
       ;;
    /) if [ $num2 -ne 0 ]; then
           result=$((num1 / num2))
           echo "Result: $result"
       else
           echo "Error: Division by zero is not allowed."
       fi
       ;;
    %) if [ $num2 -ne 0 ]; then
           result=$((num1 % num2))
           echo "Result: $result"
       else
           echo "Error: Modulus by zero is not allowed."
       fi
       ;;
    *) echo "Invalid operation selected."
       ;;
esac
