#/bin/bash
set -euo pipefail

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

echo "Time taken to run the Script is: $(($END_TIME-$START_TIME)) seconds" 