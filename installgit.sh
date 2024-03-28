#!/bin/bash

#this script is aimed to determine the os and install git accordingly

echo "installing git....."
echo "Installation started...."

if [ "$(uname)" == "Linux"];
then
    echo "This is Linux based system"
    sudo apt-get update
    sudo apt install git
elif [ "$(uname)" == "Darwin" ];
then 
    echo "This is MacOS based system"
    brew install git
else 
    echo "Unable to determine the OS installed"
fi