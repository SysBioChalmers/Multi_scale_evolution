#!/bin/bash
cd /Users/luho/Documents/pan_genome/cds_align_test
for i in *_code_align.phy
do
	python /Users/luho/Desktop/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /Users/luho/Documents/pan_genome/cds_align_test/$i -c /Users/luho/Desktop/evolution_analysis/paml_model/yn00_model/ -o /Users/luho/Documents/pan_genome/gene_dN_dS_result/${i%_code_align.phy}.out
	yn00 /Users/luho/Desktop/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
done

