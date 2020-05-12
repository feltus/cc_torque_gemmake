# cc_torque_gemmake
This workflow generates a gene expression matrix from a set of SRA RNAseq files using the torque schedular on CloudyCluster.  Check out CloudyCluster at http://cloudycluster.com/.

**CAUTION: This workflow will process several large RNAseq datasets.  This will cost cloud credits.  To cheaply test it, you can change the fastq-dump download to limit the number of sequences to transfer from NCBI-SRA.**

**From the cc_torque_gemmake directory, run these workflow steps.

NOTE: After cloning this repository, make sure to make all script executable (e.g. 'chmod +x *.sh').

**Install software** \
*./00_A_Initiate.sh* #This script will set up the directory environment and download/unpack open source genomics software.

**Download the reference genome** \
*./00_B_DownloadReference.sh* #This script will download the reference genome (FASTA format) and gene feature coordinate files (GFF3 format). This script can be modified to download any reference genome but conatins the Arabidopsis thaliana plant genome by default.

**Index the genome (Note you can change the indexed genome root name here)** \
*./00-C-IndexGenome.sh* #This script will index the reference genome for mapping with hisat2 software.

**Run the Workflow (Note: you can change the SRA files in SRAList.txt)** \
*./01-Prepare-inputs.sh* \ #This script will download FASTQ files based on the SRA identifiers in the SRAList.txt file.\
*./02-Trim-reads.sh* \ #This script will trim the FASTQ files with trimmomatic.\
*./03-Map-reads.sh* \ #This script will map reads to the indexed reference genome with hisat2.\
*./04-Count-transcripts.sh* \ #This script will count mapped reads with stringtie.\
*./05-GEM-parse.sh* \#This script will create an FPKM gene expression matrix (GEM) for each dataset that can be used for downstream workflows including differential gene expression analysis, gene co-expression network construction, machine learning classification, etc.
