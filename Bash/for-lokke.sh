#! /bin/bash

for var in h1 h2 h3
do
  echo $var
done

# For løkke som i java

for (( i=1;i<30;i++ ))
do
  echo "$i"
done

teller=0

while (( teller < 10))
do
   (( teller++ ))
   echo $teller
done

echo Ferdig!

