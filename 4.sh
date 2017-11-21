#!/bin/bash
echo "Please enter two numbers, separated by a space"
read one two
if(($one > $two))
then
  if(($two>0))
  then
    echo $((one/two))
  else
    echo "Small number must be greater than 0"
  fi
elif(($two > $one))
then
  if(($one > 0))
  then
    echo $((two/one))
  else
    echo "Small number must be greater than 0"
  fi
elif(($two == $one))
then
  echo "1"
else
  echo "Error"
fi

