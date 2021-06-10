#! /bin/bash

# shellcheck disable=SC2048
for var in $*
do
if [ -f "$var" ]
then
# shellcheck disable=SC2086
echo $var er en fil.
if [ "${var:0:1}" = "/" ]
then
echo Filen er gitt med absolutt path
else
echo Filen er gitt med realtiv path
fi
else
echo "$var" er ikke en fil
fi
done