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

navn1="Per"
navn2="Per"

if [ $navn1 = $navn2 ]; then
   echo "Navnene er like"
else
   echo "Nanvnene er ulike"
fi

tall1=4
tall2=4

if [ $tall1 -eq $tall2 ]; then
   echo "Tallene er like"
else
   echo "Tallene er ulike"
fi

if [ $# -eq 1 ]; then
   echo "Det er en parameter"
elif [ $# -eq 0 ]; then
   echo "Det er ingen parametere"
elif [ $# > 1 ]; then
   echo "Det er $# parametere"
else
   echo "Her er det noe galt"
fi
