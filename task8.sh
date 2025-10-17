#!/bin/bash
read -p "Enter website URL" site
curl "$site" > /dev/null
if [ $? -eq 0 ]; then
    echo "$site is up"
else
    echo "$site is down"
fi