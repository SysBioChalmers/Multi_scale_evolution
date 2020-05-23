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
    
    ''')
os.system("chmod u+x A1_translate_aln_codon_to_aa_macse.sh")
os.system("./A1_translate_aln_codon_to_aa_macse.sh")


# protein align
with open("protein_align_step0.sh", "w") as rsh:
    rsh.write('''\
    #!/usr/bin/env bash
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align/
    cd  /media/luhongzhong/newdisk/Genomics_data/protein/
    for i in *_AA.fasta
        do 
            mafft --auto $i > /media/luhongzhong/newdisk/Genomics_data/protein_align/${i%_AA.fasta}_aa_aligned.fasta
        done
    ''')
os.system("chmod u+x protein_align_step0.sh")
os.system("./protein_align_step0.sh")


# trim
with open("protein_align_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    # firstly build all the files
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_s1
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_s1_R
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_s2
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_s2_R
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_tree

    cd /media/luhongzhong/newdisk/Genomics_data/protein_align/
    for i in *_aa_aligned.fasta
        do
            trimal -in $i -out /media/luhongzhong/newdisk/Genomics_data/protein_align_s1/${i%_aa_aligned.fasta}_aa_aligned.fasta -gt 0.7
        done
    ''')
os.system("chmod u+x protein_align_step1.sh")
os.system("./protein_align_step1.sh")


# filter protein with too short length
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_align/s2_remove_seq_reduce_length_by_50%.py -p1 /media/luhongzhong/newdisk/Genomics_data/protein_align/ -p2 /media/luhongzhong/newdisk/Genomics_data/protein_align_s1/ -o /media/luhongzhong/newdisk/Genomics_data/protein_align_s1_R/")


# remove the spurious seq
with open("protein_align_step3.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /media/luhongzhong/newdisk/Genomics_data/protein_align_s1_R/
    for i in *_aa_aligned.fasta
        do
        trimal -in $i -out /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/$i -resoverlap 0.75 -seqoverlap 75
        done
    ''')

os.system("chmod u+x protein_align_step3.sh")
os.system("./protein_align_step3.sh")

# unify the protein name??
# so that in the tree building phase, the gene ID will be not changed.
# this step is species for 1011 sce strains
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/protein_align_s2_ID_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s6_protein_ID_unify_for_1011_sce.py -n /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/  -o /media/luhongzhong/newdisk/Genomics_data/protein_align_s2_ID_unify/"
os.system(cmd)


#####################################################
# build the tree
#####################################################
# step1 build tree
with open("build_tree_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /media/luhongzhong/newdisk/Genomics_data/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
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
tree_dir <- "/media/luhongzhong/newdisk/Genomics_data/protein_align_tree"

allfile  <- list.files(tree_dir)
allfile <- allfile[grepl(".*\\\.tre", allfile)]
allfile <- allfile[!grepl(".*\\\_unroot.tre", allfile)]
for (i in allfile){
  print(i)
  treefile <- file.path(tree_dir, i)
  s0 <- read.tree(file = treefile, text = NULL, tree.names = NULL, skip = 0,
                  comment.char = "", keep.multi = FALSE)
  plot(s0)
  s1 <- unroot(s0)
  plot(s1)
  s1$node.label <- NULL # Erase the bootstrap values from the phylo object
  plot(s1)
  i_out <- gsub("_aa", "_aa_unroot", i)
  output_dir <- file.path(tree_dir, i_out)
  write.tree(s1, file = output_dir)
}
    ''')
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/Documents/evolution_analysis/code/
    Rscript B2_unroot_tree.R
    ''')
os.system("chmod u+x build_tree_step2.sh")
os.system("./build_tree_step2.sh")


####################################################
# codon align
####################################################
# extract the original protein seq based on the trim result
# here should be more careful!! Maybe just the extract the original protein seq based on the trimmed result, then re-align it!
# This step is different from yeast species!!

with open("coden_align_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /media/luhongzhong/newdisk/Genomics_data/protein_refine_align
    cd /home/luhongzhong/Documents/evolution_analysis/code/code_align
    python s5_collect_proteinID_high_quality.py -p0 /media/luhongzhong/newdisk/Genomics_data/protein_align/ -p1 /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/ -o /media/luhongzhong/newdisk/Genomics_data/protein_refine_align/
    ''')
os.system("chmod u+x coden_align_step1.sh")
os.system("./coden_align_step1.sh")


