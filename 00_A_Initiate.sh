#!/bin/bash

pwd > basedir.txt
BASEDIR=$(pwd)
cp basedir.txt $BASEDIR/Templates 
cp basedir.txt $BASEDIR/Logs/Pro

cd Software

wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip
wget ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.0/sratoolkit.2.9.0-centos_linux64.tar.gz
wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-2.1.2.Linux_x86_64.tar.gz
wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-Linux_x86_64.zip
wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2

unzip Trimmomatic-0.39.zip
tar xfz sratoolkit.2.9.0-centos_linux64.tar.gz
tar xfz stringtie-2.1.2.Linux_x86_64.tar.gz
unzip hisat2-2.1.0-Linux_x86_64.zip
bunzip2 samtools-1.10.tar.bz2
tar xf samtools-1.10.tar

cd samtools-1.10
./configure
make
