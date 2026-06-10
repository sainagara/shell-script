#!/bin/bash

DIR_PATH="/etc/paaswd"

echo "Printing from script 1 directory path: $DIR_PATH"
echo "Script-1 PID is: $$"

#When we cal using sh, pid should be different and can't able to access variables
# sh 17-script2.sh 

#When we cal using source, pid should be same and can able to access variables
source ./17-script2.sh
