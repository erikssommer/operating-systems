#! /bin/bash

regexp="ho"
teller=0

echo "Matcher $regexp"

while read line
do
  if [[ $line =~ $regexp ]]; then # Den vesentlige syntaksen er $line =~ $regexp hvor nøyaktig det som er i $regexp$ blir matchet, hverken mer eller mindre.
    echo "match!"
  fi

  ((teller++))

  if [ "$teller" -eq 4 ]; then
    echo "Avslutter!"
    exit 1
  fi
done