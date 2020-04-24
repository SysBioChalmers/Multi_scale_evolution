# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/") # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test") # which will store the code used in the pipeline

# all the analysis results were put in
os.system(" mkdir /home/luhongzhong/ortholog_subset/")

# firstly run the species subset function
# os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z1_Extract_OGs_from_two_different_clades_or_traits.py")


#####################################################
# protein_align
#####################################################
# protein align
with open("protein_align_step0.sh", "w") as rsh:
    rsh.write('''\
    #!/usr/bin/env bash
    mkdir /home/luhongzhong/ortholog_subset/protein_align/
    cd  /home/luhongzhong/ortholog_subset/protein
        for i in *_aa.fasta
            do 
                mafft --auto $i > /home/luhongzhong/ortholog_subset/protein_align/${i%_aa.fasta}_aa_aligned.fasta
            done
    ''')
os.system("chmod u+x protein_align_step0.sh")
os.system("./protein_align_step0.sh")


#####################################################
# build the tree
#####################################################
# build tree
with open("build_tree_step_test.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/protein_align_tree
    cd /home/luhongzhong/ortholog_subset/protein_align/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_subset/protein_align_tree/${i%_aa_aligned.fasta}_aa.tre
            done
    ''')
os.system("chmod u+x build_tree_step_test.sh")
os.system("./build_tree_step_test.sh")


# tree pruner analysis using PhyloTreePruner
with open("tree_pruner_test.sh", "w") as rsh:
    rsh.write('''\

#!/usr/bin/env bash

mkdir /home/luhongzhong/ortholog_subset/protein_align_pruner/
cd /home/luhongzhong/ortholog_subset/protein_align_tree

for i in *_aa.tre

    do
        cd /home/luhongzhong/Documents/PhyloTreePruner
        java PhyloTreePruner /home/luhongzhong/ortholog_subset/protein_align_tree/$i 2 /home/luhongzhong/ortholog_subset/protein_align/${i%_aa.tre}_aa_aligned.fasta 0.95 u⁩
        mv /home/luhongzhong/ortholog_subset/protein_align/${i%_aa.tre}_aa_aligned.fasta_pruned.fa /home/luhongzhong/ortholog_subset/protein_align_pruner/
    done

    ''')
os.system("chmod u+x tree_pruner_test.sh")
os.system("./tree_pruner_test.sh")


# build tree second time using the prunered protein fasta files
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/protein_align_tree_2
    cd /home/luhongzhong/ortholog_subset/protein_align_pruner/
        for i in *_aa_aligned.fasta_pruned.fa
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_subset/protein_align_tree_2/${i%_aa_aligned.fasta_pruned.fa}_aa.tre
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
    tree_dir <- "/home/luhongzhong/ortholog_subset/protein_align_tree_2"
    
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
    mkdir /home/luhongzhong/ortholog_subset/unroot_tree/
    cd /home/luhongzhong/ortholog_subset/protein_align_tree_2
    for i in *_aa_unroot.tre
        do 
            mv $i /home/luhongzhong/ortholog_subset/unroot_tree/
        done
    echo "moving the files have been done!"
    
    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")


# tree name unify
os.system( "mkdir /home/luhongzhong/ortholog_subset/unroot_tree_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "B4_unify_geneID_name.py -t /home/luhongzhong/ortholog_subset/unroot_tree/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_subset/unroot_tree_unify/"
os.system(cmd)


####################################################
# codon align
####################################################
# extract cds seq from pruned protein seq
os.system( "mkdir /home/luhongzhong/ortholog_subset/cds_refine")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A3_extract_cds_from_prune_protein.py -n /home/luhongzhong/ortholog_subset/cds/ -p1 /home/luhongzhong/ortholog_subset/protein_align_pruner/ -o /home/luhongzhong/ortholog_subset/cds_refine/"
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
    mkdir /home/luhongzhong/ortholog_subset/cds_align/
    cd /home/luhongzhong/ortholog_subset/cds_refine/
    #pal2nal.pl  test.aln  test.nuc  -output paml  -nogap

    for i in *_code.fasta
        do
            perl /home/luhongzhong/Documents/evolution_analysis/code/code_align/pal2nal.v14/pal2nal.pl  /home/luhongzhong/ortholog_subset/protein_align_pruner/${i%_code.fasta}_aa_aligned.fasta_pruned.fa   /home/luhongzhong/ortholog_subset/cds_refine/$i  -output fasta  -nogap   >  /home/luhongzhong/ortholog_subset/cds_align/$i

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
mkdir /home/luhongzhong/ortholog_subset/cds_align_macse/
cd /home/luhongzhong/ortholog_subset/cds_refine/
for i in *_code.fasta
do
    java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_subset/protein_align_pruner/${i%_code.fasta}_aa_aligned.fasta_pruned.fa  -seq $i -out_NT /home/luhongzhong/ortholog_subset/cds_align_macse/$i
done
    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")


# remove stop codon after masce
# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden
# note:
# we need find a better way to know why stop condon exist
os.system("mkdir /home/luhongzhong/ortholog_subset/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_subset/cds_align_macse/ -o /home/luhongzhong/ortholog_subset/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_subset/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_subset/cds_align_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_subset/cds_align_unify/")
os.system(cmd)


####################################################
# evolution analysis based on PAML
####################################################
# gene level dN/dS
with open("gene_dN_dS.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/result_paml/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/ortholog_subset/cds_align_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/ortholog_subset/result_paml/${i%_code.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')
os.system("chmod u+x gene_dN_dS.sh")
os.system("./gene_dN_dS.sh")

# parse the result
os.mkdir("/home/luhongzhong/ortholog_subset/result_paml_parse")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00_update.py -i /home/luhongzhong/ortholog_subset/result_paml/ -o /home/luhongzhong/ortholog_subset/result_paml_parse/ -m median")
















"""
# site level dN/dS
with open("site_model.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/site_model_result/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify/
    for i in *_code.phy
        do
        python /home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/B1_produce_control_file_in_batch.py -n /home/luhongzhong/ortholog_subset/cds_align_unify/$i -t /home/luhongzhong/ortholog_subset/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre -c  /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/ -o /home/luhongzhong/ortholog_subset/site_model_result/${i%_code.phy}.out
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M0/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M1a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M2a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/M3/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M7/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M8/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/M8a/codeml_test.ctl
        done
    ''')
