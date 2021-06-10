#! /bin/bash

if [ ! "$1" ]
then
  nr=3 # to mellomrom etter cpu
else
  nr=$(($1 + 2))
fi

for i in $(seq 1 30)
do
  idle1=$(grep cpu /proc/stat | head -n 1 | cut -d ' ' -f $nr) # kolonneskille gitt ved -d ' '
  sleep 1
  idle2=$(grep cpu /proc/stat | head -n 1 | cut -d ' ' -f $nr) # klipper ut kolonne $1 gitt ved -f2
  ((idle = idle2 - idle1))
  echo $idle
done
