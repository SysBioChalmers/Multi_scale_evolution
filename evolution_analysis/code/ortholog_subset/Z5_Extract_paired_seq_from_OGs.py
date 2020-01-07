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

        # build a temporary fold
        os.system(" rm -rf /media/luhongzhong/newdisk/Genomics_data/cds_align_unify/paired_OG")
        os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/cds_align_unify/paired_OG")
        outfile = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/paired_OG/"
        id_update = [x.strip("\n") for x in id]
        id_update = [x.strip(" ") for x in id_update]
        general_information_new = str(len(2)) + " " + " ".join(general_information[1:])
        for ss in id_update:
            # print(ss)
            if "SACE_288c" not in ss:
                print(ss)
                file_out = outfile + ss
                out = open(file_out, "w")
                out.write(general_information_new)
                out.write(ss + "  " + "\n")
                out.writelines("".join(id_seq_dict[ss]))
                out.write("SACE_288c" + "  " + "\n")
                out.write("".join(id_seq_dict["SACE_288c"]))