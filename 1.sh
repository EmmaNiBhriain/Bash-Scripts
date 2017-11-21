#!/bin/bash
echo "Please enter a number"
read x
COUNT=0

for((i=1;i<=$x;i++))
do
  COUNT=$((COUNT+i))
done

echo "$COUNT"
