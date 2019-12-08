#!/bin/bash
#mafft
#trim
#fastree
#tree_format

cd /Users/luho/Documents/pan_genome/protein_test
for i in *_aa.fasta
do
    mafft --quiet $i > ${i%_aa.fasta}_aa_aligned.fasta
done


