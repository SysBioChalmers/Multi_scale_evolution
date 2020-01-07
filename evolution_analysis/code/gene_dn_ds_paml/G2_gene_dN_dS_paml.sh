#!/bin/bash
cd /home/luhongzhong/cds_all_refine_align_unify
#cd /home/luhongzhong/cds_all_refine_align_sce_unify

for i in *_code.phy
do
	python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/cds_all_refine_align_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/cds_all_gene_dN_dS_result/${i%_code.phy}.out
	yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
done

