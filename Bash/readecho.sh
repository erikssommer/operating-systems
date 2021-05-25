#! /bin/bash

if [ ! $# -lt 1 ]; then
   echo $* | while read A B R; do
      echo $A $B
   done
else
   echo "studwww 7878 80092 02:15   0:00 [apache]" | 
   while read A B R
   do
      echo $A $B
   done
fi
