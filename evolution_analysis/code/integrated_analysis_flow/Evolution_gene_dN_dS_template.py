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
# os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z7_Collect_seq_for_each_clade.py")

# Saccharomycetaceae
####################################################
# codon align
####################################################
# extract OGs protein sequence of high quality
# be careful about this step: we need extract the original protein alignment based on the "protein_align_s2_R"
# the original protein alignment is stored in --- /home/luhongzhong/ortholog_343/protein_align/
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/protein_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "s5_collect_proteinID_high_quality.py -p0 /home/luhongzhong/ortholog_343/protein_align/ -p1 /home/luhongzhong/ortholog_Saccharomycetaceae/protein_align_s2_R/ -o /home/luhongzhong/ortholog_Saccharomycetaceae/protein_refine/ -t unprune"
os.system("mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/protein_refine/")
os.system(cmd)

# annote the cds using the original aligned protein with macse
with open("coden_align_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse/
cd /home/luhongzhong/ortholog_Saccharomycetaceae/cds_refine/
for i in *_code.fasta
do
    java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_Saccharomycetaceae/protein_refine/${i%_code.fasta}_aa_aligned.fasta  -seq $i -out_NT /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse/$i
done
    ''')
os.system("chmod u+x coden_align_macse.sh")
os.system("./coden_align_macse.sh")

# here if the macse is used to annotate the cds, there are stop codon exist in the seq, thus we will try to remove stop coden.
# This step has been test in the small dataset. If the stop codon is not removed, the gene level dN/dS for some OGs can not be calculated.
os.system("mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse_remove_stop_code")
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A5_remove_stop_codon_commond_line.py  -n /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse/ -o /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse_remove_stop_code/"
os.system(cmd)


# prepare the code in paml format
code_dir0 = "/home/luhongzhong/Documents/evolution_analysis/code/code_align/"
cmd = "python" + " " + \
                  code_dir0 + \
                  "A6_prepare_code_for_paml.py -n /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_macse_remove_stop_code/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_unify/"
os.system(" mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_unify/")
os.system(cmd)

####################################################
# evolution analysis based on PAML
####################################################
# gene level dN/dS
with open("gene_dN_dS.sh", "w") as rsh:
    rsh.write('''\
    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/result_paml/
    cd /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_unify
    for i in *_code.phy
        do
            python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /home/luhongzhong/ortholog_Saccharomycetaceae/cds_align_unify/$i -c /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/ -o /home/luhongzhong/ortholog_Saccharomycetaceae/result_paml/${i%_code.phy}.out
            yn00 /home/luhongzhong/Documents/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
        done
    ''')
os.system("chmod u+x gene_dN_dS.sh")
os.system("./gene_dN_dS.sh")

# parse the result
os.system("mkdir /home/luhongzhong/ortholog_Saccharomycetaceae/result_paml_parse")
os.system("python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00_update.py -i /home/luhongzhong/ortholog_Saccharomycetaceae/result_paml/ -o /home/luhongzhong/ortholog_Saccharomycetaceae/result_paml_parse/ -m median")