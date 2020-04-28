#!/bin/bash

BASEDIR=$(pwd)
mkdir -p $BASEDIR/FastQ-Trimmed
cp $BASEDIR/Templates/basedir.txt $BASEDIR/FastQ-Trimmed

for i in `cat SRAList.txt` ; do cat $BASEDIR/Templates/TRIMMOMATIC.template | \
sed s/SRA/$i/g > $BASEDIR/FastQ-Trimmed/$i.trim.pbs ; done

cd $BASEDIR/FastQ-Trimmed

for i in *trim.pbs ; do ccqsub -o $BASEDIR/Logs/$i.Trim.out \
-e $BASEDIR/Logs/$i.trim.err ./$i ; done

mkdir -p PBS 
mv *pbs PBS
