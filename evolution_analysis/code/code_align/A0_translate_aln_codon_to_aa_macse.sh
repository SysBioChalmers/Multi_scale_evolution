#!/bin/bash
mkdir /media/luhongzhong/newdisk/Genomics_data/protein/
cd /media/luhongzhong/newdisk/Genomics_data/cds/
for i in *.fasta
    do
        java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog translateNT2AA -seq /media/luhongzhong/newdisk/Genomics_data/cds/$i
    done

cd /media/luhongzhong/newdisk/Genomics_data/cds/
for i in *_AA.fasta
    do
        mv $i /media/luhongzhong/newdisk/Genomics_data/protein/
    done
echo "moving the files have been done!"
    
    