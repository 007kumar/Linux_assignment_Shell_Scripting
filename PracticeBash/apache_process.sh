#!/bin/bash

#Define the process name and log file
PROCESS="apache2"
LOG_FILE="/var/log/process_monitor.log"

# Check if the process is running
if pgrep "$PROCESS" > /dev/null
then
    echo "$(date): $PROCESS is running." >> "$LOG_FILE"
else
    echo "$(date): $PROCESS is not running. Starting $PROCESS..." >> "$LOG_FILE"
		    
#Systemctl Start command to start the process
systemctl start $PROCESS
			    
fi

