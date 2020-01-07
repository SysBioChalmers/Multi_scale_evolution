#!/bin/bash
cd /Users/luho/Documents/pan_genome/cds_all0/
for i in *_code_remove_stop_aa.fasta
do
    mafft --quiet $i > ${i%_code_remove_stop_aa.fasta}_code_remove_stop_aa_aligned.fasta
done