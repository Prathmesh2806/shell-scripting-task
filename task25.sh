#!/bin/bash
USERREPORT=$(find /home -maxdepth 1 -mindepth 1 -type d -mtime -1)
if [ -n "$USERREPORT" ]; then
    echo -e "These are the new users created in the last 24 hours:\n$USERREPORT"
else
    echo "There are no new users created in the last 24 hours."
fi