#!/bin/bash

echo "This script is used to identify the file system that is used more than any specific %age"

filesystem_info=$(df -h | awk 'NR>1')

while IFS= read -r line; do
    # Extract filesystem, used percentage, and mount point
    filesystem=$(echo "$line" | awk '{print $1}')
    used_percentage=$(echo "$line" | awk '{print $5}' | cut -d '%' -f 1)
    mount_point=$(echo "$line" | awk '{print $6}')

    # Check if the used percentage exceeds 80%
    if [ $used_percentage -gt 10 ]; then
        echo "Filesystem $filesystem on $mount_point is at $used_percentage% usage or higher."
        # You can add additional actions here, such as sending an email or a notification
    fi
done <<< $filesystem_info
