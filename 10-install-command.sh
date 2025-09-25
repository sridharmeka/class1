#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "ERROR:: please run this script as root user or with sudo"
exit 1 #give orther than 0 upto 127
else
echo "you are running with root access"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then 
echo " installing mysql is success"
else
echo "intalling mysql is failed"
exit 1
fi