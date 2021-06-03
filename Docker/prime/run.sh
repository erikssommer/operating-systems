#! /bin/bash

for i in {1..4}
do
    (time ./a.out) > res$i.txt 2> tid$i.txt &
done

sleep 15
