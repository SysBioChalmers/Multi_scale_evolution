#!/bin/bash
cd /Users/luho/Desktop/evolution_analysis/data/protein_seq/
for i in *_aa_aligned.fasta
do
	python /Users/luho/Desktop/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -n /Users/luho/Desktop/evolution_analysis/data/protein_seq/$i -t /Users/luho/Desktop/evolution_analysis/data/tree/${i%_aa_aligned.fasta}_aa_aligned_trim2.tre -c  /Users/luho/Desktop/evolution_analysis/hyphy_model/
	hyphy /Users/luho/Desktop/evolution_analysis/hyphy_model/runLEISR0_test.bf
done