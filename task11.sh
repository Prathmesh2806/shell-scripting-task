#!/bin/bash
CSV_FILE="users.csv"
DEFAULT_PASSWORD="pass123"

if [ ! -f "$CSV_FILE" ];
then
    echo "csv file '$CSV_FILE' not found!"
fi

while read username;
do
    [ -z "$username" ] && continue
    if id "$username" &>/dev/null; then
        echo "user $username already exists."
    else
        useradd "$username"
        echo "$username:$DEFAULT_PASSWORD" | chpasswd
        echo "user created: $username"
    fi
done < "$CSV_FILE"
