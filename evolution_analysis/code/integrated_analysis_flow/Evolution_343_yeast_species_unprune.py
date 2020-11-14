# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os

# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/")  # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test6")
os.system(" mkdir temporary_code_for_test6")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test6")  # which will store the code used in the pipeline

####################################################
# codon align
####################################################
os.system("mkdir /home/luhongzhong/ortholog_343_unprune")
os.system("cp -R /home/luhongzhong/ortholog_343/cds_refine_before_prune /home/luhongzhong/ortholog_343_unprune")


# codon align based on the guidance
with open("A4_code_align_all_guidance.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance/
cd /home/luhongzhong/ortholog_343_unprune/cds_refine_before_prune
for i in *_code.fasta
    do
        perl /home/luhongzhong/Documents/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_unprune/cds_refine_before_prune/$i  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance/${i%_code.fasta}_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A4_code_align_all_guidance_remove_files.py -n /home/luhongzhong/ortholog_343_unprune/cds_align_guidance/${i%_code.fasta}_result/
    done
    ''')
os.system("chmod u+x A4_code_align_all_guidance.sh")
os.system("./A4_code_align_all_guidance.sh")

# test of guidance
os.system("perl /home/luhongzhong/Documents/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_unprune/cds_refine_before_prune/OG1006_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance/OG1006_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93")


# transfer the aligned cds sequence into a new file
os.system("mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A7_move_align_guidance_into_new_file.py  -r /home/luhongzhong/ortholog_343_unprune/cds_align_guidance/ -n /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/")


#####################################################
# build the tree
#####################################################
# here, should we use re-align the original protein and then build the tree?
with open("build_tree_step2.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree
    cd /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/
        for i in *_code.fasta
            do
                FastTree -gtr -nt < $i > /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree/${i%_code.fasta}_aa.tre
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
    tree_dir <- "/home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree"

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
    mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree_unroot/
    cd /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree
    for i in *_aa_unroot.tre
        do
            mv $i /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree_unroot/
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
# site level dN/dS
# FUBAR
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance/

    cd /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new
    for i in *_code.fasta
        do
            mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FUBAR.bf --alignment /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/$i --tree /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree_unroot/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance/${i%_code.fasta}_code.fasta.FUBAR.json
            rm /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/${i%_code.fasta}_code.fasta.FUBAR.cache
            mv /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/${i%_code.fasta}_code.fasta.FUBAR.json /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance/
        done

    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")


# FEL
with open("fel.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_unprune/fel_result_guidance/

    cd /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new
    for i in *_code.fasta
        do
            mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new/$i --tree /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree_unroot/${i%_code.fasta}_aa_unroot.tre --srv Yes --pvalue 0.1 --output /home/luhongzhong/ortholog_343_unprune/fel_result_guidance/${i%_code.fasta}.FEL.json
        done
    ''')
os.system("chmod u+x fel.sh")
os.system("./fel.sh")


###################################################################
# site model analysis especially for protein 3D structures mapping
###################################################################

# step1 prepare the aligned original cds and protein file. In this step, the filter seq should be removed.
# note: the followed long code should be changed into a unique function in the followed weeks.

import shutil
import pandas as pd
import os
from Bio import SeqIO

result_file_guidance= "/home/luhongzhong/ortholog_343_unprune/cds_align_guidance/"
out_file = "/home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune/"
out_file2 = "/home/luhongzhong/ortholog_343_unprune/protein_refine_unprune/"
os.system("mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune/")
os.system("mkdir /home/luhongzhong/ortholog_343_unprune/protein_refine_unprune/")

all_og = os.listdir(result_file_guidance)
all_og = [x for x in all_og if "_result" in x]

id_need_check = []
for result0 in all_og:
    print(result0)
    # result0 = "OG1006_result" # test
    target_file0 = os.listdir(result_file_guidance + result0)
    id_mapping_in= result_file_guidance + result0 + "/" + "Seqs.Codes"

    # check which seq is removed
    target_title = "MSA.MAFFT.Without_low_SP_Col.With_Names"
    if target_title in target_file0:
        old_file = result_file_guidance + result0 + "/" + target_title
        OG_trim = list(SeqIO.parse(old_file, "fasta"))
        proteinID = []
        for record in OG_trim:
            print(record.id, len(list(record.seq)))
            proteinID.append(record.id)

        #test
        #proteinID0 = proteinID[0:5]
        id_input = pd.read_csv(id_mapping_in, sep="\t", header=None)
        id_input.columns =["geneID", "seqID"]
        # filter id based on the filter cds result
        id_input1 = id_input[id_input["geneID"].isin(proteinID)]
        if id_input.shape[0] != id_input1.shape[0]:
            print("there are cds sequences being removed!")
        id_mapping1 = {v: k for k, v in zip(id_input1.iloc[:, 0].tolist(), id_input1.iloc[:, 1].tolist())}

        # for new cds file
        og_id = id_input1["geneID"].tolist()
        cds_unprune = result_file_guidance + result0 + "/" + "MSA.MAFFT.aln.With_Names"
        cds_output = out_file + "/" + result0.replace("_result", "_code.fasta")
        cds = list(SeqIO.parse(cds_unprune, "fasta"))
        cds_new = []
        for cds0 in cds:
            print(cds0.id)
            if cds0.id in og_id:
                cds_new.append(cds0)
        SeqIO.write(cds_new, cds_output, "fasta")

        # for new protein file
        og_id2 = id_input1["seqID"].tolist()
        pro_unprune = result_file_guidance + result0 + "/" + "MSA.MAFFT.PROT.aln"
        pro_output = out_file2 + "/" + result0.replace("_result", "_aa_aligned.fasta")
        pro = list(SeqIO.parse(pro_unprune, "fasta"))
        pro_new = []
        for pro0 in pro:
            print(pro0.id)
            if pro0.id in og_id2:
                pro_new.append(pro0)
        # update the id
        pro_new2 = []
        for pp in pro_new:
            print(pp.id)
            old_name = pp.id
            pp.id = id_mapping1[old_name]
            pro_new2.append(pp)
        SeqIO.write(pro_new2, pro_output, "fasta")

# extract the og with sce
og_sce_list = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/sce_gene_summary.xlsx")
og_sce_list0 = og_sce_list["OrthologID"].tolist()

# built a new file for OGs with sce:
os.system("mkdir /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce/")

source_file = "/home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune/"
all_og_new  = os.listdir(source_file)
out_file_sce = "/home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce/"
for i in all_og_new:
    print(i)
    s = i.replace("_code.fasta","")
    if s in og_sce_list0:
        shutil.copy(source_file + i, out_file_sce)

# fubar
with open("fubar.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance_unprune_sce/

    cd /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce
    for i in *_code.fasta
        do
            mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FUBAR.bf --alignment /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce/$i --tree /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_new_tree_unroot/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance_unprune_sce/${i%_code.fasta}_code.fasta.FUBAR.json
            rm /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce/${i%_code.fasta}_code.fasta.FUBAR.cache
            mv /home/luhongzhong/ortholog_343_unprune/cds_align_guidance_unprune_sce/${i%_code.fasta}_code.fasta.FUBAR.json /home/luhongzhong/ortholog_343_unprune/fubar_result_guidance_unprune_sce/
        done

    ''')
os.system("chmod u+x fubar.sh")
os.system("./fubar.sh")
