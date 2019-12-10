#!/bin/bash
cd /Users/luho/Desktop/evolution_analysis/data/cds_seq/

for i in *_code_align.fasta
do
	hyphy meme --alignment /Users/luho/Desktop/evolution_analysis/data/cds_seq/$i --tree /Users/luho/Desktop/evolution_analysis/data/tree/${i%_code_align.fasta}_aa_unroot.tre --pvalue 0.1

done