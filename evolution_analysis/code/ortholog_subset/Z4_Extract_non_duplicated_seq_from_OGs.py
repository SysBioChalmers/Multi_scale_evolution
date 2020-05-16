#!/usr/bin/python

# Note
# The script is to analyze the duplicated gene seq for the 1011 sce sequence project.

import os
import pandas as pd

input0 = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/"
os.system("mkdir /media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates/")
outfile0 = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify_remove_duplicates/"

all_gene = os.listdir("/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/")

gene_cluster = []
duplicated_seq_num = []
non_duplicate_seq_num = []

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
        # summarize the duplicated seq
        gene_cluster.append(gene)
        duplicated_seq_num.append(len(duplicate0["seq"]))
        non_duplicate_seq_num.append(1012-len(duplicate0["seq"]))

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




# further summarize the duplicate seq information
duplicate_seq = pd.DataFrame({"cluster": gene_cluster, "duplicate_num": duplicated_seq_num, "unique_num": non_duplicate_seq_num})
duplicate_seq.sort_values("unique_num", inplace=True)
duplicate_seq["cluster"] =  duplicate_seq["cluster"].str.replace(".phy","")


conserved_gene = duplicate_seq[duplicate_seq["unique_num"] <=16] # here we just choose top 2.5%, 145 gene id
conserved_gene_list = conserved_gene["cluster"].tolist()
print(len(conserved_gene_list))
conserved_gene_list0 = ",".join(conserved_gene_list)
print(conserved_gene_list0)


unconserved_gene = duplicate_seq[duplicate_seq["unique_num"] >= 300] # here we just choose top 2.5%, 149 gene id
unconserved_gene_list = unconserved_gene["cluster"].tolist()
print(len(unconserved_gene_list))
unconserved_gene_list0 = ",".join(unconserved_gene_list)
print(unconserved_gene_list0)

duplicate_seq.to_csv("/home/luhongzhong/Documents/R_code_for_graph/data/duplicate_gene_analysis_1011_sce.csv")

