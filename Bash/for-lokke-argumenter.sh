#! /bin/bash

if [ $# -lt 1 ]; then
    echo No arguments
    exit 1 # Avslutter scriptet
fi

for arg in $*
do
  echo $arg was an argument
done

echo total number: $#