#! /bin/bash

(time ./a.out &) > res1.txt 2> tid1.txt
(time ./a.out &) > res2.txt 2> tid2.txt
(time ./a.out &) > res3.txt 2> tid3.txt
(time ./a.out &) > res4.txt 2> tid4.txt

sleep 15
