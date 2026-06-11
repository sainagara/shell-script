#!!/bin/bash

TO_TEAM=$1
ALERT_TYPE=$2
SERVER_IP=$3
MESSAGE=$4
TO_ADDRESS=$5
SUBJECT=$6

FINAL_MESSAGE=$(echo "$MESSAGE" | sed -e "s/[&/]/\\&/g")

FINAL_CONTEXT=$(sed -e "s/TO_TEAM/$TO_TEAM" -e "s/ALERT_TTYPE/$ALERT_TTYPE" -e "s/SERVER_IP/$SERVER_IP" \
    -e "s/MESSAGE/$FINAL_MESSAGE" -e "s/SUBJECT/$SUBJECT" template.html)

{
	echo "T0: $TO_ADDRESS"
	echo "Subject: $SUBJECT"
	echo "Content-type: text/html"
	echo ""
	echo "$FINAL_CONTEXT"

} | msmtp "$TO_ADDRESS"