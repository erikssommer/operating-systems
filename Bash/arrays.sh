#! /bin/bash

tall[0]=null
tall[1]=1
tall[2]=5
tall[3]=3

echo "Antall elementer: ${#tall[@]}" # Antall elementer

for t in "${tall[@]}" # Alle verdier
do
  echo "$t"
done

for t in "${!tall[@]}" # Index
do
  echo "Tall nr $t er ${tall[$t]}"
done

navn=("Per" "Ola" "Nora" "Julie")

for (( i = 0; i < ${#navn[@]}; i++ )); do
    echo "${navn[$i]}"
done
