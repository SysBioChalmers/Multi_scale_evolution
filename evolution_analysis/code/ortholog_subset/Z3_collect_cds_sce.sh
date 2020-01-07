#!/bin/bash
cd /home/luhongzhong/protein_all_refine_sce
for i in *_aa.fasta
do
	cp /home/luhongzhong/cds_all_refine/${i%_aa.fasta}_code.fasta /home/luhongzhong/cds_all_refine_sce/
done

