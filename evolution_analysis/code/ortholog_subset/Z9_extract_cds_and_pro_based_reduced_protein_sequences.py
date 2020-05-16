#!/usr/bin/env python
# The function were specially designed to extract protein seq and cds seq for species with heat-tolerance phenotype.
# The process is much easier than previous version

# 2020-04-23


from Bio import SeqIO
import os

# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir_pro = "/home/luhongzhong/ortholog_select_OG_for_heat/protein_refine/"
out_dir_cds = "/home/luhongzhong/ortholog_select_OG_for_heat/cds_refine/"

os.system("mkdir /home/luhongzhong/ortholog_select_OG_for_heat/protein_refine/")
os.system("mkdir /home/luhongzhong/ortholog_select_OG_for_heat/cds_refine/")


pro_all_dir = "/home/luhongzhong/ortholog_select_OG_for_heat/protein_reduce_unrelated_species/"
pro_original = "/home/luhongzhong/ortholog_select_OG_for_heat/protein_align/"
cds_original =  "/home/luhongzhong/ortholog_select_OG_for_heat/cds/"

og_list = os.listdir(pro_all_dir)


for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
    target_id = []
    for record in OG_original:
        print(record.id)
        target_id.append(record.id)
    # transfer protein
    pro_original0 = pro_original + i
    fasta_output = out_dir_pro + i
    OG_pro = list(SeqIO.parse(pro_original0 , "fasta"))
    OG_pro_filter = []
    for record in OG_pro:
        print(record.id)
        if record.id in target_id:
            OG_pro_filter.append(record)
    SeqIO.write(OG_pro_filter, fasta_output, "fasta")
    # transfer cds file
    cds_dir0 = cds_original + i.replace("_aa_aligned.fasta", "_code.fasta")
    cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
    OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
    OG_simple_cds = []
    for record in OG_original_cds:
        print(record.id)
        if record.id in target_id:
            OG_simple_cds.append(record)
    SeqIO.write(OG_simple_cds, cds_output, "fasta")
