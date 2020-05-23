#!/bin/bash
cd /home/luhongzhong/Documents/evolution_analysis/hyphy_model/leisr_bf
for i in *_aa_aligned_test.bf
do
	hyphy /home/luhongzhong/Documents/evolution_analysis/hyphy_model/leisr_bf/$i
done

# test
# python /home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -n /home/luhongzhong/protein_all_refine_align_sce/OG5327_aa_aligned.fasta -t /home/luhongzhong/protein_all_align_tree/OG5327_aa.tre -c  /home/luhongzhong/Documents/evolution_analysis/hyphy_model/


