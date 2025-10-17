#!/bin/bash
read -p "Enter your service name:" service_name
status=$(systemctl is active $service_name)
if
        [ "$status" == "active" ];then
        echo "$service_name is running"
else
        echo "$service_name is not running"
        echo "Restarting $service_name"
if
        systemctl restart "$service_name";then
        echo "$service_name restarted succesfully"
else
        echo "$service_name failed to restart"
fi
fi