#!/bin/bash

USER_ID=$(id -u)

# Check root access or not
if [ $USER_ID -ne 0 ]; then
   echo "Please run this script with root access"

fi

# first arg -> what are you trying to install
# second arg -> exit code

VALIDATE(){
    if [ $2 -ne 0 ]; then
       echo "Installing $1 is Failure"

    else
       echo "Installing $1 is Succus"

    fi
}


dnf list installed mysql

if [ $? -eq 0 ]; then
   echo "MySql Already Installed...SKIPPING"

else
  echo "Installing Mysql"
  dnf install mysql -y
  VALIDATE mysql $?

fi


dnf list installed nginx

if [ $? -eq 0 ]; then
   echo "ngin is alredy Installed... SKIPPING"

else
   echo "Installing nginx"
   dnf install nginx -y
   VALIDATE nginx $?

fi
