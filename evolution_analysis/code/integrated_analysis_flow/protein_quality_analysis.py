# this script is used to build the whole pipeline to calculate the dN/dS based on paml for OGs with sce.
# however, in some OGs, the paralogs existed.
import os
import shutil

os.chdir("/home/luhongzhong/Documents/evolution_analysis/code/")


# phase 1 -- build the temporary fold
os.chdir("/home/luhongzhong/Documents/evolution_analysis/") # which will store the code used in the pipeline
os.system(" rm -rf temporary_code_for_test")
os.system(" mkdir temporary_code_for_test")
os.chdir("/home/luhongzhong/Documents/evolution_analysis/temporary_code_for_test") # which will store the code used in the pipeline


# firstly translate all the cds into protein
with open("A0_translate_aln_codon_to_aa_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir  /home/luhongzhong/ortholog_343/protein_check/
cd  /home/luhongzhong/ortholog_343/cds/
for i in *.fasta
    do
        java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog translateNT2AA -seq  /home/luhongzhong/ortholog_343/cds/$i
    done

cd  /home/luhongzhong/ortholog_343/cds/
for i in *_AA.fasta
    do
        mv $i  /home/luhongzhong/ortholog_343/protein_check/
    done
echo "moving the files have been done!"
    ''')
os.system("chmod u+x A0_translate_aln_codon_to_aa_macse.sh")
os.system("./A0_translate_aln_codon_to_aa_macse.sh")


# analysis why some OGs can not be aligned
# os.system("java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog reportGapsAA2NT -align_AA /home/luhongzhong/ortholog_sce_unprune/protein_refine/OG1504_aa_aligned.fasta  -seq /home/luhongzhong/ortholog_sce_unprune/cds_refine/OG1504_code.fasta -out_NT /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/OG1504_code.fasta")
# os.system("perl /home/luhongzhong/Documents/evolution_analysis/code/code_align/pal2nal.v14/pal2nal.pl  /home/luhongzhong/ortholog_sce_unprune/protein_refine/OG2016_aa_aligned.fasta   /home/luhongzhong/ortholog_sce_unprune/cds_refine/OG2016_code.fasta  -output fasta  -nogap   >  /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/OG2016_code.fasta")
# obtain the OGs not be aligned
OG_cds_align = os.listdir("/home/luhongzhong/ortholog_sce_unprune/cds_align_macse/")
OG_original = os.listdir("/home/luhongzhong/ortholog_sce_unprune/cds_refine/")
OG_not_align = list(set(OG_original)-set(OG_cds_align))
# for the OG not align, we will obtain the protein seq by cds seq
file0 = "/home/luhongzhong/ortholog_sce_unprune/cds_refine/"
file2 = "/home/luhongzhong/ortholog_sce_unprune/cds_check/"
os.mkdir(file2)
all_sce_ORG = os.listdir(file0)

for i in OG_not_align:
    print(i)
    shutil.copy(file0 + i, file2)

with open("A0_translate_aln_codon_to_aa_macse.sh", "w") as rsh:
    rsh.write('''\
#!/bin/bash
mkdir /home/luhongzhong/ortholog_sce_unprune/protein_check
cd /home/luhongzhong/ortholog_sce_unprune/cds_check/
for i in *.fasta
    do
        java -jar /home/luhongzhong/Documents/evolution_analysis/code/code_align/macse.jar -prog translateNT2AA -seq /home/luhongzhong/ortholog_sce_unprune/cds_check/$i
    done

cd /home/luhongzhong/ortholog_sce_unprune/cds_check/
for i in *_AA.fasta
    do
        mv $i /home/luhongzhong/ortholog_sce_unprune/protein_check
    done
echo "moving the files have been done!"

    ''')
os.system("chmod u+x A0_translate_aln_codon_to_aa_macse.sh")
os.system("./A0_translate_aln_codon_to_aa_macse.sh")