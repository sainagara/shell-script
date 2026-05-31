#!/bin/bash
set -euo pipefail

PERSON1=$1
PERSON2=$2

GREEN='\e[32m'
YELLOW='\e[33m'
RESET='\e[0m'

echo -e "${GREEN} $1 ${RESET}: Hey $2, what are you doing tonight?"
echo -e "${YELLOW} $2 ${RESET}: Hey $1, nothing planned. what's up?"
echo -e "${GREEN} $1 ${RESET}: Hey $2, let's go watch a football match!"
echo -e "${YELLOW} $2 ${RESET}: Hey $1, that sounds great! which teams are playing?"
echo -e "${GREEN} $1 ${RESET}: Hey $2, it's Manchester United vs Arsenal!"
echo -e "${YELLOW} $2 ${RESET}: Hey $1, perfect! I will bring the snacks!"