#!/bin/bash
#cd /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code
#for i in *_code.fasta.FUBAR.json
#do
#	mv $i /home/luhongzhong/ortholog_343/fubar_result
#done
#echo "moving the files have been done!"

# move file on the cluster
cd /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code
for i in *_code.fasta.MEME.json
do
	mv $i /c3se/NOBACKUP/users/luho/meme_result
done
echo "moving the files have been done!"