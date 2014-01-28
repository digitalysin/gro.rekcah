#!/bin/bash

echo "please wait while decoding doll.bin!"

cp doll.bin doll.tmp

while true; do
    zcat doll.tmp > doll2.tmp 2>/dev/null
    [ $? -ne 0 ] && cat doll.tmp && rm -f doll2.tmp doll.tmp && exit
    mv doll2.tmp doll.tmp
done
