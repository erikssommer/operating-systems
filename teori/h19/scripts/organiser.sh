#! /bin/bash

for i in a b c
do
  mkdir ${i}dir
  mv ${i}* ${i}dir
done