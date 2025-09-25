#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "ERROR:: please run this script as root user or with sudo"
fi

dnf install mysql -y