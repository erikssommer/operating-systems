#! /bin/bash

counter=0
array=()
while [ $1 > 0 ]; do
   array[$counter]=$1
   (( counter++ ))
   shift
done

echo ${array[*]}
