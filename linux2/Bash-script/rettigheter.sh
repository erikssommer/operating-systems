#! /bin/bash
if [ -e ~/www ]
then
find ~/www -type f -name "*.*" -exec chmod 644 {} +
echo "Rettighetene til filene i ~/www er endret til 644"
else
mkdir ~/www
chmod 755 ~/www
echo "Opprettet ~/www og satt rettigheter til 755"
fi

if [ -e ~/www/bilder ]
then
find ~/www/bilder -type f -name "*.*" -exec chmod 644 {} +
echo "Rettighetene til filene i ~/www/bilder er endret til 644"
else
mkdir ~/www/bilder
chmod 755 ~/www/bilder
echo "Opprettet ~/www/bilder og satt rettigheter til 755"
fi