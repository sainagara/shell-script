#!/bin/bash
set -euo pipefail

echo "Enter the User Name: "
read USER_NAME

echo "User Name is: $USER_NAME"

echo "Enter The Password: "
read -s PASSWORD

echo "The Password is: $PASSWORD"