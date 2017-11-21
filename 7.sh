#!/bin/bash
prime_test(){
  PRIME=0
  for((i=2; i<$1/2+1; i++))
  do
    if(($1 % $i ==0))
    then
      PRIME=1
      #echo $PRIME
      break
    fi
  done
  if(($PRIME==0))
  then
    echo $1
    #echo $PRIME
  fi
}

#echo "Enter number"
#read num

for((j=2; j<100; j++))
do
  prime_test $j
done
