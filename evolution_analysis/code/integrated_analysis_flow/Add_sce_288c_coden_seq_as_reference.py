# this script is add the sce 288c protein fasta file for 1011 sce sequence
# so that we can calculate the conservation score of each residue based on sce s288c

from Bio import SeqIO
import os
import argparse

'''
pro_input = "/home/luhongzhong/Documents/evolution_analysis/data/sce_protein_all.fasta"
pro_output = "/home/luhongzhong/Documents/evolution_analysis/data/sce_protein_all_update.fasta"

ori_pro = open(pro_input, "r").readlines()
new_pro = open(pro_output, "w")
ori_pro0 = []
for i in ori_pro:
    print(i)
    if ">" in i:
        s0 = i.split(" ")[0] + "\n"
        ori_pro0.append(s0)

    else:
        ori_pro0.append(i)

new_pro.writelines(ori_pro0)
new_pro.close()

# reinput the fasta file
# build the id and seq dict
pro_sce = list(SeqIO.parse(pro_output, "fasta"))
id_seq = {}
for ele in pro_sce:
    print(ele.id, ele._seq)
    id_seq[ele.id] = ele._seq._data



# put the reference aa information into the 1011 sce project
sce_1011 = "/media/luhongzhong/newdisk/Genomics_data/protein_original/"
os.system(" mkdir /media/luhongzhong/newdisk/Genomics_data/protein_all/")
out_dir = "/media/luhongzhong/newdisk/Genomics_data/protein_all/"

all_gene = os.listdir(sce_1011)
for i in all_gene:
    print(i)
    #i = "YLR030W_aa.fasta"
    input_fasta = sce_1011 + i
    fast_in = open(input_fasta, "r").readlines()
    # find the sce s288c based on the gene id
    geneID = i.split("_aa")[0]
    geneID0 = ">" + "SACE_288c" + "_" + geneID + "\n"
    try:
        seq0 = id_seq[geneID] + "\n"
        fast_in.append(geneID0)
        fast_in.append(seq0)
        out_dir0 = out_dir + i
        out0 = open(out_dir0, "w")
        out0.writelines(fast_in)
        out0.close()
    except:
        pass
'''
# we insert the code seq from sce s288c into each gene
cds_input = "/home/luhongzhong/Documents/evolution_analysis/data/sce_coding_all.fasta"
cds_output = "/home/luhongzhong/Documents/evolution_analysis/data/sce_coding_all_update.fasta"

ori_cds = open(cds_input, "r").readlines()
new_cds = open(cds_output, "w")
ori_cds0 = []
for i in ori_cds:
    print(i)
    if ">" in i:
        s0 = i.split(" ")[0] + "\n"
        ori_cds0.append(s0)

    else:
        ori_cds0.append(i)

new_cds.writelines(ori_cds0)
new_cds.close()

# reinput the fasta file
# build the id and seq dict
cds_sce = list(SeqIO.parse(cds_output, "fasta"))
id_seq = {}
for ele in cds_sce:
    print(ele.id, ele._seq)
    id_seq[ele.id] = ele._seq._data



# put the reference aa information into the 1011 sce project
sce_1011 = "/media/luhongzhong/newdisk/Genomics_data/cds_all_original/"
os.system(" mkdir /media/luhongzhong/newdisk/Genomics_data/cds_all/")
out_dir = "/media/luhongzhong/newdisk/Genomics_data/cds_all/"

all_gene = os.listdir(sce_1011)
for i in all_gene:
    print(i)
    #i = "YLR030W_aa.fasta"
    input_fasta = sce_1011 + i
    fast_in = open(input_fasta, "r").readlines()
    # find the sce s288c based on the gene id
    geneID = i.split(".")[0]
    geneID0 = ">" + "SACE_288c" + "_" + geneID + "\n"
    try:
        seq0 = id_seq[geneID] + "\n"
        fast_in.append(geneID0)
        fast_in.append(seq0)
        out_dir0 = out_dir + i
        out0 = open(out_dir0, "w")
        out0.writelines(fast_in)
        out0.close()
    except:
        pass