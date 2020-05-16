# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/")  # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test")  # which will store the code used in the pipeline

#####################################################
# Get the reduced species gene id list
#####################################################
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z0_Reduce_species_num_for_branch_site_model.py")


#####################################################
# build the tree
#####################################################
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_simplify2/protein_align_tree_2
    cd /home/luhongzhong/ortholog_343_simplify2/protein_align_s2_R/
        for i in *_aa_aligned.fasta
            do
                FastTree -lg < $i > /home/luhongzhong/ortholog_343_simplify2/protein_align_tree_2/${i%_aa_aligned.fasta}_aa.tre
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
    tree_dir <- "/home/luhongzhong/ortholog_343_simplify2/protein_align_tree_2"

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
    mkdir /home/luhongzhong/ortholog_343_simplify2/unroot_tree/
    cd /home/luhongzhong/ortholog_343_simplify2/protein_align_tree_2
    for i in *_aa_unroot.tre
        do 
            mv $i /home/luhongzhong/ortholog_343_simplify2/unroot_tree/
        done
    echo "moving the files have been done!"

    ''')
os.system("chmod u+x unroot_tree.sh")
os.system("./unroot_tree.sh")


# tree name unify
os.system("mkdir /home/luhongzhong/ortholog_343_simplify2/unroot_tree_unify/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/tree_build/"
cmd = "python" + " " + \
      code_dir0 + \
      "B4_unify_geneID_name.py -t /home/luhongzhong/ortholog_343_simplify2/unroot_tree/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_343_simplify2/unroot_tree_unify/"
os.system(cmd)


####################################################
# codon align
####################################################
# extract OGs protein sequence of high quality
# be careful about this step: we need extract the original protein alignment based on the "protein_align_s2_R"
# the original protein alignment is stored in --- /home/luhongzhong/ortholog_343/protein_align/
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s5_collect_proteinID_high_quality.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_343_simplify2/protein_align_s2_R/ -o /home/luhongzhong/ortholog_343_simplify2/protein_refine/ -t unprune"
os.system("mkdir /home/luhongzhong/ortholog_343_simplify2/protein_refine/")
os.system(cmd)


# annote the cds using the original aligned protein with macse
with open("coden_align_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
mkdir /home/luhongzhong/ortholog_343_simplify2/cds_align_macse/
cd /home/luhongzhong/ortholog_343_simplify2/cds_refine/
for i in *_code.fasta
do
    java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_343_simplify2/protein_refine/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/ortholog_343_simplify2/cds_align_macse/$i
done
    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")

# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden.
# This step has been test in the small dataset. If the stop codon is not removed, the gene level dN/dS for some OGs can not be calculated.
os.system("mkdir /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_343_simplify2/cds_align_macse/ -o /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_343_simplify2/cds_align_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_343_simplify2/cds_align_unify/")
os.system(cmd)


####################################################
# evolution analysis based on PAML
####################################################


####################################################
# evolution analysis based on Hyphy
####################################################

# site level dN/dS
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_simplify2/fubar_result/

    cd /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code
    for i in *_code.fasta
        do
            hyphy fubar --alignment /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/$i --tree /home/luhongzhong/ortholog_343_simplify2/unroot_tree/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_343_simplify2/fubar_result/${i%_code.fasta}_code.fasta.FUBAR.json
            rm /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/${i%_code.fasta}_code.fasta.FUBAR.cache
        done
    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")

# site level dN/dS based on the foreground branch
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_simplify2/fubar_result/

    cd /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code
    for i in *_code.fasta
        do
            hyphy fubar --alignment /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/$i --tree /home/luhongzhong/ortholog_343_simplify2/unroot_tree/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_343_simplify2/fubar_result/${i%_code.fasta}_code.fasta.FUBAR.json
            rm /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/${i%_code.fasta}_code.fasta.FUBAR.cache
        done
    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")




# branch site model analysis with hyphy
# tree label firstly for specific phenotypes
"""
with open("Label_tree_hyphy.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_343_simplify2/unroot_tree_label/
cd /home/luhongzhong/Documents/evolution_analysis/code/tree_build
Rscript Lable_tree_hyphy_update.R
    ''')
os.system("chmod u+x Label_tree_hyphy.sh")
os.system("./Label_tree_hyphy.sh")
"""

# branch site model using absrel
with open("absrel.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_simplify2/absrel_result/
    cd /home/luhongzhong/ortholog_343_simplify2/unroot_tree_label
    for i in *_aa_unroot_LABEL.tre
        do
            hyphy absrel --alignment /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/${i%_aa_unroot_LABEL.tre}_code.fasta --tree /home/luhongzhong/ortholog_343_simplify2/unroot_tree_label/$i --branches Foreground --output /home/luhongzhong/ortholog_343_simplify2/absrel_result/${i%_aa_unroot_LABEL.tre}.ABSREL.json
        done
    ''')
os.system("chmod u+x absrel.sh")
os.system("./absrel.sh")

# branch site model using busted
with open("busted.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_simplify2/busted_result/
    cd /home/luhongzhong/ortholog_343_simplify2/unroot_tree_label
    for i in *_aa_unroot_LABEL.tre
        do
            hyphy busted --alignment /home/luhongzhong/ortholog_343_simplify2/cds_align_macse_remove_stop_code/${i%_aa_unroot_LABEL.tre}_code.fasta --tree /home/luhongzhong/ortholog_343_simplify2/unroot_tree_label/$i --branches Foreground --srv Yes --output /home/luhongzhong/ortholog_343_simplify2/busted_result/${i%_aa_unroot_LABEL.tre}.BUSTED.json
        done
    ''')
os.system("chmod u+x busted.sh")
os.system("./busted.sh")