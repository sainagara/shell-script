#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
THRESHHOLD=10
SERVER_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)


while IFS= read -r line
do 
     USAGE=$(echo "$line" | awk '{print $6}' | cut -d "%" -f1)
     PARTION=$(echo "$line" | awk '{print $7}')
 
	if [ "$USAGE" -ge "$THRESHHOLD" ];then

		MESSAGE+="High Disk Usage on $PARTION: $USAGE <br>"
		echo "$MESSAGE"
	fi

done <<< "$DISK_USAGE"

if [ -n "$MESSAGE" ]; then
   sh 22-mail.sh "DevOps Team" "High Disk Usage" "$SERVER_IP" "$MESSAGE" "psainr55@gmail.com" "High Disk Usage Alert"
else
   echo "No isuues with disl Udage"

fi
