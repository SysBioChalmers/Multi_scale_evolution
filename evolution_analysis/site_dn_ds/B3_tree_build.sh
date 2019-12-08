#!/bin/bash
#mafft
#trim
#fastree
#tree_format

cd /Users/luho/Documents/pan_genome/protein_test
for i in *_aa_aligned_trim.fasta
do
    FastTree -lg < $i > ${i%_aa_aligned_trim.fasta}_aa.tre

done


