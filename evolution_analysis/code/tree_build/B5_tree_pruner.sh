#!/usr/bin/env bash

# NOTE: the pruner tree is put in :/home/luhongzhong/protein_all_align_s2_R/. And we need transfer it into:

cd /home/luhongzhong/protein_all_align_tree/

for i in *_aa.tre

do
	cd /home/luhongzhong/Documents/PhyloTreePruner

	java PhyloTreePruner /home/luhongzhong/protein_all_align_tree/$i 4 /home/luhongzhong/protein_all_align_s2_R/${i%_aa.tre}_aa_aligned_trim.fasta 0.5 u⁩

	mv /home/luhongzhong/protein_all_align_s2_R/${i%_aa.tre}_aa_aligned_trim.fasta_pruned.fa /home/luhongzhong/protein_all_align_s3_pruner/
done





