#!/bin/bash

DISK_USAGE=$(df -ht | grep -v filesystem)
THRESHHOLD=10
SERVER_IP=$(curl http://169.254.169.254/latest/meta-data/)


while IFS= read -r line
do 
     USAGE=$(echo line | awk '{print $6}' | cut -d "%d" f1)
     PARTION=$(echo line | awk '{print $7}')
 
	if [ "$USAGE" -gt "$THRESHHOLD" ];then

		MESSAGE+="High Disck Usage on $PARTION: $USAGE <br>"
	fi

done <<< "$DISK_USAGE"

sh 22-mail.sh "DevOps Team" "High Disk Usage" "$SERVER_IP" "$MESSAGE" "psainr55@gmail.com" "High Disk Usage Alert"


TO_TEAM=$1
ALERT_TYPE=$2
SERVER_IP=$3
MESSAGE=$4
TO_ADDRESS=$5
SUBJECT=$6