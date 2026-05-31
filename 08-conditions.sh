#!/bin/bash

echo "Please enter the number to check even or odd: "
read NUM

#validating number is even or odd

RES=$(($NUM%2))

if [ $RES -eq 0 ]; then
  echo "$NUM is Even Number"
else
 echo "$Num is Odd Number"
fi


#validate prime or not
 echo "Enter the number to validate Prime or Not"
 read NUM1

 FLAG=0;

# Handle numbers less than 2
if [ $NUM1 -lt 2 ]; then
   echo "$NUM1 is not prime number"
   exit 0
if

# Handle 2 separately - smallest prime number
if [ $NUM1 -eq 2 ]; then
   echo "$NUM1 is a prime number"
   exit 0
if

# Check divisibility from 2 to NUM1-1
for i in $(seq 2 $(($NUM1-1))); do
        if[ $(($NUM 1 % $i)) -eq 0 ]; then
            FLAG=1
            break
        fi
 done       
    

if [ $FLAG -eq 0 ]; then 
   echo "$NUM1 it's prime number"
else
   echo "$NUM1 is not prime number"
fi
