#!/bin/bash

# Read first number
read -p "Enter first number: " num1

# Read second number
read -p "Enter second number: " num2

# Ask user to choose an operation
read -p "Choose an operation (+, -, *, /): " op

# Perform the operation using a case statement
case $op in
    "+") result=$((num1 + num2)) ;;
    "-") result=$((num1 - num2)) ;;
    "*") result=$((num1 * num2)) ;;
    "/") 
        if [ $num2 -eq 0 ]; then
            echo "Error: Division by zero is not allowed!"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
    *) echo "Invalid operation"; exit 1 ;;
esac

# Display the result
echo "Result: $result"
