#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-12


import csv
import json

with open("./summary_run_fams.txt", "r") as file :
    lines = file.readlines()[2:]

i = 0
# print(len(lines))  # 662
summary_analysis = list()

for line in lines :
    data = line.strip().split('\t')
    # print(data)
    one_yeast = dict()
    if not data[0].startswith('<') :
        i += 1
        print(i)
        organism = data[0].split('<')[0].replace('&', '_')
        all_OG = data[1].split(',')
        print(organism)
        expansion = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('+')]
        print(expansion)
        print(len(expansion))
        contraction = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('-')]
        print(contraction)
        one_yeast = {'organism':organism, 'expansion':expansion, 'contraction':contraction}
    else :
        continue

    summary_analysis.append(one_yeast)

print(len(summary_analysis))

with open('expansion_substrate_analysis.json', 'w') as outfile :
    json.dump(summary_analysis, outfile, indent=4)

