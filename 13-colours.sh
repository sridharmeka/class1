#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
C="\e[36m"
W="\e[37m"
N="\e[0m"


if [ $USERID -ne 0 ]
then 
echo "$R ERROR:: please run this script as root user or with sudo $N"
exit 1 #give orther than 0 upto 127
else
echo "you are running with root access"
fi

VALIDATE() {
if [ $1 -eq 0 ]
then 
echo " installing $2 is $G success $N"
else
echo "intalling $2 is $R failed $N"
exit 1
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
echo "mysql is not installed...  already installation we can proceed with installation"
dnf install mysql -y
VALIDATE $? "mysql"
else
echo -e "mysql is already $N installed $G... $W nothing to do $C "
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






