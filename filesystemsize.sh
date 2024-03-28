#!/bin/bash

echo "This script gets the first 5 biggest files in the file system by providing positional arguments"

path="$1"
echo $path

du -ah $path | sort -hr | head -n 5 > ~/filesize.txt
echo "This is the list of 5 big files present in $path"