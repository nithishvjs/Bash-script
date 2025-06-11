#!/bin/bash

# Threshold in percentage
THRESHOLD=80

# Get disk usage for root (/) partition
USAGE=$(df -h / | grep -vE '^Filesystem' | awk '{ print $5 }' | tr -d '%')

# Get current date
DATE=$(date '+%Y-%m-%d %H:%M:%S')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "[$DATE] Warning: Disk usage is above $THRESHOLD% (Current: $USAGE%)"
    # Optional: Send email alert
    # echo "Disk usage on $(hostname) is ${USAGE}%." | mail -s "Disk Alert" user@example.com
else
    echo "[$DATE] Disk usage is under control: $USAGE%"
fi

