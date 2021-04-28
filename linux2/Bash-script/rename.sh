#! /bin/bash

if [ $# -ne 2 ]
then
    echo "Syntaks: $0 fra-endelse til-endelse"
    exit
fi

fra=$1
til=$2

for fil in *.$fra
do
   if [ -f $fil ]
   then
      name=$(basename $fil .$fra)
      mv $fil $name.$til
      echo "Endrer $fil til $name.$til"
      found=true
   fi
done

if [ ! $found ]
then
    echo "Fant ingen filer med filendelse $fra"
fi

# Eksempel paa bruk
# $ ./rename.sh wav mp3
# Endrer fil.wav til fil.mp3
# Endrer fil2.wav til fil2.mp3