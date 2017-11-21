#!/bin/bash
echo "Please enter an expression"
read x y z
if [ "$y" == "+" ]
then
  echo $((x+z))
elif [ "$y" == "-" ]
then
  echo $((x-z))
elif [ "$y" == "*" ]
then
  echo $((x*z))
elif [ "$y" == "%" ]
then
  echo $((x%z))
elif [ "$y" == "/" ]
then
  echo $((x/z))
fi
