#!/bin/bash
INPUT=()

#populate the array using user input
for((i=0;i<10;i++))
do
  echo "Integer $((i+1))"
  read io
  INPUT[$i]=${io}
done
echo "${INPUT[@]}"

#sort array in ascending order
LEN=${#INPUT[@]}
sortarray() for $1
do
  readarray -tf '' "$array" < <(
    eval "printf '%s\0' \"\${$array[@]}\" | sort -z")
done


#sorted=($(sort_ascending))

#new=($(echo ${sorted[*]} | sort -n))
#echo $new
sortarray $INPUT
