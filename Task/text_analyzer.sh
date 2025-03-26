#!/bin/bash

# Step 1: Take file input from the user
read -p "Enter the filename (with path if necessary): " file_name

# Step 2: Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Step 3: Count the number of lines in the file
line_count=$(wc -l < "$file_name")
echo "Number of lines: $line_count"

# Step 4: Count the number of words in the file
word_count=$(wc -w < "$file_name")
echo "Number of words: $word_count"

# Step 5: Count the number of characters in the file
char_count=$(wc -m < "$file_name")
echo "Number of characters: $char_count"

# Step 6: Find the top 3 most frequent words
echo "Top 3 most frequent words:"
cat "$file_name" | tr -s '[:space:]' '\n' | sort | uniq -c | sort -nr | head -n 3

# Step 7: Save the analysis results to a new file
output_file="analysis_result.txt"
{
    echo "Analysis of $file_name"
    echo "---------------------------------"
    echo "Number of lines: $line_count"
    echo "Number of words: $word_count"
    echo "Number of characters: $char_count"
    echo "Top 3 most frequent words:"
    cat "$file_name" | tr -s '[:space:]' '\n' | sort | uniq -c | sort -nr | head -n 3
} > "$output_file"

echo "Analysis saved to $output_file"
