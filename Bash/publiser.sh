#! /bin/bash

home=~

if [ ! -d $home/www/bilder ]; then
   mkdir -p $home/www/bilder
fi
chmod 755 $home/www
chmod 755 $home/www/bilder

for file in $home/www/* $home/www/bilder/*
do
   if [ -f $file ]; then
      chmod 644 $file
   fi
done