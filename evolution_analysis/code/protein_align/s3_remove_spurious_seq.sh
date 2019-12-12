#!/bin/bash
#mafft
#trim
#fastree
#tree_format

mkdir /home/luhongzhong/protein_all_align_s2/
cd /home/luhongzhong/protein_all_align_s1_R/
for i in *_aa_aligned_trim.fasta
do
    trimal -in $i -out /home/luhongzhong/protein_all_align_s2/$i -resoverlap 0.75 -seqoverlap 75
done

