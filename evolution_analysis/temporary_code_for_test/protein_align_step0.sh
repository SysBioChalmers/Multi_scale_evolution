    #!/usr/bin/env bash
    mkdir /home/luhongzhong/ortholog_HGT/protein_align/
    cd /home/luhongzhong/ortholog_HGT/protein/
    for i in *.fasta
        do 
            mafft --auto $i > /home/luhongzhong/ortholog_HGT/protein_align/${i%.fasta}_aa_aligned.fasta
        done
    