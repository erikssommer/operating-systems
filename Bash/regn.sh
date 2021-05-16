#! /bin/bash

(( max = 300000 ))
(( i = 0 ))
(( sum = 0 ))

while (($i < $max))
do
   (( i++ ))
   (( sum += i ))
done

echo $0, resultat: $sum
