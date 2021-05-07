#! /bin/bash

while [ $# -gt 0 ] # Saa lenge det er noe i $*
do
  echo "arg: $1"
  shift # Skyver ut $1 og legger neste argument i $1
done