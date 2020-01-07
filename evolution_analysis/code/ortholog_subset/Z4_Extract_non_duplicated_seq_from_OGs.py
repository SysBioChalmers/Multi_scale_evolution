#!/usr/bin/python

# Note

import os
import argparse
import statistics
import pandas as pd
from Bio import SeqIO
import pandas as pd

input0 = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/"
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates/")

outfile0 = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates/"

all_gene = os.listdir("/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/")
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

        # check the duplicated seq
        id_all = []
        seq_all = []

        for key, value in id_seq_dict.items():
            value0 = "".join(value)
            id_all.append(key)
            seq_all.append(value0)

        df = pd.DataFrame({"ID": id_all, "seq": seq_all})
        duplicate0 = df[df.duplicated(['seq'], keep=False)]
        print("total seq:" + str(len(seq_all)) + "====> duplicate_seq:" + str(len(duplicate0["seq"])))

        # save the non duplicate ones
        new_df = df.drop_duplicates(subset=['seq'], keep=False)
        id_kept = new_df["ID"].tolist()
        general_information_new = str(len(id_kept)) + " " + " ".join(general_information[1:])
        file_out = outfile0 + gene
        out = open(file_out, "w")
        out.write(general_information_new)
        for ss0 in id_kept:
            out.write(ss0 + "  " + "\n")
            out.writelines("".join(id_seq_dict[ss0]))
        out.close()