# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/")  # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test")  # which will store the code used in the pipeline

# all the analysis results were put in
os.system(" mkdir /home/luhongzhong/ortholog_343/")


#####################################################
# protein_align
#####################################################
# firstly translate all the cds into protein
with open("A0_translate_aln_codon_to_aa_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir  /home/luhongzhong/ortholog_343/protein/
cd  /home/luhongzhong/ortholog_343/cds/
for i in *.fasta
    do
        java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog translateNT2AA -seq  /home/luhongzhong/ortholog_343/cds/$i
    done

cd  /home/luhongzhong/ortholog_343/cds/
for i in *_AA.fasta
    do
        mv $i  /home/luhongzhong/ortholog_343/protein/
    done
echo "moving the files have been done!"
    ''')
os.system("chmod u+x A0_translate_aln_codon_to_aa_macse.sh")
os.system("./A0_translate_aln_codon_to_aa_macse.sh")


# protein align
with open("protein_align_step0.sh", "w") as rsh:
    rsh.write('''\
    #!/usr/bin/env bash
    mkdir /home/luhongzhong/ortholog_343/protein_align/
    cd /home/luhongzhong/ortholog_343/protein/
    for i in *_code_AA.fasta
        do
            mafft --auto $i > /home/luhongzhong/ortholog_343/protein_align/${i%_code_AA.fasta}_aa_aligned.fasta
        done
    ''')
os.system("chmod u+x protein_align_step0.sh")
os.system("./protein_align_step0.sh")


# trim
with open("protein_align_step1.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    # firstly build all the files
    mkdir /home/luhongzhong/ortholog_343/protein_align_s1
    mkdir /home/luhongzhong/ortholog_343/protein_align_s1_R
    mkdir /home/luhongzhong/ortholog_343/protein_align_s2
    mkdir /home/luhongzhong/ortholog_343/protein_align_s2_R
    mkdir /home/luhongzhong/ortholog_343/protein_align_tree

    cd /home/luhongzhong/ortholog_343/protein_align/
    for i in *_aa_aligned.fasta
        do
            trimal -in $i -out /home/luhongzhong/ortholog_343/protein_align_s1/${i%_aa_aligned.fasta}_aa_aligned.fasta -gt 0.7
        done
    ''')
os.system("chmod u+x protein_align_step1.sh")
os.system("./protein_align_step1.sh")


# filter protein with too short length
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_align/s2_remove_seq_reduce_length_by_50%.py -p1 /home/luhongzhong/ortholog_343/protein_align/ -p2 /home/luhongzhong/ortholog_343/protein_align_s1/ -o /home/luhongzhong/ortholog_343/protein_align_s1_R/")


