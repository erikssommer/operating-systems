#! /bin/bash

streng=$1;

if [ -f $streng ]
then
   start=${streng:0:1}
   if [ "$start" = "/" ]
   then
    echo Absolutt path
   else
    echo Relativ path
   fi
else
   echo "Finner ikke filen $streng. Hvis den eksisterer er feil path angitt"
fi