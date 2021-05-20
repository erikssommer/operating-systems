#! /bin/bash

if [ ! -d $1 ]; then
   echo "Oppretter mappen!"
   mkdir $1
   cd $1
   touch fil1.txt
   touch fil2.txt
   echo "Opprette ny mappe? (y/n): "
   read line
   if [ $line = "y" ]; then
      echo "Hva skal mappen hete?: "
      read line
      mkdir $line
      cd $line
      touch fil3.txt
   else
      echo "Den er grei. Avslutter!"
   fi
else
   echo "Mappen eksisterer allerede"
fi
