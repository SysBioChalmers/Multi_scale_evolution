#!/usr/bin/env bash

mkdir /home/luhongzhong/protein_sce_conservation_score
cd /home/luhongzhong/protein_all_refine_align_sce

for i in *_aa_aligned.fasta
do
	cd /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation
	python2 score_conservation.py  -g 0.3 -o /home/luhongzhong/protein_sce_conservation_score/${i%_aa_aligned.fasta}_conservation_score_jsd /home/luhongzhong/protein_all_refine_align_sce/$i
done
