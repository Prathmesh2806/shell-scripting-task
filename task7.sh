#!/bin/bash
echo "System Resource Usage Report"
echo  "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo  "Memory Usage:"
free -h

echo "Disk Usage:"
df -h

echo "Report complete."