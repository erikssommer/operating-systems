#!/bin/bash

tar cfzP dir.tgz /tmp/dir

echo "1. packed /tmp/dir into dir.tgz"

scp ./dir.tgz s341870@os28.vlab.cs.hioa.no:~/

echo "2. moved file to os28"

rm ./dir.tgz

echo "3. removed temp file from source"

ssh s341870@os28.vlab.cs.hioa.no -t "tar xfzP ~/dir.tgz"
echo "4. unziped file on destination"

ssh s341870@os28.vlab.cs.hioa.no -t "rm ~/dir.tgz"
echo "5. removed temp file on destination"