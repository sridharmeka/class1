#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "ERROR:: please run this script as root user or with sudo"
exit 1 #give orther than 0 upto 127
else
echo "you are running with root access"
fi

VALIDATE() {
if [ $1 -eq 0 ]
then 
echo " installing $2 is success"
else
echo "intalling $2 is failed"
exit 1
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
echo "mysql is not installed... we can proceed with installation"
dnf install mysql -y
VALIDATE $? "mysql"
else
echo "mysql is already installed... nothing to do "
fi

dnf list installed python3
if [ $? -ne 0 ]
then
echo "python3 is not installed... we can proceed with installation"
dnf install python3 -y
VALIDATE $? "python3"
else
echo "python3 is already installed... nothing to do "
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
echo "nginx is not installed... we can proceed with installation"
dnf install nginx -y
VALIDATE $? "nginx"
else
echo "nginx is already installed... nothing to do "
fi



