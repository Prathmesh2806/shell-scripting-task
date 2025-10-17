#!/bin/bash
read -p "enter location name" LOCATION 
curl -s "https://wttr.in/{$LOCATION}?format=3"
