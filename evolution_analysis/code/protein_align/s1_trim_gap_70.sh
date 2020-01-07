#!/bin/bash
#mafft
#trim
#fastree
#tree_format

# firstly build all the files
mkdir /home/luhongzhong/protein_all_align_s1
mkdir /home/luhongzhong/protein_all_align_s1_R
mkdir /home/luhongzhong/protein_all_align_s2
mkdir /home/luhongzhong/protein_all_align_s2_R
mkdir /home/luhongzhong/protein_all_align_tree

cd /home/luhongzhong/protein_all_align/
for i in *_aa_aligned.fasta
do
    trimal -in $i -out /home/luhongzhong/protein_all_align_s1/${i%_aa_aligned.fasta}_aa_aligned.fasta -gt 0.7
done


