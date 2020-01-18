#!/bin/bash
cd /Users/luho/Documents/pan_genome/cds_all0
for i in *_code_align.phy
do
	python /Users/luho/Desktop/evolution_analysis/code/site_dn_ds/E1_produce_control_file.py -n /Users/luho/Documents/pan_genome/cds_all0/$i -t /Users/luho/Documents/pan_genome/protein_test/${i%_code_align.phy}_aa_unroot_unify.tre -c /Users/luho/Documents/PAML/branch_site_model/ -o /Users/luho/Documents/pan_genome/branch_site_result/${i%_code_align.phy}.out
	codeml /Users/luho/Documents/PAML/branch_site_model/ModelA/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/branch_site_model/ModelAnull/codeml_test.ctl
done

