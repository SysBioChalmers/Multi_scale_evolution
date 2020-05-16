# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/")  # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test")  # which will store the code used in the pipeline

# all the analysis results were put in
os.system("mkdir /home/luhongzhong/ortholog_HGT/")


#####################################################
# protein_align
#####################################################
# firstly translate all the cds into protein
# protein align
with open("protein_align_step0.sh", "w") as rsh:
    rsh.write('''\
    #!/usr/bin/env bash
    mkdir /home/luhongzhong/ortholog_HGT/protein_align/
    cd /home/luhongzhong/ortholog_HGT/protein/
    for i in *.fasta
        do 
            mafft --auto $i > /home/luhongzhong/ortholog_HGT/protein_align/${i%.fasta}_aa_aligned.fasta
        done
    ''')
os.system("chmod u+x protein_align_step0.sh")
os.system("./protein_align_step0.sh")


# trim
with open("protein_align_step1.sh", "w") as rsh:
    rsh.write('''\
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
    ''')
os.system("chmod u+x protein_align_step1.sh")
os.system("./protein_align_step1.sh")


# filter protein with too short length
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_align/s2_remove_seq_reduce_length_by_50%.py -p1 /home/luhongzhong/ortholog_HGT/protein_align/ -p2 /home/luhongzhong/ortholog_HGT/protein_align_s1/ -o /home/luhongzhong/ortholog_HGT/protein_align_s1_R/")


# remove the spurious seq
with open("protein_align_step3.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_HGT/protein_align_s1_R/
    for i in *_aa_aligned.fasta
        do
        trimal -in $i -out /home/luhongzhong/ortholog_HGT/protein_align_s2/$i -resoverlap 0.75 -seqoverlap 75
        done
    ''')

os.system("chmod u+x protein_align_step3.sh")
os.system("./protein_align_step3.sh")


# further filtration
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
      code_dir0 + \
      "s4_final_filteration.py -p1 /home/luhongzhong/ortholog_HGT/protein_align_s2/ -o /home/luhongzhong/ortholog_HGT/protein_align_s2_R/"
os.system(cmd)


#####################################################
# build the tree
#####################################################
# build tree
with open("build_tree_step_test.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_HGT/protein_align_tree
    cd /home/luhongzhong/ortholog_HGT/protein_align_s2_R/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_HGT/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step_test.sh")
os.system("./build_tree_step_test.sh")