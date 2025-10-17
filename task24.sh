#!/bin/bash
read -p "enter the prefix for renamed files: " PREFIX
read -p "Enter the file extension to target: " EXT

if [[ -z "$PREFIX" || -z "$EXT" ]]; then
    echo "Prefix and extension cannot be empty."
    exit 1
fi
COUNT=1
for FILE in *."$EXT"; do
    if [[ -f "$FILE" ]]; then
        NEW_NAME="${PREFIX}_${COUNT}.${EXT}"
        if [[ -e "$NEW_NAME" ]]; then
            echo "Skipping $FILE (target $NEW_NAME already exists)"
        else
            mv "$FILE" "$NEW_NAME"
            echo "Renamed $FILE  $NEW_NAME"
            ((COUNT++))
        fi
    fi
done
echo "Done. Renamed $((COUNT - 1)) file(s)."
