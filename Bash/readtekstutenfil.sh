#! /bin/bash

teller=0

while read line
do
   ((teller++))
   echo Linje nr $teller: $line
done

echo Ferdig!
