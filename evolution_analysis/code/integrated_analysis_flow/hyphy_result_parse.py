# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# The tutorial could be found in https://github.com/sjspielman/phyphy#parsing-hyphy-output-json
import os
import phyphy

# FUBAR
myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_code.phy.FUBAR.json")

e = myext
e.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_FUBAR.csv")  ## save to fel.csv

# FEL
myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG2079.FEL.json")

f = myext
f.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG2079_FEL.csv")

# leisr
myext = phyphy.Extractor("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_aa_aligned.fasta.LEISR.json")

l = myext
l.extract_csv("/home/luhongzhong/Documents/evolution_analysis/result/hyphy_result/OG5327_LEISR.csv")

