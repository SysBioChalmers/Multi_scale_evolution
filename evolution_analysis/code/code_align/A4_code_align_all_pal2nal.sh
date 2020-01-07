#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq

rm -rf /home/luhongzhong/cds_all_refine_align/
mkdir /home/luhongzhong/cds_all_refine_align/
cd /home/luhongzhong/cds_all_refine/
#pal2nal.pl  test.aln  test.nuc  -output paml  -nogap

for i in *_code.fasta
do
    perl /home/luhongzhong/Documents/evolution_analysis/code/code_align/pal2nal.v14/pal2nal.pl  /home/luhongzhong/protein_all_refine_align/${i%_code.fasta}_aa_aligned.fasta   /home/luhongzhong/cds_all_refine/$i  -output fasta  -nogap   >  /home/luhongzhong/cds_all_refine_align/$i

done

