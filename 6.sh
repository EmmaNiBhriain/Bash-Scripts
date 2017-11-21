#!/bin/bash
echo "Please enter a number"
read NUM

echo "Please enter a word"
read WORD

for((i=1;i<NUM;i++))
do
  echo $WORD
done
