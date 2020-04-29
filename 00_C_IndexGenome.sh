#!/bin/bash

#Change the reference genome index root name as needed
REF_PREFIX=TAIR10

cat ./Templates/Index.template | sed s/REF_PREFIX/$REF_PREFIX/g >> \
./Reference/RefIndex.pbs

cd ./Reference/

ccqsub  ./RefIndex.pbs
