#! /bin/bash

teller=0

if ((teller < 10))
then
   echo Hei
else
   echo Nei
fi

for ((i=0;i<10;i++))
do
   modulus=$((i % 2))
   if ((i == 0 ))
   then
      continue
   elif ((modulus == 0))
   then 
      echo $i er et partall
   fi
done
