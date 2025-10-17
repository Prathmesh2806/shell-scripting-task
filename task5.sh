#!/bin/bash
sudo yum check-update > /dev/null
exit_status=$?
if
        [ $exit_status -eq 100 ];
then
        echo "updates are available.starting the update process"

elif
        [ $exit_status -eq 0 ];
then
        echo "there are no updates to be done"
if
        [ $exit_status -eq 100 ];
then
        echo "update is been started"
        sudo yum update -y
        echo "the updates are been done"
fi
fi