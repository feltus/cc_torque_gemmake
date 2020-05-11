# cc_torque_gemmake
This workflow generates a gene expression matrix from a set of SRA RNAseq files using the torque schedular on CloudyCluster.  Check out CloudyCluster at http://cloudycluster.com/.

**CAUTION: This workflow will process several large RNAseq datasets.  This will cost cloud credits.  To cheaply test it, you can change the FASTQ download to limit the number of sequences to transfer from NCBI.**

**From the cc_torque_gemmake directory, run these workflow steps.

NOTE: Make sure to make all script executable. (e.g. 'chmod +x *.sh')

**Install software** \
./00_A_Initiate.sh

**Download the reference genome** \
./00_B_DownloadReference.sh

**Index the genome (Note you can change the indexed genome root name here)** \
./00-C-IndexGenome.sh

**Run the Workflow (Note: you can change the SRA files in SRAList.txt)** \
./01-Prepare-inputs.sh \
./02-Trim-reads.sh \
./03-Map-reads.sh \
./04-Count-transcripts.sh \
./05-GEM-parse.sh
