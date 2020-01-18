#!/bin/bash
cd /home/luhongzhong/ortholog_sce_prune/cds_align_macse

for i in *_code.fasta
  do

	  hyphy meme --alignment /home/luhongzhong/ortholog_sce_prune/cds_align_macse/$i --tree /home/luhongzhong/ortholog_sce_prune/unroot_tree/${i%_code.fasta}_aa_unroot.tre --pvalue 0.1

  done

# Error:
# Internal error in  _LikelihoodFunction::GradientLocateTheBump: in the Brent loop iteration 1. -8.694365600932544 / -8.694365600931965.
