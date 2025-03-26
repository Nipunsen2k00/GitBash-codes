#!/bin/bash

# Prompt the user to enter a string
read -p "Enter a string: " input_string

# Reverse the string using `rev` command
reversed_string=$(echo "$input_string" | rev)

# Print the reversed string
echo "Reversed string: $reversed_string"
