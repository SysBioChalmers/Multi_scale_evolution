#!/bin/bash
cd /home/luhongzhong/cds_all_refine_align_unify
for i in *_code.phy
do
	python /home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/C1_produce_control_file.py -n /home/luhongzhong/cds_all_refine_align_unify/$i -t /home/luhongzhong/protein_all_align_tree_unify/${i%_code.phy}_aa_unroot_unify.tre -c  /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/ -o /home/luhongzhong/cds_all_gene_site_dN_dS_result/${i%_code.phy}.out
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M0/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M1a/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M2a/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M3/codeml_test.ctl
	codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M7/codeml_test.ctl
	codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M8/codeml_test.ctl
	codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M8a/codeml_test.ctl
done
