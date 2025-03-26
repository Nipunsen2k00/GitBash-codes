#!/bin/bash

# Prompt user to enter two strings
read -p "Enter first string: " str1
read -p "Enter second string: " str2

# Get lengths of both strings
len1=${#str1}
len2=${#str2}

# Compare lengths and display result
if [ $len1 -gt $len2 ]; then
    echo "The first string is longer."
elif [ $len1 -lt $len2 ]; then
    echo "The second string is longer."
else
    echo "Both strings are of equal length."
fi
