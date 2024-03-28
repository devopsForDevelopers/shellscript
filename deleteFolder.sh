#!/bin/bash

for folder in $(find -type d);
do
     echo "folder is $folder"
     if [ -d test ];
     then
        echo "Test folder exists"
        echo "removing the folder"
        rm -rf $folder
    else 
        echo "test folder does not exist"
    fi
done
           