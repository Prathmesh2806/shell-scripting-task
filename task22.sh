#!/bin/bash
EMAIL="dummyuser@gmail.com"
PURPOSE="daily system log summary - $(date '+%Y-%m-%d')"
tail -n 15 /var/log/messages | mail -s "$PURPOSE" "$EMAIL"
echo "daily system log summary sent to $EMAIL."