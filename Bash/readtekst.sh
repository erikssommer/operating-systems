#! /bin/bash

nummer=0

while read line
do
   ((nummer++))
   echo Linje nummer ${nummer}: $line
done < ./ressurser/tekst.txt

echo Ferdig! 
