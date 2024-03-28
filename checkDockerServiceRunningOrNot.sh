#!/bin/bash

echo "This script is used to find whether the docker service is running or not"

service="`systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1`"

if [ $service == "active" ];
then
    echo "Docker service is running"
else
    echo "Docker service is not running"
fi