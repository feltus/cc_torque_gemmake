#!/bin/bash

BASEDIR=$(pwd)
mkdir -p $BASEDIR/FastQ
#cp $BASEDIR/Templates/basedir.txt $BASEDIR/FastQ

for i in `cat SRAList.txt` ; do cat $BASEDIR/Templates/FASTQ-DUMP.template | \
sed s/SRAID/$i/g > $BASEDIR/FastQ/$i.FastQDump.pbs ; done

cd $BASEDIR/FastQ

for i in *Dump.pbs ; do ccqsub -o $BASEDIR/Logs/$i.SRA.out \
-e $BASEDIR/Logs/$i.SRA.err ./$i ; done

mkdir -p PBS
mv *pbs PBS
