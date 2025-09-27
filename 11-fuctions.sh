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
if [ $? -eq 0 ]
then 
echo " installing mysql is success"
else
echo "intalling mysql is failed"
exit 1
fi

}

dnf install mysql -y

if [ $? -eq 0 ]
then 
echo " installing mysql is success"
else
echo "intalling mysql is failed"
exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then



else
echo "mysql is already installed... nothing to do "
fi

dnf install python3 -y

if [ $? -eq 0 ]
then 
echo " installing python3 is success"
else
echo "intalling python3 is failed"
exit 1

dnf list installed python3
if [ $? -ne 0 ]
fi
else
echo "python3 is already installed... nothing to do "
fi

dnf install nginx -y

if [ $? -eq 0 ]
then 
    echo " installing nginx is success"
else
    echo "intalling nginx is failed"
    exit 1

    dnf list installed nginx
    VALIDATE $? "nginx"

else
    echo "nginx is already installed... nothing to do "
fi