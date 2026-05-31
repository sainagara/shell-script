#!/bin/bash

NUM1=15
NUM2=linux

SUM=$(($NUM1+NUM2))

echo "The Sume is: $SUM"

NAMES=("sai" "mani" "Prabhkar" "Gopi" "Prasanna")

echo "Names are: ${NAMES[@]}"
echo "First Name: ${NAMES[0]}"
