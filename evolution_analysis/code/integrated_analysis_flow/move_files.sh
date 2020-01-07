#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
cd /media/luhongzhong/newdisk/mafft_annotation/batch1/protein1
for i in *_aa_aligned.fasta
do
	cp /media/luhongzhong/newdisk/mafft_annotation/batch1/protein1/$i /home/luhongzhong/protein_align/
done
echo "moving the files have been done!"
