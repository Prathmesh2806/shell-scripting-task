#!/bin/bash
read -p "Enter the directory path" dir
read -p "Enter file pattern to delete" pattern
rm -f "$dir"/$pattern
echo "Files deleted matching the '$pattern' in '$dir'"