#!/bin/bash
LOCAL_DIR="/home/prathmesh/created"
REMOTE_USER="client"
REMOTE_IP="10.10.57.92"
REMOTE_DIR="/home/client/backedup"

rsync -avz "$LOCAL_DIR" "$REMOTE_USER@$REMOTE_IP:$REMOTE_DIR"
if
        [ $? = 0 ];then
        echo "backup taken succesfully"
else
        echo "error in taking backup"
fi