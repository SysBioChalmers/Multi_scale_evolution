#!/bin/bash
cd /Users/luho/Documents/pan_genome/cds_align_test
for i in *_code_align.phy
do
	python /Users/luho/Desktop/evolution_analysis/code/site_dn_ds/C1_produce_control_file.py -n /Users/luho/Documents/pan_genome/cds_align_test/$i -t /Users/luho/Documents/pan_genome/protein_test/${i%_code_align.phy}_aa_unroot_unify.tre -c  /Users/luho/Desktop/evolution_analysis/paml_model/site_model/ -o /Users/luho/Documents/pan_genome/site_result/${i%_code_align.phy}.out
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M0/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M1a/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M2a/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M3/codeml_test.ctl
	codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M7/codeml_test.ctl
	codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M8/codeml_test.ctl
	#codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M8a/codeml_test.ctl
done