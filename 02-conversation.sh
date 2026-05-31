#!/bin/bash
set -euo pipefail

PERSON1="Sai"
PERSON2="Mani"

GREEN='\e[32m'
YELLOW='\e[33m'
RESET='\e[0m'

echo -e "${GREEN}$PERSON1${RESET}: Hey $PERSON2, what are you doing tonight?"
echo -e "${YELLOW}$PERSON2${RESET}: Hey $PERSON1, nothing planned. what's up?"
echo -e "${GREEN}$PERSON1${RESET}: Hey $PERSON2, let's go watch a football match!"
echo -e "${YELLOW}$PERSON2${RESET}: Hey $PERSON1, that sounds great! which teams are playing?"
echo -e "${GREEN}$PERSON1${RESET}: Hey $PERSON2, it's Manchester United vs Arsenal!"
echo -e "${YELLOW}$PERSON2${RESET}: Hey $PERSON1, perfect! I will bring the snacks!"