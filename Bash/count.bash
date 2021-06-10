#! /bin/bash

(( dtot=0 ))
(( ftot=0 ))
(( ltot=0 ))

for fil in $(find .)
do
    if [ -L "$fil" ]; then
           (( ltot += 1 ))
    elif [ -f "$fil" ]; then
           (( ftot += 1 ))
    elif [ -d "$fil" ]; then
           (( dtot += 1 ))
    fi
done

echo Filer: $ftot
echo Kataloger: $dtot
echo Linker: $ltot