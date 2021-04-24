#! /bin/bash

# shellcheck disable=SC2016
hash='$6$AB.f/K06$IsV3oABaBO4UEBertVwViFgqFcuRvPfBDBVojDJkwg43AlPlgfD.y8nCpjnb01EgwwrVaxpYRzYjgT5G1g4lw.'
salt=$(echo $hash | cut -d$ -f3)

for p in {a..z}{a..z}{a..z}
do
tmp=$(mkpasswd -m sha-512 -S "$salt" "$p")
if [ "$tmp" = "$hash" ]
then
echo Du har funnet passordet. Det er "$p"
break
fi
done