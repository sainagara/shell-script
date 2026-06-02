#!/bin/bash
set -euo pipefail

USER_ID=$(id -u)
LOGS_DIR="/var/logs/shell-script"
LOGS_FILE="$LOGS_DIR/$0.log"


if [ $USER_ID -ne 0 ]; then
   echo "Please run this script with root access"
   exit 1
fi


VALIDATE(){
    if [ $2 -lt 0 ]; then
      echo "$1 is already installed ... SKIPPING" | tee -a $LOGS_FILE
      exit 1
    else
     echo "Installing $1 is ... SUCCESS" | tee -a $LOGS_FILE
    fi
}


dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING" | tee -a $LOGS_FILE
else
    echo "Installing Mysql"
    dnf install mysql -y &>> $LOGS_FILE
    VALIDATE mysql $?
fi



dnf list installed nginx

if [ $? -eq 0 ]; then
   echo "nginx is already installed ... SKIPPING" | tee -a $LOGS_FILE
else
   echo "Installing nginx"
   dnf install nginx -y &>> $LOGS_FILE
   VALIDATE nginx $?

fi



  






