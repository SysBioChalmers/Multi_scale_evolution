    #!/bin/bash
    cd /home/luhongzhong/ortholog_HGT/protein_align_s1_R/
    for i in *_aa_aligned.fasta
        do
        trimal -in $i -out /home/luhongzhong/ortholog_HGT/protein_align_s2/$i -resoverlap 0.75 -seqoverlap 75
        done
    