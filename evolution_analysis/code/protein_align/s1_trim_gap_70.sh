#!/bin/bash
#mafft
#trim
#fastree
#tree_format

cd /home/luhongzhong/protein_all_align/
for i in *_aa_aligned.fasta
do
    trimal -in $i -out /home/luhongzhong/protein_all_align_s1/${i%_aa_aligned.fasta}_aa_aligned_trim.fasta -gt 0.7
done


