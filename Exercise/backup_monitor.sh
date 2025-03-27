#!/bin/bash

# Step 1: Ask the user for the source directory
read -p "Enter the directory to back up (.txt files only): " source_dir

# Step 2: Define the backup directory
backup_dir="$HOME/Desktop/backup"

# Step 3: Create the backup directory if it does not exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
    echo "Backup directory created at: $backup_dir"
fi

# Step 4: Define the log file
log_file="$backup_dir/backup_log.txt"

# Step 5: Copy all .txt files to the backup directory and log the operation
echo "Starting backup process..."
for file in "$source_dir"/*.txt; do
    if [ -f "$file" ]; then
        cp "$file" "$backup_dir"
        echo "$(date +"%Y-%m-%d %H:%M:%S") - Copied: $file" >> "$log_file"
        echo "Copied: $file"
    fi
done

echo "Backup completed. Log file saved at: $log_file"

# Step 6: Monitor the log file for errors (fake errors for simulation)
echo "Monitoring the log file for errors..."
tail -f "$log_file" | while read line; do
    if [[ "$line" == *"error"* ]]; then
        echo "⚠️ ALERT: Error detected in the log file!"
    fi
done
