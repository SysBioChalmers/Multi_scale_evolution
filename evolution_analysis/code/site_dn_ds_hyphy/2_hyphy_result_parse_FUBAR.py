# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# The script is updated on MAC
# It is used to parse the result from FUBAR

from Bio import SeqIO
import os
import phyphy
import pandas as pd


def hyphy_parse(infile, outfile):
    myext = phyphy.Extractor(infile)
    e = myext
    e.extract_csv(outfile)  ## save to fel.csv


# FUBAR

# step 1 parse the result from the original output
# simple example
# myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_code.phy.FUBAR.json")
# e = myext
# e.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_FUBAR.csv")  ## save to fel.csv

# batch process

"""
# This is only for OGs with sce genes. The number is 4139.
os.mkdir("/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv")
all_OG = os.listdir("/home/luhongzhong/Documents/cluster_result/fubar/fubar_result") # Note: this original file is too big, which is deleted.
input = "/home/luhongzhong/Documents/cluster_result/fubar/fubar_result/"
output = "/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_code.fasta.FUBAR.json", ".csv")
    hyphy_parse(infile0, outfile0)"""


# Parse the result for the cds aligned by MACSE v2.0 result using the pruning OGs
# step1
os.mkdir("/home/luhongzhong/ortholog_343/fubar_csv/")
all_OG = os.listdir("/home/luhongzhong/ortholog_343/fubar_result") # Note: this original file is over 200G, which is deleted.
input = "/home/luhongzhong/ortholog_343/fubar_result/"
output = "/home/luhongzhong/ortholog_343/fubar_csv/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_code.fasta.FUBAR.json", ".csv")
    hyphy_parse(infile0, outfile0)

# step2 find the positive selected sites
#datafile = "/home/luhongzhong/ortholog_343/fubar_csv/" # new result for all OGs
all_OG = os.listdir(output)
positive_select_num = []
nagtive_select_num = []

for i in all_OG:
    print(i)
    file0 = output + i
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

positive_select_num_3 = [x for x in positive_select_num if x >= 1]
print(len(positive_select_num_3))
selection_summary = pd.DataFrame({"OG":all_OG, "negative_num": nagtive_select_num, "positive_num": positive_select_num})
selection_summary["OG"] = selection_summary["OG"].str.replace(".csv","")
selection_summary.to_csv("/home/luhongzhong/ortholog_343/fubar_02_08.csv")
#test = selection_summary[selection_summary["OG"]=="OG17157"]








# Parse the result for the cds aligned by guidance using the pruning OGs
# step1
os.mkdir("/home/luhongzhong/ortholog_343/fubar_csv_guidance/")
all_OG = os.listdir("/home/luhongzhong/ortholog_343/fubar_result_guidance")
input = "/home/luhongzhong/ortholog_343/fubar_result_guidance/"
output = "/home/luhongzhong/ortholog_343/fubar_csv_guidance/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_code.fasta.FUBAR.json", ".csv")
    hyphy_parse(infile0, outfile0)

# step2
# datafile = "/home/luhongzhong/ortholog_343/fubar_csv_guidance/" # new result for all OGs
all_OG = os.listdir(output) # all_OG = os.listdir(datafile)
positive_select_num = []
nagtive_select_num = []

for i in all_OG:
    print(i)
    file0 = output + i
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

positive_select_num_3 = [x for x in positive_select_num if x >= 1]
print(len(positive_select_num_3))

selection_summary = pd.DataFrame({"OG":all_OG, "negative_num": nagtive_select_num, "positive_num": positive_select_num})
selection_summary["OG"] = selection_summary["OG"].str.replace(".csv","")
selection_summary.to_csv("/home/luhongzhong/ortholog_343/fubar_guidance_prune.csv")







# Parse the result for the cds aligned by guidance result using the unpruning OGs
# step1
os.mkdir("/home/luhongzhong/ortholog_343_unprune/fubar_csv_guidance/")
all_OG = os.listdir("/home/luhongzhong/ortholog_343_unprune/fubar_result_guidance")
input = "/home/luhongzhong/ortholog_343_unprune/fubar_result_guidance/"
output = "/home/luhongzhong/ortholog_343_unprune/fubar_csv_guidance/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_code.fasta.FUBAR.json", ".csv")
    hyphy_parse(infile0, outfile0)

# step2
# datafile = "/home/luhongzhong/ortholog_343_unprune/fubar_csv_guidance/" # new result for all OGs
all_OG = os.listdir(output) # all_OG = os.listdir(datafile)
positive_select_num = []
nagtive_select_num = []

for i in all_OG:
    print(i)
    file0 = output + i
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
selection_summary.to_csv("/home/luhongzhong/ortholog_343_unprune/fubar_guidance_unprune.csv")


