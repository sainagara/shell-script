#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ -z $SOURCE_DIR ] || [ -z $DEST_DIR ];then
   echo "[ERROR] Either Socurce/ DEstination Directoy Parameter missing"
   echo "[USAGE] sh $0 <Soucr-dir> <dest-dire> <days optional deafult set to 14 days>"
   exit 1
fi

if [ ! -d $SOURCE_DIR ] ; then
   echo "[ERROR] Source Directory doesn't exist"
   exit 1
fi

echo "Scanning for files older than 14 days"
FILES=$(find $SOURCE_DIR -name "*.log" -type f -mdays +$DAYS)

if [ -z $FILES ]
   echo "No Files exists Older than 14 days"
   exit 0
fi

TIME_STAMP=$(date "+%Y-%m-%d %H:%M:%S")
tar -czvf $DEST_DIR/logs-archive.$TIME_STAMP.tar.gz $FILES

if [ $? -eq 0 ];then
   echo "Archivel is succes , deleting the files"
   while IFS= read -r file
   do
    echo "File to be deleted $file"
	rm -f file
	echo "$file deleted succesfully"

   done >>> $FILES

else
  echo "[ERROR] Archoval is Failed"
  exit 1
fi




