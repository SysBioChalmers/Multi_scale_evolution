#!/bin/bash
#mafft
#trim
#fastree
#tree_format

cd /Users/luho/Documents/protein_test
for i in *_aa_aligned.fasta
do
    trimal -in $i -out ${i%_aa_aligned.fasta}_aa_aligned_trim.fasta -gt 0.9 -cons 60
done