# extract the original codon seq based on the trim result
with open("coden_align_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /media/luhongzhong/newdisk/Genomics_data/cds_refine/
    cd /home/luhongzhong/Documents/evolution_analysis/code/code_align
    python A2_extract_cds_from_align_protein.py -n /media/luhongzhong/newdisk/Genomics_data/cds/ -p1 /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/ -o /media/luhongzhong/newdisk/Genomics_data/cds_refine/
     ''')
os.system("chmod u+x coden_align_step2.sh")
os.system("./coden_align_step2.sh")


# annote the cds using the original aligned protein with pal2nal
"""
with open("coden_align_step3.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    #java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
    #this step is to align the code seq based on the aligned protein seq

    mkdir /media/luhongzhong/newdisk/Genomics_data/cds_refine_align/
    cd /media/luhongzhong/newdisk/Genomics_data/cds_refine/
    #pal2nal.pl  test.aln  test.nuc  -output paml  -nogap

    for i in *.fasta
        do
            perl /home/luhongzhong/Documents/evolution_analysis/code/code_align/pal2nal.v14/pal2nal.pl  /media/luhongzhong/newdisk/Genomics_data/protein_refine_align/${i%.fasta}_aa_aligned.fasta   /media/luhongzhong/newdisk/Genomics_data/cds_refine/$i  -output fasta  -nogap   >  /media/luhongzhong/newdisk/Genomics_data/cds_refine_align/$i
        done
    ''')
os.system("chmod u+x coden_align_step3.sh")
os.system("./coden_align_step3.sh")
"""


# annote the cds using the original aligned protein with macse
with open("coden_align_macse.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash

    mkdir /media/luhongzhong/newdisk/Genomics_data/cds_refine_align/
    cd /media/luhongzhong/newdisk/Genomics_data/cds_refine/
    for i in *.fasta
        do
            java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /media/luhongzhong/newdisk/Genomics_data/protein_refine_align/${i%.fasta}_aa_aligned.fasta  -seq $i -out_NT /media/luhongzhong/newdisk/Genomics_data/cds_refine_align/$i
        done

    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")


# remove stop codon after masce
# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden
# note:
# we need find a better way to know why stop condon exist
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /media/luhongzhong/newdisk/Genomics_data/cds_refine_align/ -o /media/luhongzhong/newdisk/Genomics_data/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
os.system(" mkdir /media/luhongzhong/newdisk/Genomics_data/cds_align_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A7_prepare_code_for_paml_1011_sce.py -n /media/luhongzhong/newdisk/Genomics_data/cds_align_macse_remove_stop_code/ -o /media/luhongzhong/newdisk/Genomics_data/cds_align_unify/"
os.system(cmd)

# In the followed steps, there are two options, one is to remove the duplicates
# another is to keep the duplicates. It seems that the results from the two methods will be the same, as in the followed calculation, if Ks < 0.001, the dN/dS will be not calculated

# option 1 remove the duplicates
# especially we can find there are lots of duplicated sequences under a gene family, thus we need firstly remove them.
# a new directory is established: /media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates.
# here it may be not reasonable if we want to compare strains from different clades as the interesting strains can be removed in the analysis.
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z4_Extract_non_duplicated_seq_from_OGs.py")

# option 2 keep the duplicates


####################################################
# evolution analysis
####################################################
# gene level dN/dS
# in this analysis, the output file can be too big
with open("gene_dN_dS_1011.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /media/luhongzhong/newdisk/Genomics_data/result_paml/
    cd /media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates
    for i in *.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /media/luhongzhong/newdisk/Genomics_data/result_paml/${i%.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')

os.system("chmod u+x gene_dN_dS_1011.sh")
os.system("./gene_dN_dS_1011.sh")

# result parse
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/result_paml_parse")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00_update.py -i /media/luhongzhong/newdisk/Genomics_data/result_paml/ -o /media/luhongzhong/newdisk/Genomics_data/result_paml_parse/ -m median")


#####################################################
# conservation analysis
#####################################################
# conservation score calculation
# here should we use the initial protein alignment result to calculate the conservation???
with open("conservation_score.sh", "w") as rsh:
    rsh.write('''\
#!/usr/bin/env bash
mkdir /media/luhongzhong/newdisk/Genomics_data/protein_sce_conservation_score
cd /media/luhongzhong/newdisk/Genomics_data/protein_align/

for i in *_aa_aligned.fasta
    do
        cd /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation
        python2 score_conservation.py  -g 0.3 -o /media/luhongzhong/newdisk/Genomics_data/protein_sce_conservation_score/${i%_aa_aligned.fasta}_conservation_score_jsd /media/luhongzhong/newdisk/Genomics_data/protein_align/$i
    done
    ''')
os.system("chmod u+x conservation_score.sh")
os.system("./conservation_score.sh")

# parse the conservation score
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "step2_parse_jds_result_with_sce_as_reference.py -p0 /media/luhongzhong/newdisk/Genomics_data/protein_align/ -s /media/luhongzhong/newdisk/Genomics_data/protein_sce_conservation_score/ -o /media/luhongzhong/newdisk/Genomics_data/result_jsd/"
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/result_jsd")
os.system(cmd)