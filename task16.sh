#!/bin/bash
read -p "enter the path of the file" FILE
MODTIME=$(stat -c %Y "$FILE")

while true;
do
  NEW_MODTIME=$(stat -c %Y "$FILE")
  if [ "$NEW_MODTIME" != "$MODTIME" ]; then
          echo "File changed! at $(date)"
    MODTIME=$NEW_MODTIME
  fi
  sleep 2
done