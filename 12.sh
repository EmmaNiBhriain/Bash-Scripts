#!/bin/bash
echo "Please input a number"
read INPUT

declare -a upto10=("Zero" "One" "Two" "Three" "Four" "Five" "Six" "Seven" "Eight" "Nine")
declare -a upto20=("Ten" "Eleven" "Twelve" "Thirteen" "Fourteen" "Fifteen" "Sixteen" "Sevent$

if [ $INPUT -lt 10 ] && [ $INPUT -gt -1 ]
then
  echo ${upto10[$INPUT]}
elif [ $INPUT -lt 21 ]
then
  echo ${upto20[$INPUT-10]}
#do 20s, 50s
elif [ $INPUT -lt 40 ]
then
  ONEDIGIT=${INPUT:1:1}
  echo $ONEDIGIT
  if [ $ONEDIGIT -gt 0 ]
  then
    echo "Thirty" ${upto10[$ONEDIGIT]}
  else
    echo "Thirty"
  fi
elif [ $INPUT -lt 100 ]
then
  ONEDIGIT=${INPUT:1:1}
  TENDIGIT=${INPUT:0:1}
  if [ $ONEDIGIT -gt 0 ]
  then
    echo ${upto10[$TENDIGIT]}"ty" ${upto10[$ONEDIGIT]}
  elif [ $TENDIGIT == 8 ]
  then
    echo "Eighty"
  else
    echo ${upto10[$TENDIGIT]}"ty"
  fi
fi

