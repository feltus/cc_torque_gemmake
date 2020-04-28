#!/bin/bash

BASEDIR=$(pwd)
mkdir -p $BASEDIR/GEM
mkdir -p $BASEDIR/GEM/transcripts
cp $BASEDIR/Templates/basedir.txt $BASEDIR/GEM
cp $BASEDIR/Templates/basedir.txt $BASEDIR/GEM/transcripts

cd $BASEDIR/Templates

ccqsub -o $BASEDIR/Logs/GEM.out -e $BASEDIR/Logs/GEM.err \
./GEM.template
