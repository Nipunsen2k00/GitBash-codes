#!/bin/bash

# Read first string from user
echo -n "Enter first string: "
read str1

# Read second string from user
echo -n "Enter second string: "
read str2

# Compare the strings
if [ "$str1" = "$str2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi
