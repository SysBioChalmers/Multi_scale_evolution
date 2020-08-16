# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# The script is updated on MAC

from Bio import SeqIO
import os
import pandas as pd

#datafile = "/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv/"
datafile = "/home/luhongzhong/ortholog_343/fubar_csv/" # new result for all OGs
all_OG = os.listdir(datafile)
positive_select_num = []
nagtive_select_num = []

for i in all_OG:
    print(i)
    file0 = datafile + i
    csv_file = pd.read_csv(file0)
    csv_file.index.name = 'newhead'
    csv_file.reset_index(inplace=True)
    csv_file.columns = ["site",	"alpha", "beta","beta-alpha","Prob[alpha>beta]","Prob[alpha<beta]",	"BayesFactor[alpha<beta]","para1", "para2"]
    negative_side = csv_file["Prob[alpha>beta]"].tolist()
    negative_sites = [x for x in negative_side if x > 0.9]
    negative_num = len(negative_sites)
    nagtive_select_num.append(negative_num)
    positive_side = csv_file["Prob[alpha<beta]"].tolist()
    positive_sites = [x for x in positive_side if x > 0.9]
    positive_num = len(positive_sites)
    positive_select_num.append(positive_num)

positive_select_num_3 = [x for x in positive_select_num if x >= 4]
print(len(positive_select_num_3))
selection_summary = pd.DataFrame({"OG":all_OG, "negative_num": nagtive_select_num, "positive_num": positive_select_num})
selection_summary["OG"] = selection_summary["OG"].str.replace(".csv","")
selection_summary.to_csv("/home/luhongzhong/ortholog_343/fubar_02_08.csv")

#test = selection_summary[selection_summary["OG"]=="OG17157"]