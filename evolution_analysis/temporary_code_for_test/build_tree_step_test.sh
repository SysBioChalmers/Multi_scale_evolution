    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_tree
    cd /home/luhongzhong/ortholog_HGT/protein_align_s2_R/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_HGT/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
            done
    