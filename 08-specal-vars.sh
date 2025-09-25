#!/bin/bash

echo "all variables passed to the script: $@"
echo "number of variables: $#"
echo "script name: $0"
echo "current directory: $PWD"
echo "user running this script: $USER"
echo "home directory of the user: $HOME"
echo "process id of this script: $$"
sleep 10 &
echo "process id of lasdt command background: $!"
