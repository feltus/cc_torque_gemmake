#!/bin/bash

BASEDIR=$(pwd)
mkdir -p Count
cp $BASEDIR/Templates/basedir.txt $BASEDIR/Count

for i in `cat SRAList.txt` ; do cat $BASEDIR/Templates/STRINGTIE.template \
| sed s/SRA/$i/g > $BASEDIR/Count/$i.stringtie.pbs ; done

cd $BASEDIR/Count

for i in *tie.pbs ; do ccqsub -o $BASEDIR/Logs/$i.out \
-e $BASEDIR/Logs/$i.err ./$i ; done

mkdir -p PBS
mv *pbs PBS
