#! /bin/bash

regexp="ho"

echo "Matcher $regexp"

while read line
do
  if [[ $line =~ $regexp ]]; then # Den vesentlige syntaksen er $line =~ $regexp hvor nøyaktig det som er i $regexp$ blir matchet, hverken mer eller mindre.
    echo "match!"
  fi
done