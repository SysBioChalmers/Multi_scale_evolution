#!/bin/bash
cd /home/luhongzhong/cds_all_refine_align_unify
for i in *_code.phy
do
	hyphy fel --alignment /home/luhongzhong/cds_all_refine_align_unify/$i --tree /home/luhongzhong/protein_all_align_tree_unify/${i%_code.phy}_aa_unroot_unify.tre --srv Yes --pvalue 0.1 --output /home/luhongzhong/cds_all_gene_fel_result/${i%_code.phy}.FEL.json

done

#TEST

