#!/bin/bash
age_comparator(){
  if(($1 > 21))
  then
    echo "Adult"
  else
    echo "Not an Adult"
  fi
}

age_comparator 12
age_comparator 22
age_comparator 21
age_comparator 20
age_comparator 7
