#!/usr/bin/python

# Note
# The script is used to extract paired seq from one big gene family

import os
import argparse

input0 = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/"
all_gene = os.listdir(input0)

for gene in all_gene:
    if ".phy" in gene:
        print(gene)
        # fasta0 = input0 + "YPR204W.phy"
        fasta0 = input0 + gene
        s0 = open(fasta0, "r").readlines()
        # firstly build the id and seq dict
        general_information = s0[0].split(" ")
        id_index = []
        id = []
        for i, s in enumerate(s0):
            if "   \n" in s:
                # print(s)
                id.append(s)
                id_index.append(i)
        id_seq_dict = {}
        for j, id0 in enumerate(id):
            # print(j)
            if j < len(id) - 1:
                index_s = id_index[j] + 1
                index_e = id_index[j + 1]
                seq_choose = s0[index_s:index_e]

            else:
                index_s = id_index[j] + 1
                seq_choose = s0[index_s:]
            # print(seq_choose)
            id_new = id0.strip("\n")
            id_new = id_new.strip(" ")
            id_seq_dict[id_new] = seq_choose

        # build a temporary fold
        commond1 = "rm -rf " + input0 + "paired_gene_" + gene + "/"
        commond2 = "mkdir " + input0 + "paired_gene_" + gene + "/"
        os.system(commond1)
        os.system(commond2)

        outfile = input0 + "paired_gene_" + gene + "/"
        id_update = [x.strip("\n") for x in id]
        id_update = [x.strip(" ") for x in id_update]
        # how to find the referenceID
        # for the 1011 sce genome project
        # referenceID = "SACE_288c"
        # id_update = ["110_1", "120_2"] # example for 343 yeast species genome
        referenceID_all = [x for x in id_update if x== "SACE_288c" or x.split("_")[0]=="110"]
        if len(referenceID_all) >=1:
            referenceID = referenceID_all[0]
            general_information_new = str(2) + " " + " ".join(general_information[1:])
            for ss in id_update:
                # print(ss)
                if referenceID not in ss:
                    print(ss)
                    file_out = outfile + ss
                    out = open(file_out, "w")
                    out.write(general_information_new)
                    out.write(ss + "  " + "\n")
                    out.writelines("".join(id_seq_dict[ss]))
                    out.write(referenceID + "  " + "\n")
                    out.write("".join(id_seq_dict[referenceID]))
        else:
            pass