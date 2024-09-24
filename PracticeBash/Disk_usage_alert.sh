#!/bin/bash

# Define threshold percentage for disk usage
THRESHOLD=80

# Define the admin email address
ITadmin_Email="ITteam@office.com"

#This will get the disk usage percentage of the root filesystem
disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

#This will check the usage teh given threshold
if [ "$disk_usage" -gt "$THRESHOLD" ]; then


# Prepare the email content
subject="#Urgent : Disk Usage Alert - Root Filesystem is ${disk_usage}% full"
message="Warning: The root filesystem is ${disk_usage}% full, which has been exceeded the threshold of ${THRESHOLD}%."
		        
# Send the email
echo "$message" | mail -s "$subject" "$ITadmin_Email"


fi

