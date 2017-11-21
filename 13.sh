#!/bin/bash
echo "Please enter a year"
read YEAR

len=${#YEAR}

for((i=0;i<$len;i++))
do
  echo ${YEAR:i:1}
done

