#! /bin/bash

for fil in *.cnf
do
  python runML.py "$fil" &
done