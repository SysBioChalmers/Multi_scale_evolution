#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-23


import csv
import json

with open("./summary_run1_fams.txt", "r") as file :
    lines = file.readlines()[2:]

i = 0
print(len(lines))  # 662
summary_analysis = list()


WGD_node = { '<357>': 'WGD',
            '<429>': 'Non-WGD', 
}

for line in lines :
    data = line.strip().split('\t')
    # print(data)
    one_branch = dict()
    # print(data[0][:-1])
    if data[0][:-1] in list(WGD_node.keys()) :
        i += 1
        print(i)
        branch = data[0][:-1]

        all_OG = data[1].split(',')
        print(branch)
        expansion = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('+')]
        # print(expansion)
        print(len(expansion))
        contraction = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('-')]
        # print(contraction)
        print(len(contraction))

        rapidly_evolving = [OG.split('[')[0] for OG in all_OG if OG.split('[')[1].startswith('+') and OG.split('[')[1][:-2]=='*']
        print(len(rapidly_evolving))

        one_branch = {'phenotype':WGD_node[branch], 'expansion':expansion, 'contraction':contraction, 'rapidly_evolving':rapidly_evolving}

        summary_analysis.append(one_branch)

print(len(summary_analysis))

with open('CAFE_WGD_node_analysis.json', 'w') as outfile :
    json.dump(summary_analysis, outfile, indent=4)

    # species = data[0].replace('&', '_')
    # expansion = data[1].split(' (')[0]
    # contraction = data[4].split(' (')[0]
    # rapidly_evolving = data[1].split(' (')[1][:-1]