# remove the spurious seq
with open("protein_align_step3.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_343/protein_align_s1_R/
    for i in *_aa_aligned.fasta
        do
        trimal -in $i -out /home/luhongzhong/ortholog_343/protein_align_s2/$i -resoverlap 0.75 -seqoverlap 75
        done
    ''')

os.system("chmod u+x protein_align_step3.sh")
os.system("./protein_align_step3.sh")


# further filtration
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
      code_dir0 + \
      "s4_final_filteration.py -p1 /home/luhongzhong/ortholog_343/protein_align_s2/ -o /home/luhongzhong/ortholog_343/protein_align_s2_R/"
os.system(cmd)


#####################################################
# build the tree
#####################################################
# build tree
with open("build_tree_step_test.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/protein_align_tree
    cd /home/luhongzhong/ortholog_343/protein_align_s2_R/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_343/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step_test.sh")
os.system("./build_tree_step_test.sh")


# tree pruner analysis using PhyloTreePruner
with open("tree_pruner_test.sh", "w") as rsh:
    rsh.write('''\
#!/usr/bin/env bash
mkdir /home/luhongzhong/ortholog_343/protein_align_pruner/
cd /home/luhongzhong/ortholog_343/protein_align_tree

for i in *_aa.tre

    do
        cd /home/luhongzhong/Documents/PhyloTreePruner
        java PhyloTreePruner /home/luhongzhong/ortholog_343/protein_align_tree/$i 7 /home/luhongzhong/ortholog_343/protein_align_s2_R/${i%_aa.tre}_aa_aligned.fasta 0.95 u⁩
    done

cd /home/luhongzhong/ortholog_343/protein_align_s2_R

# move file
for i in *_pruned.fa
    do
        mv $i /home/luhongzhong/ortholog_343/protein_align_pruner/
    done
    ''')
os.system("chmod u+x tree_pruner_test.sh")
os.system("./tree_pruner_test.sh")


# build tree second time using the pruned protein fasta files
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/protein_align_tree_2
    cd /home/luhongzhong/ortholog_343/protein_align_pruner/
        for i in *_aa_aligned.fasta_pruned.fa
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_343/protein_align_tree_2/${i%_aa_aligned.fasta_pruned.fa}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step2.sh")
os.system("./build_tree_step2.sh")


# unroot tree
with open("B2_unroot_tree.R", "w") as rsh:
    rsh.write('''\
#---------------------------------
# unroot() in ape
# This is used to unroot tree
# and remove the bootstrap values
#---------------------------------
library(ape)
    tree_dir <- "/home/luhongzhong/ortholog_343/protein_align_tree_2"

    allfile  <- list.files(tree_dir)
    allfile <- allfile[grepl(".*\\\.tre", allfile)]
    allfile <- allfile[!grepl(".*\\\_unroot.tre", allfile)]
    tree_need_check <- vector()
    for (i in allfile){
      print(i)
      treefile <- file.path(tree_dir, i)
      s0 <- read.tree(file = treefile, text = NULL, tree.names = NULL, skip = 0,
                      comment.char = "", keep.multi = FALSE)
      plot(s0)

      # continue the loop even the errors ocuur from the function unroot
      # if a tree only contains two tips
      mod2=try(unroot(s0),TRUE)
      if(isTRUE(class(mod2)=="try-error")) {
        tree_need_check <- c(i,tree_need_check)
        s1 <- s0
        #next
        } else {
        s1 <- unroot(s0)
        }

      plot(s1)
      s1$node.label <- NULL # Erase the bootstrap values from the phylo object
      plot(s1)
      i_out <- gsub("_aa", "_aa_unroot", i)
      output_dir <- file.path(tree_dir, i_out)
      write.tree(s1, file = output_dir)
    }

    ''')
with open("unroot_tree.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    Rscript B2_unroot_tree.R
    mkdir /home/luhongzhong/ortholog_343/unroot_tree/
    cd /home/luhongzhong/ortholog_343/protein_align_tree_2
    for i in *_aa_unroot.tre
        do
            mv $i /home/luhongzhong/ortholog_343/unroot_tree/
        done
    echo "moving the files have been done!"

    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")


# tree name unify
os.system("mkdir /home/luhongzhong/ortholog_343/unroot_tree_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
cmd = "python" + " " + \
      code_dir0 + \
      "B4_unify_geneID_name.py -t /home/luhongzhong/ortholog_343/unroot_tree/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_343/unroot_tree_unify/"
os.system(cmd)


####################################################
# codon align
####################################################
# extract OGs protein sequence of high quality
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s5_collect_proteinID_high_quality.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_343/protein_align_pruner/ -o /home/luhongzhong/ortholog_343/protein_refine/"
os.system(" mkdir /home/luhongzhong/ortholog_343/protein_refine/")
os.system(cmd)


# extract cds seq from pruned protein seq
os.system( "mkdir /home/luhongzhong/ortholog_343/cds_refine")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A3_extract_cds_from_prune_protein.py -n /home/luhongzhong/ortholog_343/cds/ -p1 /home/luhongzhong/ortholog_343/protein_align_pruner/ -o /home/luhongzhong/ortholog_343/cds_refine/"
os.system(cmd)


# speciel work for OGs analysis based on protein 3D structures
# here cds seq will be also extracted based on the trimed protein before the pruner, thus each OGs could contain paralogs.
# extract OGs protein sequence of high quality
os.system(" mkdir /home/luhongzhong/ortholog_343/protein_refine_before_prune/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s5_collect_proteinID_high_quality.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_343/protein_align_s2_R/ -o /home/luhongzhong/ortholog_343/protein_refine_before_prune/ -t unprune"
os.system(cmd)
# extract cds seq from pruned protein seq
os.system( "mkdir /home/luhongzhong/ortholog_343/cds_refine_before_prune/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A2_extract_cds_from_align_protein.py -n /home/luhongzhong/ortholog_343/cds/ -p1 /home/luhongzhong/ortholog_343/protein_align_s2_R/ -o /home/luhongzhong/ortholog_343/cds_refine_before_prune/"
os.system(cmd)


# annote the cds using the original aligned protein with pal2nal
# here if we use pal2nal, some algined protein can be very short due to the stop condon in the frame, thus
# we decide to use the macse method
"""
with open("coden_align.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    #java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
    #this step is to align the code seq based on the aligned protein seq
    mkdir /home/luhongzhong/ortholog_343/cds_align/
    cd /home/luhongzhong/ortholog_343/cds_refine/
    #pal2nal.pl  test.aln  test.nuc  -output paml  -nogap

    for i in *_code.fasta
        do
            perl /home/luhongzhong/Documents/evolution_analysis/code/code_align/pal2nal.v14/pal2nal.pl  /home/luhongzhong/ortholog_343/protein_refine/${i%_code.fasta}_aa_aligned.fasta   /home/luhongzhong/ortholog_343/cds_refine/$i  -output fasta  -nogap   >  /home/luhongzhong/ortholog_343/cds_align/$i

        done
    ''')
