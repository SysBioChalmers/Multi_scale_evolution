#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
mkdir /home/luhongzhong/cds_all_refine_align_sce/
cd /home/luhongzhong/cds_all_refine_sce/
for i in *_code.fasta
do
    java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/protein_all_refine_align_sce/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/cds_all_refine_align_sce/$i
done

