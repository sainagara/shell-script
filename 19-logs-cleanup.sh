#!/bin/bash

DAYS=${2:-14}
SOURCE_DIR=$1


if [ -z $SOURCE_DIR ]; then
   echo "[ERROR] Missing parameters"
   echo " USAGE: sh $0 <Source-Directory> <Number of days optional By default 14 days>"
   exit 1

fi

if [ ! -d $SOURCE_DIR ];then
    echo "[ERROR] Source Directory doesn't exist"
    exit 1
fi

echo "Scanning $SOURCE_DIR directory for finding files older than 14 days"
FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS )

while IFS= read -r file
do
 
 echo "File to be delete $file"
 rm -f $file
 echo "$file deleted"
done <<< $FILES

# < for filr
# <<< for variable