# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-


# This script is updated on MAC.
# It is used to parse the branch site result by fel-hyphy
# This file will be transferred into "branch site hyphy"


# The tutorial could be found in https://github.com/sjspielman/phyphy#parsing-hyphy-output-json
import os
import phyphy
import pandas as pd


def hyphy_parse(infile, outfile):
    myext = phyphy.Extractor(infile)
    e = myext
    e.extract_csv(outfile)  ## save to fel.csv

# FEL for 200 OGs which have positive selection in the branch site model analysis using aBSREL
# batch process
os.system("mkdir /Users/luho/Documents/site_model_heat/fel_csv")
all_OG = os.listdir("/Users/luho/Documents/site_model_heat/fel_result")
all_OG = [x for x in all_OG if ".DS_Store" not in x]
input = "/Users/luho/Documents/site_model_heat/fel_result/"
output = "/Users/luho/Documents/site_model_heat/fel_csv/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace(".FEL.json", ".csv")
    hyphy_parse(infile0, outfile0)

# calculate how many OG groups have the positive selected genes
result_file = os.listdir(output)
OG_with_positive_site = []
for x in result_file:
    print(x)
    csv_file = pd.read_csv(output + x)
    # first choose the row based on the pvalue
    csv_file0 = csv_file[csv_file['p-value'] <= 0.1]
    # next choose the positive, that is beta > alpha
    csv_file1 = csv_file0[csv_file0["beta"] > csv_file0["alpha"]]
    positive_site_num = csv_file1.shape[0]
    OG_with_positive_site.append(positive_site_num)

OG_with_positive_site_2 = []

for x in result_file:
    print(x)
    x = "OG1171.csv"
    csv_file = pd.read_csv(output + x)
    # first choose the row based on the pvalue
    csv_file0 = csv_file[csv_file['p-value'] <= 0.05]
    # next choose the positive, that is beta > alpha
    csv_file1 = csv_file0[csv_file0["beta"] > csv_file0["alpha"]]
    positive_site_num = csv_file1.shape[0]
    OG_with_positive_site_2.append(positive_site_num)

fel_result_df = pd.DataFrame({"OG":result_file, "site_pvalue_0.1":OG_with_positive_site, "site_pvalue_0.05":OG_with_positive_site_2 })
fel_result_df.to_csv("/Users/luho/Documents/site_model_heat/fel_result_summary.csv")

os.system("mkdir /Users/luho/Documents/site_model_heat/fel_result_site/")
os.system("python /Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/4_effects_of_gap_on_positive_sites_num.py -p0 /Users/luho/Documents/site_model_heat/protein_refine/  -s /Users/luho/Documents/site_model_heat/fel_csv/ -o /Users/luho/Documents/site_model_heat/fel_result_site/")