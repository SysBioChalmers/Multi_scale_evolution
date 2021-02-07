#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-20


import csv
import json

with open("./summary_run1_fams.txt", "r") as file :
    lines = file.readlines()[2:]

i = 0
print(len(lines))  # 662
summary_analysis = list()


branch_clade = { '<659>': 'Lipomycetaceae',
                 '<637>': 'Trigonopsidaceae',
                 '<575>': 'Dipodascaceae/Trichomonascaceae',
                 '<558>': 'Alloascoideaceae',
                 '<555>': 'Sporopachydermia',
                 '<323>': 'CUG-Ser2',
                 '<487>': 'Phaffomycetaceae',
                 '<331>': 'Saccharomycodaceae',
                 '<443>': 'Saccharomycetaceae',
                 '<189>': 'CUG-Ala',
                 '<185>': 'CUG-Ser1',
                 '<209>': 'Pichiaceae',
}

for line in lines :
    data = line.strip().split('\t')
    # print(data)
    one_branch = dict()
    # print(data[0][:-1])
    if data[0][:-1] in list(branch_clade.keys()) or data[0][:-1].endswith('<558>') :
        if data[0][:-1] in list(branch_clade.keys()) :
            i += 1
            print(i)
            branch = data[0][:-1]
        else :
            i += 1
            print(i)
            branch = '<558>'

        all_OG = data[1].split(',')
        print(branch)
        print(branch_clade[branch])
        expansion = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('+')]
        # print(expansion)
        print(len(expansion))
        contraction = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('-')]
        # print(contraction)
        print(len(contraction))

        rapidly_evolving = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('+') and OG.split('[')[1][:-2]=='*']
        print(len(rapidly_evolving))

        one_branch = {'clade':branch_clade[branch], 'expansion':expansion, 'contraction':contraction, 'rapidly_evolving':rapidly_evolving}

        summary_analysis.append(one_branch)

# print(len(summary_analysis))

with open('CAFE_branch_clade_analysis.json', 'w') as outfile :
    json.dump(summary_analysis, outfile, indent=4)

