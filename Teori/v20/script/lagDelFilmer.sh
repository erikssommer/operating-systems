#! /bin/bash

video=$1
vid=$(basename -s .mp4 $1)
shift

part=0

while [ $# -gt 0 ] # Saa lenge det er noe i $*
do
    start=$1
    shift
    stop=$2

    toSec=$(date -d "$stop" "+%s")
    fromSec=$(date -d "$stop" "+%s")
    diffSec=$(($toSec - $fromSec))
    diff=$(date -d@$diffSec -u +%H:%M:%S)
    ((part++))
    ./fromTo.sh $video $vid$part.mp4 $start $diff
    shift # Skyver ut $1 og legger neste argument i $1
done