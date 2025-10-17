#!/bin/bash
read -p "Enter path for first directory: " DIR1
read -p "Enter path for second directory: " DIR2

if [[ ! -d "$DIR1" ]]; then
  echo "error '$DIR1' is not a valid directory."
fi

if [[ ! -d "$DIR2" ]]; then
  echo "error '$DIR2' is not a valid directory."
fi

echo "comparing directories '$DIR1' and '$DIR2'"
echo "the difference in both directories is "
diff -r "$DIR1" "$DIR2"