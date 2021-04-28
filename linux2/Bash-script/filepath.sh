#! /bin/bash

streng=$1;

if [ -f $streng ]
then
   start=${streng:0:1} #${variabel:offset:length} for å trekke ut ett tegn fra en streng
   if [ "$start" = "/" ]
   then
    echo Absolutt path
   else
    echo Relativ path
   fi
else
   echo "Finner ikke filen $streng. Hvis den eksisterer er feil path angitt"
fi