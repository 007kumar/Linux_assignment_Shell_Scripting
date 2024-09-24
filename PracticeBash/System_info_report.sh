#!/bin/bash

# Define the output file
REPORT_FILE="system_report.txt"

# Get system uptime
uptime_info=$(uptime)

# Get memory usage
memory_usage=$(free -h)

# Get CPU load
cpu_load=$(top -bn1 | grep "load average" | awk '{print $10 $11 $12}')

# Get disk usage
disk_usage=$(df -h)

# Get running processes
running_processes=$(ps aux --sort=-%mem | head -n 10)

# Create the report
echo "===============System Information Report================" >> "$REPORT_FILE"
echo "========================================================" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "======================System Uptime:====================" >> "$REPORT_FILE"
echo "$uptime_info" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "=======================Memory Usage:====================" >> "$REPORT_FILE"
echo "$memory_usage" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========================CPU Load:=======================" >> "$REPORT_FILE"
echo "$cpu_load" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "=======================Disk Usage:======================" >> "$REPORT_FILE"
echo "$disk_usage" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "======Top 10 Running Processes (by memory usage):=======" >> "$REPORT_FILE"
echo "$running_processes" >> "$REPORT_FILE"

echo "****System information report saved to $REPORT_FILE****"

