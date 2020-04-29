# cc_torque_gemmake
This workfllow generates a gene expression matrix from a set of SRA RNAseq files using the torque schedular on CloudyCluster.  Check out CloudyCluster at http://cloudycluster.com/.

**From the cc_torque_gemmake directory, run these workflow steps.

**Install software.
./00_A_Initiate.sh

#**ownload the reference genome.
./00_B_DownloadReference.sh

**Index the genome (Note you can change the indexed genome root name here).
./00-C-IndexGenome.sh

**Run the Workflow (Note: you can change the SRA files in SRAList.txt)
./01-Prepare-inputs.sh \
./02-Trim-reads.sh \
./03-Map-reads.sh \
./04-Count-transcripts.sh \
./05-GEM-parse.sh \
