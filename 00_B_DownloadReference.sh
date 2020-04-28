#!/bin/bash

#Change to the working directory
cd /mnt/orangefs/PBS-GEM/Reference

#Downlad the reference genome (FASTA format) and associated gene coordinate file (GFF3 format)
wget ftp://ftp.ensemblgenomes.org/pub/release-35/plants/fasta/arabidopsis_thaliana/dna/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa.gz
wget ftp://ftp.ensemblgenomes.org/pub/release-35/plants/gff3/arabidopsis_thaliana/Arabidopsis_thaliana.TAIR10.35.gff3.gz
gunzip *.gz
