#!/bin/bash
Grades=()
index=0

while [ $index -lt 12 ]
do
  echo "$((index+1)). enter grade"
  read input
  if((input > 100))
  then
    input=100
  elif((input < 0))
  then
    input=0
  fi
  Grades[$index]=${input}
  echo "input : " $input
  let index+=1
done

get_average(){
  SUM=0
  for((i=$1; i<$2; i++))
  do
    SUM=$((SUM+Grades[i]))
  done
  AVERAGE=$((SUM/$3))
  echo $AVERAGE
}

get_minimum(){
  MIN=100
  for((i=0; i<12; i++))
  do
    GRADE=$((Grades[i]))
    if(($GRADE < $MIN))
    then
      MIN=$GRADE
    fi
  done
  echo $MIN
}

get_maximum(){
  MAX=0
  for((i=0; i<12; i++))
  do
    GRADE=$((Grades[i]))
    if(($GRADE > $MAX))
    then
      MAX=$GRADE
    fi
  done
  echo $MAX
}

echo "Average of the twelve grades: "
get_average 0 12 12 #input are starting index of array, final index of array and number of e$

echo "Average of the first semester : "
get_average 0 6 6

echo "Average of the second semester: "
get_average 6 12 6

echo "Minimum grade"
get_minimum

echo "Maximum grade"
get_maximum



