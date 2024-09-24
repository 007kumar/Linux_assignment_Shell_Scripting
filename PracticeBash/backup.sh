#!/bin/bash

# Assign the source directory argument to a variable
FROM_DIR="/home/user/documents"

# Create a backup directory with a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create a backup directory
TO_DIR="/home/user/downloads/backup_$TIMESTAMP"

mkdir -p "$TO_DIR"

echo "Starting Backup of text files present in /home/user/documents "
# Copy all .txt files from the source (FROM_DIR) directory to the backup (TO_DIR) directory
find "${FROM_DIR}" -name "*.txt" -exec cp {} "$TO_DIR" \;

echo "Backup of .txt file are saved in $TO_DIR"

