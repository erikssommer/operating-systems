#! /bin/bash
fil=$$1

if [ -f "$fil" ]; then
  echo $fil er en fil
elif [ -d "$fil" ]; then
  echo $fil er en mappe
else
  echo $fil er hverken fil eller mappe
fi
