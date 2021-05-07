#! /bin/bash

users(){
  date
  who
}

users # Kall paa en funksjon ETTER deklarasjon

findUser(){
  echo "funk-args: $*"
  local bruker # Lokal variabel
  bruker=$1

  funn=$(grep ^bruker /etc/passwd) # Global
  if [ "$funn" ]; then
      return 0 # Alt ok
  fi
  return 1
}

# Hovedprog

echo "Script args: $*"

for user in $*
do
  echo -e "\nLeter etter $user" # -e tillater \n
  findUser $user
  if [ $? = 0 ] # Returnverdi fra findUser i $?
  then
    echo "$user finnes"
    echo $funn # $funn er global
  else
    echo "$user finnes ikke"
  fi
done

echo -e "\nScript-arg: $*"