os.system("chmod u+x coden_align.sh")
os.system("./coden_align.sh")
"""


# annote the cds using the original aligned protein with macse
with open("coden_align_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
mkdir /home/luhongzhong/ortholog_343/cds_align_macse/
cd /home/luhongzhong/ortholog_343/cds_refine/
for i in *_code.fasta
do
    java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_343/protein_refine/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/ortholog_343/cds_align_macse/$i
done
    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")

# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden.
# This step has been test in the small dataset. If the stop codon is not removed, the gene level dN/dS for some OGs can not be calculated.
os.system("mkdir /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_343/cds_align_macse/ -o /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_343/cds_align_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_343/cds_align_unify/")
os.system(cmd)


####################################################
# evolution analysis based on PAML
####################################################
# gene level dN/dS
with open("gene_dN_dS.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/result_paml/
    cd /home/luhongzhong/ortholog_343/cds_align_unify
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/ortholog_343/cds_align_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/ortholog_343/result_paml/${i%_code.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')
os.system("chmod u+x gene_dN_dS.sh")
os.system("./gene_dN_dS.sh")
# parse the result
os.system("mkdir /home/luhongzhong/ortholog_343/result_paml_parse")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00_update.py -i /home/luhongzhong/ortholog_343/result_paml/ -o /home/luhongzhong/ortholog_343/result_paml_parse/ -m median")


# site level dN_dS using paml
with open("site_model.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/site_model_result/
    cd /home/luhongzhong/ortholog_343/cds_align_unify/
    for i in *_code.phy
        do
        python /home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/produce_single_control_file.py -n /home/luhongzhong/ortholog_343/cds_align_unify/$i -t /home/luhongzhong/ortholog_343/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre -c  /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/ -o /home/luhongzhong/ortholog_343/site_model_result/${i%_code.phy}.out
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M0/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M1a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M2a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M3/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M7/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M8/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M8a/codeml_test.ctl
        done
    ''')
os.system("chmod u+x site_model.sh")
os.system("./site_model.sh")


####################################################
# evolution analysis based on Hyphy
####################################################
# site level dN/dS
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/fubar_result/

    cd /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code
    for i in *_code.fasta
        do
            hyphy fubar --alignment /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code/$i --tree /home/luhongzhong/ortholog_343/unroot_tree/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_343/fubar_result/${i%_code.fasta}_code.fasta.FUBAR.json
            rm /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code/${i%_code.fasta}_code.fasta.FUBAR.cache
        done

    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")



#######################################################
# codon align based on GUIDANCE2
#######################################################
# codon align based on the guidance
with open("A4_code_align_all_guidance.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_343/cds_align_guidance/
cd /home/luhongzhong/ortholog_343/cds_refine
for i in *_code.fasta
    do
        perl /home/luhongzhong/Documents/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343/cds_refine/$i  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343/cds_align_guidance/${i%_code.fasta}_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A4_code_align_all_guidance_remove_files.py -n /home/luhongzhong/ortholog_343/cds_align_guidance/${i%_code.fasta}_result/
        #perl /home/luhongzhong/ortholog_343/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343/cds_refine/OG10919_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343/cds_align_guidance/OG10919_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343/cds_refine/OG17103_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343/cds_align_guidance/OG17103_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343/cds_refine/OG1613_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343/cds_align_guidance/OG1613_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
    done
    ''')
os.system("chmod u+x A4_code_align_all_guidance.sh")
os.system("./A4_code_align_all_guidance.sh")

# here, should we use re-align the original protein and then build the tree?
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/cds_align_guidance_new_tree
    cd /home/luhongzhong/ortholog_343/cds_align_guidance_new/
        for i in *_code.fasta
            do
                FastTree -gtr -nt < $i > /home/luhongzhong/ortholog_343/cds_align_guidance_new_tree/${i%_code.fasta}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step2.sh")
os.system("./build_tree_step2.sh")


# unroot tree
with open("B2_unroot_tree.R", "w") as rsh:
    rsh.write('''\
#---------------------------------
# unroot() in ape
# This is used to unroot tree
# and remove the bootstrap values
#---------------------------------
library(ape)
    tree_dir <- "/home/luhongzhong/ortholog_343/cds_align_guidance_new_tree"

    allfile  <- list.files(tree_dir)
    allfile <- allfile[grepl(".*\\\.tre", allfile)]
    allfile <- allfile[!grepl(".*\\\_unroot.tre", allfile)]
    tree_need_check <- vector()
    for (i in allfile){
      print(i)
      treefile <- file.path(tree_dir, i)
      s0 <- read.tree(file = treefile, text = NULL, tree.names = NULL, skip = 0,
                      comment.char = "", keep.multi = FALSE)
      plot(s0)

      # continue the loop even the errors ocuur from the function unroot
      # if a tree only contains two tips
      mod2=try(unroot(s0),TRUE)
      if(isTRUE(class(mod2)=="try-error")) {
        tree_need_check <- c(i,tree_need_check)
        s1 <- s0
        #next
        } else {
        s1 <- unroot(s0)
        }

      plot(s1)
      s1$node.label <- NULL # Erase the bootstrap values from the phylo object
      plot(s1)
      i_out <- gsub("_aa", "_aa_unroot", i)
      output_dir <- file.path(tree_dir, i_out)
      write.tree(s1, file = output_dir)
    }

    ''')

with open("unroot_tree.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    Rscript B2_unroot_tree.R
    mkdir /home/luhongzhong/ortholog_343/cds_align_guidance_new_tree_unroot/
    cd /home/luhongzhong/ortholog_343/cds_align_guidance_new_tree
    for i in *_aa_unroot.tre
        do
            mv $i /home/luhongzhong/ortholog_343/cds_align_guidance_new_tree_unroot/
        done
    echo "moving the files have been done!"

    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")