os.system("chmod u+x site_model.sh")
os.system("./site_model.sh")


# paml, branch site level dN/dS
# label the gene tree
# now the test code is as the followed:
os.system("mkdir /home/luhongzhong/ortholog_subset/tree_label/")
os.system("chmod u+x /home/luhongzhong/Documents/evolution_analysis/code/tree_build/Lable_tree_PAML.sh")
# run the commond line in the terminal
"cd /home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
"./Lable_tree_PAML.sh"
# run the calculation
with open("branch_site_model.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/branch_site_model_result/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify/
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/branch_site_paml/E1_produce_control_file.py -n /home/luhongzhong/ortholog_subset/cds_align_unify/$i -t /home/luhongzhong/ortholog_subset/tree_label/${i%_code.phy}_aa_unroot_unify.tre -c /home/luhongzhong/Documents/evolution_analysis/paml_model/BS/ -o /home/luhongzhong/ortholog_subset/branch_site_model_result/${i%_code.phy}.out
            codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/BS/ModelA/codeml_test.ctl
            codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/BS/ModelAnull/codeml_test.ctl
        done
    ''')
os.system("chmod u+x branch_site_model.sh")
os.system("./branch_site_model.sh")


####################################################
# evolution analysis based on Hyphy
####################################################

# fubar, site level dN/dS
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/fubar_result/

    cd /home/luhongzhong/ortholog_subset/cds_align_unify
    for i in *_code.phy
        do
            hyphy fubar --alignment /home/luhongzhong/ortholog_subset/cds_align_unify/$i --tree /home/luhongzhong/ortholog_subset/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre --output /home/luhongzhong/ortholog_subset/fubar_result/${i%_code.phy}_code.phy.FUBAR.json
            rm /home/luhongzhong/ortholog_subset/cds_align_unify/${i%_code.phy}_code.phy.FUBAR.cache
        done

    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")


# fel, site level dN/dS
with open("fel.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/fel_result/

    cd /home/luhongzhong/ortholog_subset/cds_align_unify
    for i in *_code.phy
        do
            hyphy fel --alignment /home/luhongzhong/ortholog_subset/cds_align_unify/$i --tree /home/luhongzhong/ortholog_subset/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre --srv No --pvalue 0.1  --output /home/luhongzhong/ortholog_subset/fel_result/${i%_code.phy}.FEL.json
            rm /home/luhongzhong/ortholog_subset/cds_align_unify/${i%_code.phy}_code.phy.fel.cache
        done
    ''')
os.system("chmod u+x fel.sh")
os.system("./fel.sh")


# absrel, branch site level dN/dS
os.system("mkdir /home/luhongzhong/ortholog_subset/tree_label_hyphy/")
os.system("chmod u+x /home/luhongzhong/Documents/evolution_analysis/code/tree_build/Lable_tree_hyphy.sh")
# run the commond line in the terminal
"cd /home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
"./Lable_tree_hyphy.sh"

with open("absrel.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/absrel_result/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify/
    for i in *_code.phy
        do
            hyphy absrel --alignment /home/luhongzhong/ortholog_subset/cds_align_unify/$i --tree /home/luhongzhong/ortholog_subset/tree_label_hyphy/${i%_code.phy}_aa_unroot_unify.tre --branches Foreground --output /home/luhongzhong/ortholog_subset/absrel_result/${i%_code.phy}.out
        done
    ''')
os.system("chmod u+x absrel.sh")
os.system("./absrel.sh")

# busted, branch site level dN/dS
# It is better for datasets up tp 100 sequences.
# it seems that at least three tips are needed to do busted analysis.
with open("busted.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/busted_result/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify/
    for i in *_code.phy
        do
            hyphy busted --alignment /home/luhongzhong/ortholog_subset/cds_align_unify/$i --tree /home/luhongzhong/ortholog_subset/tree_label_hyphy/${i%_code.phy}_aa_unroot_unify.tre --branches Foreground --srv Yes
        done
    ''')
os.system("chmod u+x busted.sh")
os.system("./busted.sh")
# for the single test
# branch site model

# hyphy absrel --alignment /home/luhongzhong/test/OG7984_code.fasta --tree /home/luhongzhong/test/OG7984_aa_unroot_LABEL_v2.tre --branches Foreground

# hyphy busted --alignment /home/luhongzhong/test/OG7984_code.fasta --tree /home/luhongzhong/test/OG7984_aa_unroot_LABEL_v2.tre --branches Foreground --srv No

# site model

# hyphy fel --alignment /home/luhongzhong/test/OG7984_code.fasta --tree /home/luhongzhong/test/OG7984_aa_unroot_LABEL_v2.tre --branches Foreground --srv No --pvalue 0.1

# hyphy meme --alignment /home/luhongzhong/test/OG7984_code.fasta --tree /home/luhongzhong/test/OG7984_aa_unroot_LABEL_v2.tre --branches Foreground --pvalue 0.1


# Foreground setting test
# here species from OG was randomly set as the Foreground
# hyphy absrel --alignment /home/luhongzhong/test/OG1064_code.fasta --tree /home/luhongzhong/test/OG1064_aa_unroot_LABEL.tre --branches Foreground
"""


