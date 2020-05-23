#!/bin/bash
cd /home/luhongzhong/protein_all_refine_align_sce
for i in *_aa_aligned.fasta
do
	python /home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -p /home/luhongzhong/protein_all_refine_align_sce/$i -t /home/luhongzhong/protein_all_align_tree/${i%_aa_aligned.fasta}_aa_unroot.tre -c  /home/luhongzhong/Documents/evolution_analysis/hyphy_model/
	hyphy /home/luhongzhong/Documents/evolution_analysis/hyphy_model/runLEISR0_test.bf
done

# test
# python /home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -n /home/luhongzhong/protein_all_refine_align_sce/OG5327_aa_aligned.fasta -t /home/luhongzhong/protein_all_align_tree/OG5327_aa.tre -c  /home/luhongzhong/Documents/evolution_analysis/hyphy_model/


