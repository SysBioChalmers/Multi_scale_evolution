    #!/bin/bash
    # firstly build all the files
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_s1
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_s1_R
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_s2
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_s2_R
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_tree

    cd /home/luhongzhong/ortholog_HGT/protein_align/
    for i in *_aa_aligned.fasta
        do
            trimal -in $i -out /home/luhongzhong/ortholog_HGT/protein_align_s1/${i%_aa_aligned.fasta}_aa_aligned.fasta -gt 0.7
        done
    