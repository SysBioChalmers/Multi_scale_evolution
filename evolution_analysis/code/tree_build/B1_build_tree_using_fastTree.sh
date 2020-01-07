#!/bin/bash
cd /home/luhongzhong/protein_all_align_s2_R/
for i in *_aa_aligned_trim.fasta
do
    FastTree -lg < $i > /home/luhongzhong/protein_all_align_tree/${i%_aa_aligned_trim.fasta}_aa.tre
done