#! /bin/bash

if [ -f "$1" ]
then
echo "$1" er en fil.
var=$1
if [ "${var:0:1}" = "/" ]
then
echo Filen er gitt med absolutt path
else
echo Filen er gitt med realtiv path
fi
else
echo "$1" er ikke en fil
fi