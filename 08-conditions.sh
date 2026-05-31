#!/bin/bash

echo "Please enter the number: "
read NUM

#validating number is even or odd

RES=$(($NUM%2))

if [$RES eq 0]; then
  echo "$NUM is Even Number"
else
 echo "$Num is Odd Number"
fi