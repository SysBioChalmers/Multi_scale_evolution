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
os.system(" mkdir /home/luhongzhong/ortholog_sce_prune/")


####################################################
# codon align
####################################################

# extract OGs protein sequence contain sce ID
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "Z2_collect_proteinID_high_quality_sce.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_343/protein_align_pruner/ -o /home/luhongzhong/ortholog_sce_prune/protein_refine/ -t prune"
os.system(" mkdir /home/luhongzhong/ortholog_sce_prune/protein_refine/")
os.system(cmd)


# extract the relate cds sequence contain sce ID
# here we can extract the id based on the protein_refine file
"""
with open("collect_cds_sce.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_sce_prune/protein_refine/
    for i in *_aa_aligned.fasta
        do
            cp /home/luhongzhong/ortholog_343/cds_refine/${i%_aa_aligned.fasta}_code.fasta /home/luhongzhong/ortholog_sce_prune/cds_refine/
        done
    ''')
os.system("mkdir /home/luhongzhong/ortholog_sce_prune/cds_refine/")
os.system("chmod u+x collect_cds_sce.sh")
os.system("./collect_cds_sce.sh")
"""
# extract cds seq from pruned protein seq
os.system( "mkdir /home/luhongzhong/ortholog_sce_prune/cds_refine/")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A2_extract_cds_from_align_protein.py -n /home/luhongzhong/ortholog_343/cds/ -p1 /home/luhongzhong/ortholog_sce_prune/protein_refine/ -o /home/luhongzhong/ortholog_sce_prune/cds_refine/"
os.system(cmd)


# code_align_macse
with open("code_macse.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    cd /home/luhongzhong/ortholog_sce_prune/cds_refine/
    for i in *_code.fasta
        do
            java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_sce_prune/protein_refine/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/ortholog_sce_prune/cds_align_macse/$i
        done

    ''')
os.system("mkdir /home/luhongzhong/ortholog_sce_prune/cds_align_macse/")
os.system("chmod u+x code_macse.sh")
os.system("./code_macse.sh")


# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden.
# This step has been test in the small dataset. If the stop codon is not removed, the gene level dN/dS for some OGs can not be calculated.
os.system("mkdir /home/luhongzhong/ortholog_sce_prune/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_sce_prune/cds_align_macse/ -o /home/luhongzhong/ortholog_sce_prune/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_sce_prune/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_sce_prune/cds_refine_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_sce_prune/cds_refine_unify/")
os.system(cmd)


#####################################################
# build the tree
#####################################################
# collect the unroot tree
file0 = "/home/luhongzhong/ortholog_sce_prune/cds_refine/"
file1 = "/home/luhongzhong/ortholog_343/unroot_tree/"
file2 = "/home/luhongzhong/ortholog_sce_prune/unroot_tree/"
import shutil
#os.remove(file2)
try:
    os.mkdir(file2)
except: pass
all_sce_ORG = os.listdir(file0)

for i in all_sce_ORG:
    print(i)
    shutil.copy(file1 + i.replace("_code.fasta", "_aa_unroot.tre"), file2)


# collect the unified tree directly
file0 = "/home/luhongzhong/ortholog_sce_prune/cds_refine/"
file1 = "/home/luhongzhong/ortholog_343/unroot_tree_unify/"
file2 = "/home/luhongzhong/ortholog_sce_prune/unroot_tree_unify/"
import shutil
#os.remove(file2)
try:
    os.mkdir(file2)
except: pass
all_sce_ORG = os.listdir(file0)

for i in all_sce_ORG:
    print(i)
    shutil.copy(file1 + i.replace("_code.fasta", "_aa_unroot_unify.tre"), file2)


####################################################
# evolution analysis
####################################################
# gene level dN/dS
with open("gene_dN_dS.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_sce_prune/result_paml/
    cd /home/luhongzhong/ortholog_sce_prune/cds_refine_unify/
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/ortholog_sce_prune/cds_refine_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/ortholog_sce_prune/result_paml/${i%_code.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')
os.system("chmod u+x gene_dN_dS.sh")
os.system("./gene_dN_dS.sh")

# parse the result
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00.py -i /home/luhongzhong/ortholog_sce_prune/result_paml/ -o /home/luhongzhong/ortholog_sce_prune/result_paml_parse/ -m median")


#####################################################
# conservation analysis
#####################################################
# conservation score calculation
with open("conservation_score.sh", "w") as rsh:
    rsh.write('''\
#!/usr/bin/env bash
mkdir /home/luhongzhong/ortholog_sce_prune/protein_sce_conservation_score
cd /home/luhongzhong/ortholog_sce_prune/protein_refine/
for i in *_aa_aligned.fasta
    do
        cd /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation
        python2 score_conservation.py  -g 0.3 -o /home/luhongzhong/ortholog_sce_prune/protein_sce_conservation_score/${i%_aa_aligned.fasta}_conservation_score_jsd /home/luhongzhong/ortholog_sce_prune/protein_refine/$i
    done
    ''')
os.system("chmod u+x conservation_score.sh")
os.system("./conservation_score.sh")
# parse the conservation score
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "step2_parse_jds_result_with_sce_as_reference.py -p0 /home/luhongzhong/ortholog_sce_prune/all_reference_aa_1011_sce_update_align/ -s /home/luhongzhong/ortholog_sce_prune/protein_sce_conservation_score/ -o /home/luhongzhong/ortholog_sce_prune/result_jsd"
os.system("mkdir /home/luhongzhong/ortholog_sce_prune/result_jsd")
os.system(cmd)