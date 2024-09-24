#!/bin/bash

#Source and destination directories
SOURCE_DIR="/home/user/projects/project1"
BACKUP_DIR="/home/user/downloads"
BACKUP_FILE="Backup_TAR_$(date +'%Y%m%d').tar.gz"

#Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
	    mkdir -p "$BACKUP_DIR"
fi

#Compress the documents directory into a tarball
tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

#Print a message indicating success
echo "Files of $SOURCE_DIR has been backup to $BACKUP_DIR successfully."

