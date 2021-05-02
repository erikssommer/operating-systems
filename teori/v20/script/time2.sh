#! /bin/bash

fra=$(date -d $1 +%s)
til=$(date -d $2 +%s)

diff=$(($til - $fra))

diffTMS=$(date -d@$diff -u +%H:%M:%S)

echo "$diffTMS"