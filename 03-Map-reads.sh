#!/bin/bash

if [ $# -lt 1 ]
then
	echo usage: 03-Map-reads.sh REF 1>&2
	exit 1
fi

REF=$1

BASEDIR=$(pwd)
mkdir -p $BASEDIR/Alignment
cp $BASEDIR/Templates/basedir.txt $BASEDIR/Alignment

for i in `cat $BASEDIR/SRAList.txt` ; do cat $BASEDIR/Templates/HISAT.template \
| sed s/SRA/$i/g | sed s/REF/$REF/ > $BASEDIR/Alignment/$i.hisat.pbs ; done

cd $BASEDIR/Alignment

for i in *hisat.pbs ; do ccqsub -o $BASEDIR/Logs/$i.out \
-e $BASEDIR/Logs/$i.err ./$i ; done

mkdir -p PBS
mv *pbs PBS
