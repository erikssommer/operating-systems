#! /bin/bash

if [ ! -d $1 ]; then
   echo "Oppretter mappen!"
   mkdir $1
   cd $1
   touch fil1.txt
   touch fil2.txt
else
   echo "Mappen eksisterer allerede"
fi
