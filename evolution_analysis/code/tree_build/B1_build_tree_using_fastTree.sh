#!/bin/bash
# http://microbesonline.org/fasttree/
# Use the -wag or -lg options to use the WAG+CAT or LG+CAT model instead.
cd /home/luhongzhong/protein_all_align_s2_R/
for i in *_aa_aligned_trim.fasta
do
    FastTree -lg < $i > /home/luhongzhong/protein_all_align_tree/${i%_aa_aligned_trim.fasta}_aa.tre
done





# for the code alignment
# FastTree -gtr -nt alignment_file > tree_file
# If you do not specify -gtr, then FastTree will use the Jukes-Cantor + CAT model instead.
#mkdir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree
#cd /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new/
#    for i in *_code.fasta
#        do
#            FastTree -gtr -nt < $i > /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree/${i%_code.fasta}_aa.tre
#        done