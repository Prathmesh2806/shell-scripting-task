#!/bin/bash
read -p "enter the directory path" DIR
read -p "enter the text to search" SEARCH
read -p "enter the replacement text" REPLACE
for FILE in "$DIR"/*; do
    if [[ -f "$FILE" ]]; then
        sed -i "s/${SEARCH}/${REPLACE}/g" "$FILE"
        echo "Updated $FILE"
    fi
done
echo "search and replacement is been done"