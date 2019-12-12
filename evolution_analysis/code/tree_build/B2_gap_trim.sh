#!/bin/bash
#mafft
#trim
#fastree
#tree_format
# gt: the minimum fraction of sequences without a gap that you require to consider a column of “enough quality
cd /Users/luho/Documents/pan_genome/protein_test
for i in *_aa_aligned.fasta
do
    trimal -in $i -out ${i%_aa_aligned.fasta}_aa_aligned_trim.fasta -gt 0.7 -cons 60
done


