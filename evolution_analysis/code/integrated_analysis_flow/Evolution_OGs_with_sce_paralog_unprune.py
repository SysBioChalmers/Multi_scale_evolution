# this script is used to build the whole pipeline to calculate the dN/dS based on paml for OGs with sce.
# however, in some OGs, the paralogs existed.
import os
os.chdir("/home/luhongzhong/Documents/evolution_analysis/code/")


# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/") # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test") # which will store the code used in the pipeline


# all the analysis results were put in
os.system(" mkdir /home/luhongzhong/ortholog_sce_unprune/")


####################################################
# codon align
####################################################
# extract OGs protein sequence contain sce ID
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "Z2_collect_proteinID_high_quality_sce.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_343/protein_align_s2_R/ -o /home/luhongzhong/ortholog_sce_unprune/protein_refine/"
os.system(" mkdir /home/luhongzhong/ortholog_sce_unprune/protein_refine/")
os.system(cmd)


# extract the relate cds sequence contain sce ID
# here we can extract the id based on the protein_refine file
"""
with open("collect_cds_sce.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_sce_unprune/protein_refine/
    for i in *_aa_aligned.fasta
        do
            cp /home/luhongzhong/ortholog_343/cds_refine/${i%_aa_aligned.fasta}_code.fasta /home/luhongzhong/ortholog_sce_unprune/cds_refine/
        done
    ''')
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/cds_refine/")
os.system("chmod u+x collect_cds_sce.sh")
os.system("./collect_cds_sce.sh")
"""
# extract cds seq from unpruned protein seq
os.system( "mkdir /home/luhongzhong/ortholog_sce_unprune/cds_refine/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A2_extract_cds_from_align_protein.py -n /home/luhongzhong/ortholog_343/cds/ -p1 /home/luhongzhong/ortholog_sce_unprune/protein_refine/ -o /home/luhongzhong/ortholog_sce_unprune/cds_refine/"
os.system(cmd)


# code_align_macse
# it can be found some codes can't be aligned, like OG3771, OG1504, OG1745
with open("code_macse.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_sce_unprune/cds_refine/
    for i in *_code.fasta
        do
            java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_sce_unprune/protein_refine/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/$i
        done

    ''')
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/")
os.system("chmod u+x code_macse.sh")
os.system("./code_macse.sh")

# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden.
# This step has been test in the small dataset. If the stop codon is not removed, the gene level dN/dS for some OGs can not be calculated.
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/ -o /home/luhongzhong/ortholog_sce_unprune/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_sce_unprune/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_sce_unprune/cds_refine_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_sce_unprune/cds_refine_unify/")
os.system(cmd)


#####################################################
# build the tree
#####################################################
# collect original tree
file0 = "/home/luhongzhong/ortholog_sce_unprune/cds_refine/"
file1 = "/home/luhongzhong/ortholog_343/protein_align_tree/"
file2 = "/home/luhongzhong/ortholog_sce_unprune/protein_align_tree/"
os.mkdir(file2)
all_sce_ORG = os.listdir(file0)
import shutil
for i in all_sce_ORG:
    print(i)
    shutil.copy(file1 + i.replace("_code.fasta", "_aa.tre"), file2)

# unroot tree
with open("B2_unroot_tree.R", "w") as rsh:
    rsh.write('''\
#---------------------------------
# unroot() in ape
# This is used to unroot tree
# and remove the bootstrap values
#---------------------------------
library(ape)
    tree_dir <- "/home/luhongzhong/ortholog_sce_unprune/protein_align_tree/"

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
    mkdir /home/luhongzhong/ortholog_sce_unprune/unroot_tree/
    cd /home/luhongzhong/ortholog_sce_unprune/protein_align_tree
    for i in *_aa_unroot.tre
        do 
            mv $i /home/luhongzhong/ortholog_sce_unprune/unroot_tree/
        done
    echo "moving the files have been done!"

    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")


# tree name unify
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/unroot_tree_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
cmd = "python" + " " + \
      code_dir0 + \
      "B4_unify_geneID_name.py -t /home/luhongzhong/ortholog_sce_unprune/unroot_tree/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_sce_unprune/unroot_tree_unify/"
os.system(cmd)


####################################################
# evolution analysis
####################################################
# gene level dN/dS
with open("gene_dN_dS.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_sce_unprune/result_paml/
    cd /home/luhongzhong/ortholog_sce_unprune/cds_refine_unify/
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/ortholog_sce_unprune/cds_refine_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/ortholog_sce_unprune/result_paml/${i%_code.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')
os.system("chmod u+x gene_dN_dS.sh")
os.system("./gene_dN_dS.sh")

# parse the result
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00.py -i /home/luhongzhong/ortholog_sce_unprune/result_paml/ -o /home/luhongzhong/ortholog_sce_unprune/result_paml_parse/ -m median")


# site level dN/dS using FUBAR
# now the result output is stored in file of "cds_align_macse"
with open("FUBAR_dN_dS.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_sce_unprune/fubar_result/

cd /home/luhongzhong/ortholog_sce_unprune/cds_align_macse
for i in *_code.fasta
    do
        hyphy fubar --alignment /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/$i --tree /home/luhongzhong/ortholog_sce_unprune/unroot_tree/${i%_code.fasta}_aa_unroot.tre
    done
    ''')
os.system("chmod u+x FUBAR_dN_dS.sh")
os.system("./FUBAR_dN_dS.sh")

# In the followed, a more easy way to do batch calculation
# check which OG has been calculated
all_OG = os.listdir("/home/luhongzhong/ortholog_sce_unprune/cds_align_macse/")
all_OG1 = [x for x in all_OG if "FUBAR" in x]
all_OG11 = [x.split(".FUBAR")[0] for x in all_OG1]
all_OG2 = [x for x in all_OG if "FUBAR" not in x]
OG_need_calculate = list(set(all_OG2)-set(all_OG11))
for ss in OG_need_calculate:
    print(ss)
    tree0 = ss.replace("_code.fasta", "_aa_unroot.tre")
    commond_line = "hyphy fubar --alignment /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/" + ss + " --tree /home/luhongzhong/ortholog_sce_unprune/unroot_tree/" + tree0
    os.system(commond_line)


#####################################################
# conservation analysis
#####################################################
# conservation score calculation
with open("conservation_score.sh", "w") as rsh:
    rsh.write('''\
#!/usr/bin/env bash
mkdir /home/luhongzhong/ortholog_sce_unprune/protein_sce_conservation_score
cd /home/luhongzhong/ortholog_sce_unprune/protein_refine/
for i in *_aa_aligned.fasta
    do
        cd /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation
        python2 score_conservation.py  -g 0.3 -o /home/luhongzhong/ortholog_sce_unprune/protein_sce_conservation_score/${i%_aa_aligned.fasta}_conservation_score_jsd /home/luhongzhong/ortholog_sce_unprune/protein_refine/$i
    done
    ''')
os.system("chmod u+x conservation_score.sh")
os.system("./conservation_score.sh")
# parse the conservation score
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "step2_parse_jds_result_with_sce_as_reference.py -p0 /home/luhongzhong/ortholog_sce_unprune/all_reference_aa_1011_sce_update_align/ -s /home/luhongzhong/ortholog_sce_unprune/protein_sce_conservation_score/ -o /home/luhongzhong/ortholog_sce_unprune/result_jsd"
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/result_jsd")
os.system(cmd)

# pidentity calculation
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/result_pidentity")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/step3_paired_seq_pidentity.py -p0 /home/luhongzhong/ortholog_sce_unprune/protein_refine/ -o /home/luhongzhong/ortholog_sce_unprune/result_pidentity/")

# find the highly conserved sites
os.system("mkdir /home/luhongzhong/ortholog_sce_unprune/result_conserved_site")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/step4_find_conserved_sites.py -p0 /home/luhongzhong/ortholog_sce_unprune/protein_refine/ -o /home/luhongzhong/ortholog_sce_unprune/result_conserved_site/")
