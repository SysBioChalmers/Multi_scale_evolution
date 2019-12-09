#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
cd /Users/luho/Documents/cluster_result/cds_all0
for i in *.phy
do
	cp /Users/luho/Documents/cluster_result/cds_all0/$i /Users/luho/Documents/cds_align/
done