#!/bin/bash
read -p "Enter the source path of directory" LOCAL_DIR
read -p "Enter the remote user name" REMOTE_USER
read -p "Enter the remote user ip" REMOTE_IP
read -p "Enter the remote directory path" REMOTE_DIR

rsync -avz "$LOCAL_DIR" "$REMOTE_USER@$REMOTE_IP:$REMOTE_DIR"
if
        [ $? = 0 ];then
        echo "backup taken succesfully"
else
        echo "error in taking backup"
fi