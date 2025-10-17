#!/bin/bash
disk_usage=$(df -h / | awk 'NR==2 {print $5}'| cut -d'%' -f1)
threshold=30
if
        [ "$disk_usage" > "$threshold" ];then
        echo "disk utilization exceededs limit"

else
        echo "disk utilization is normal"
fi 