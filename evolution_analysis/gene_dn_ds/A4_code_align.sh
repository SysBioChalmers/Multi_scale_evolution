#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
cd /Users/luho/Documents/pan_genome/cds_all0/
for i in *_code_remove_stop_aa_aligned.fasta
do
    java -jar /Users/luho/Desktop/evolution_analysis/code/gene_dn_ds/macse.jar -prog reportGapsAA2NT -align_AA $i  -seq ${i%_code_remove_stop_aa_aligned.fasta}_code_remove_stop.fasta -out_NT ${i%_code_remove_stop_aa_aligned.fasta}_code_align.fasta
done