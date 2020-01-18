# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# The tutorial could be found in https://github.com/sjspielman/phyphy#parsing-hyphy-output-json
import os
import phyphy


def hyphy_parse(infile, outfile):
    myext = phyphy.Extractor(infile)
    e = myext
    e.extract_csv(outfile)  ## save to fel.csv

# FUBAR
myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_code.phy.FUBAR.json")
e = myext
e.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_FUBAR.csv")  ## save to fel.csv

# batch process
os.mkdir("/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv")
all_OG = os.listdir("/home/luhongzhong/Documents/cluster_result/fubar/fubar_result")
input = "/home/luhongzhong/Documents/cluster_result/fubar/fubar_result/"
output = "/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_code.fasta.FUBAR.json", ".csv")
    hyphy_parse(infile0, outfile0)

# leisr
myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_aa_aligned.fasta.LEISR.json")
l = myext
l.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_LEISR.csv")

# batch process
os.mkdir("/home/luhongzhong/Documents/cluster_result/leisr/leisr_csv")
all_OG = os.listdir("/home/luhongzhong/Documents/cluster_result/leisr/leisr_result")
input = "/home/luhongzhong/Documents/cluster_result/leisr/leisr_result/"
output = "/home/luhongzhong/Documents/cluster_result/leisr/leisr_csv/"
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace("_aa_aligned.fasta.LEISR.json", ".csv")
    hyphy_parse(infile0, outfile0)


# FEL
# myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG2079.FEL.json")
# f = myext
# f.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG2079_FEL.csv")