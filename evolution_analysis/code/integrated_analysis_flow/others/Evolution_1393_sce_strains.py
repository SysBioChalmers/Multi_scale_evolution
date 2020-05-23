# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/") # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test") # which will store the code used in the pipeline


#####################################################
# protein_align
#####################################################
# cds translation
# for the cds data preprocess, first of all, we add cds from sce_288c in each gene group
# please run -- python Z6_Add_sce_288c_coden_seq_as_reference.py
# after this we can obtain the file "cds" from the file "cds_original", based on this file, we conduct the followed analysis.

with open("A1_translate_aln_codon_to_aa_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein/
cd /media/luhongzhong/newdisk/pan_genome_gang/cds/
for i in *.fasta
    do
        java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog translateNT2AA -seq /media/luhongzhong/newdisk/pan_genome_gang/cds/$i
    done

cd /media/luhongzhong/newdisk/pan_genome_gang/cds/
for i in *_AA.fasta
    do
        mv $i /media/luhongzhong/newdisk/pan_genome_gang/protein/
    done
echo "moving the files have been done!"
    
    ''')
os.system("chmod u+x A1_translate_aln_codon_to_aa_macse.sh")
os.system("./A1_translate_aln_codon_to_aa_macse.sh")


# protein align
with open("protein_align_step0.sh", "w") as rsh:
    rsh.write('''\
    #!/usr/bin/env bash
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align/
    cd  /media/luhongzhong/newdisk/pan_genome_gang/protein/
    for i in *_AA.fasta
        do 
            mafft --auto $i > /media/luhongzhong/newdisk/pan_genome_gang/protein_align/${i%_AA.fasta}_aa_aligned.fasta
        done
    ''')
os.system("chmod u+x protein_align_step0.sh")
os.system("./protein_align_step0.sh")


# trim
with open("protein_align_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    # firstly build all the files
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1_R
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2_R
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_tree

    cd /media/luhongzhong/newdisk/pan_genome_gang/protein_align/
    for i in *_aa_aligned.fasta
        do
            trimal -in $i -out /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1/${i%_aa_aligned.fasta}_aa_aligned.fasta -gt 0.7
        done
    ''')
os.system("chmod u+x protein_align_step1.sh")
os.system("./protein_align_step1.sh")


# filter protein with too short length
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_align/s2_remove_seq_reduce_length_by_50%.py -p1 /media/luhongzhong/newdisk/pan_genome_gang/protein_align/ -p2 /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1/ -o /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1_R/")


# remove the spurious seq
with open("protein_align_step3.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s1_R/
    for i in *_aa_aligned.fasta
        do
        trimal -in $i -out /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2/$i -resoverlap 0.75 -seqoverlap 75
        done
    ''')

os.system("chmod u+x protein_align_step3.sh")
os.system("./protein_align_step3.sh")

"""
# unify the protein name??
# so that in the tree building phase, the gene ID will be not changed.
# this step is species for 1011 sce strains
# will be not used for the 1393 sce strains
os.system("mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2_ID_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s6_protein_ID_unify_for_1011_sce.py -n /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2/  -o /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2_ID_unify/"
os.system(cmd)"""


#####################################################
# build the tree
#####################################################
# step1 build tree
with open("build_tree_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /media/luhongzhong/newdisk/pan_genome_gang/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step1.sh")
os.system("./build_tree_step1.sh")


# step2 unroot tree
# Note: please check the "\\" in the newly produced scripts
# here to avoid \\ is changed into \ in the output, \\ is changed into \\\ firstly
with open("B2_unroot_tree.R", "w") as rsh:
    rsh.write('''\
#---------------------------------
# unroot() in ape
# This is used to unroot tree
# and remove the bootstrap values
#---------------------------------
library(ape)
tree_dir <- "/media/luhongzhong/newdisk/pan_genome_gang/protein_align_tree"

allfile  <- list.files(tree_dir)
allfile <- allfile[grepl(".*\\\.tre", allfile)]
allfile <- allfile[!grepl(".*\\\_unroot.tre", allfile)]
for (i in allfile){
  print(i)
  treefile <- file.path(tree_dir, i)
  s0 <- read.tree(file = treefile, text = NULL, tree.names = NULL, skip = 0,
                  comment.char = "", keep.multi = FALSE)
  # plot(s0)
  
  if(length(s0$tip.label)>=3){ # to avoid one tree only has less than two tips
  s1 <- unroot(s0)
  plot(s1)
  s1$node.label <- NULL # Erase the bootstrap values from the phylo object
  plot(s1)
  i_out <- gsub("_aa", "_aa_unroot", i)
  output_dir <- file.path(tree_dir, i_out)
  write.tree(s1, file = output_dir)
  } else{
  next
  }
  
}
    ''')

with open("unroot_tree.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    Rscript B2_unroot_tree.R
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/unroot_tree/
    cd /media/luhongzhong/newdisk/pan_genome_gang/protein_align_tree
    for i in *_aa_unroot.tre
        do 
            mv $i /media/luhongzhong/newdisk/pan_genome_gang/unroot_tree/
        done
    echo "moving the files have been done!"

    ''')

os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")

####################################################
# codon align
####################################################
# extract the original protein seq based on the trim result
# here should be more careful!! Maybe just the extract the original protein seq based on the trimmed result, then re-align it!
# This step is different from yeast species!!

with open("coden_align_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/protein_refine
    cd /home/luhongzhong/Documents/evolution_analysis/code/protein_align
    python s5_collect_proteinID_high_quality.py -p0 /media/luhongzhong/newdisk/pan_genome_gang/protein_align/ -p1 /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2/ -o /media/luhongzhong/newdisk/pan_genome_gang/protein_refine/ -t unprune
    ''')
os.system("chmod u+x coden_align_step1.sh")
os.system("./coden_align_step1.sh")


# extract the original codon seq based on the trim result
with open("coden_align_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /media/luhongzhong/newdisk/pan_genome_gang/cds_refine/
    cd /home/luhongzhong/Documents/evolution_analysis/code/code_align
    python A2_extract_cds_from_align_protein.py -n /media/luhongzhong/newdisk/pan_genome_gang/cds/ -p1 /media/luhongzhong/newdisk/pan_genome_gang/protein_align_s2/ -o /media/luhongzhong/newdisk/pan_genome_gang/cds_refine/
     ''')
os.system("chmod u+x coden_align_step2.sh")
os.system("./coden_align_step2.sh")


# annote the cds using the original aligned protein with macse
with open("coden_align_macse.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash

    mkdir /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse/
    cd /media/luhongzhong/newdisk/pan_genome_gang/cds_refine/
    for i in *.fasta
        do
            java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /media/luhongzhong/newdisk/pan_genome_gang/protein_refine/${i%.fasta}_aa_aligned.fasta  -seq $i -out_NT /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse/$i
        done
    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")


# remove stop codon after masce
# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden
# note:
# we need find a better way to know why stop condon exist
os.system("mkdir /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse/ -o /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse_remove_stop_code/"
os.system(cmd)


"""
# this step is not suitable for 1393 sce datasets
# prepare the code in paml format
os.system(" mkdir /media/luhongzhong/newdisk/pan_genome_gang/cds_align_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A7_prepare_code_for_paml_1011_sce.py -n /media/luhongzhong/newdisk/pan_genome_gang/cds_align_macse_remove_stop_code/ -o /media/luhongzhong/newdisk/pan_genome_gang/cds_align_unify/"
os.system(cmd)
"""