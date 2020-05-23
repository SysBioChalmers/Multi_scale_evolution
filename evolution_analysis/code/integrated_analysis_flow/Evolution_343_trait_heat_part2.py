# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/")  # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test2")
os.system(" mkdir temporary_code_for_test2")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test2")  # which will store the code used in the pipeline

########################################################
# Get the reduced species gene id list based on sampling
########################################################
# os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z0_Reduce_species_num_for_branch_site_model.py")

####################################################
# codon align
####################################################
# the preprocess step
# here we need a simple function to filter based on the species number in foreground branch
# the labelled tree is obtained using the previous method, build the tree using aligned protein
# here we should think about whether we need to keep such a method
# maybe we should compare the difference in the gene tree using aligned protein and aligned cds
# os.system("python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A8_extract_cds_based_labelled_tree_result.py -t /home/luhongzhong/ortholog_343_heat_tolerance/unroot_tree_label_heat_tolerance/ -c /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine/ -n /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_reduce_based_labelled_tree/")

# option 2
# extract the OG based on the least species number from test and reference groups
# here we could run
# python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z1_Extract_OGs_from_two_different_clades_or_traits.py



# codon align based on the guidance
with open("A4_code_align_all_guidance.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/
cd /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_filter
for i in *_code.fasta
    do
        perl /home/luhongzhong/Documents/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_filter/$i  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/${i%_code.fasta}_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A4_code_align_all_guidance_remove_files.py -n /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/${i%_code.fasta}_result/
        #perl /home/luhongzhong/ortholog_343_heat_tolerance/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_filter/OG10919_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/OG10919_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343_heat_tolerance/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_filter/OG17103_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/OG17103_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343_heat_tolerance/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine_filter/OG1613_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/OG1613_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
    done
    ''')
os.system("chmod u+x A4_code_align_all_guidance.sh")
os.system("./A4_code_align_all_guidance.sh")



# transfer the aligned cds sequence into a new file
os.system("mkdir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A7_move_align_guidance_into_new_file.py  -r /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance/ -n /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new/")



#####################################################
# build the tree
#####################################################
# here, should we use re-align the original protein and then build the tree?
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree
    cd /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new/
        for i in *_code.fasta
            do
                FastTree -gtr -nt < $i > /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree/${i%_code.fasta}_aa.tre
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
    tree_dir <- "/home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree"

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
    mkdir /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot/
    cd /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree
    for i in *_aa_unroot.tre
        do 
            mv $i /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot/
        done
    echo "moving the files have been done!"

    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")


# label tree
# here please run the related script from
# /home/luhongzhong/Documents/evolution_analysis/code/tree_build/Lable_tree_hyphy_update.R


####################################################
# evolution analysis based on Hyphy
####################################################
# branch site model using absrel
with open("absrel.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_heat_tolerance/absrel_result/
    cd /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot_label
    for i in *_aa_unroot_LABEL.tre
        do
            hyphy absrel --alignment /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new/${i%_aa_unroot_LABEL.tre}_code.fasta --tree /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot_label/$i --branches Foreground --output /home/luhongzhong/ortholog_343_heat_tolerance/absrel_result/${i%_aa_unroot_LABEL.tre}.ABSREL.json
        done
    ''')
os.system("chmod u+x absrel.sh")
os.system("./absrel.sh")


# branch site model using busted
with open("busted.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_heat_tolerance/busted_result/
    cd /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot_label
    for i in *_aa_unroot_LABEL.tre
        do
            hyphy busted --alignment /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new/${i%_aa_unroot_LABEL.tre}_code.fasta --tree /home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot_label/$i --branches Foreground --srv Yes --output /home/luhongzhong/ortholog_343_heat_tolerance/busted_result/${i%_aa_unroot_LABEL.tre}.BUSTED.json
        done
    ''')
os.system("chmod u+x busted.sh")
os.system("./busted.sh")







