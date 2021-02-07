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


whole_tree_node = { '<659>': '9species',
            '<633>': '323species', 
}

for line in lines :
    data = line.strip().split('\t')
    # print(data)
    one_branch = dict()
    # print(data[0][:-1])
    if data[0][:-1] in list(whole_tree_node.keys()) :
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

        one_branch = {'species':whole_tree_node[branch], 'expansion':expansion, 'contraction':contraction, 'rapidly_evolving':rapidly_evolving}

        summary_analysis.append(one_branch)

# print(len(summary_analysis))
for one_branch in summary_analysis :
    print(len(one_branch['contraction'])) # 886  15

contraction_1 = summary_analysis[0]['contraction']
contraction_2 = summary_analysis[1]['contraction']

union_1 = set(contraction_1).union(set(contraction_2))
print(len(union_1))  # 886
contraction_whole = list(union_1)

expansion_1 = summary_analysis[0]['expansion']
expansion_2 = summary_analysis[1]['expansion']

union_2 = set(expansion_1).union(set(expansion_2))
print(len(union_2))  # 39
expansion_whole = list(union_2)

summary_whole = {'species':'whole_tree', 'expansion':expansion_whole, 'contraction':contraction_whole}

with open('CAFE_whole_tree_analysis.json', 'w') as outfile :
    json.dump(summary_whole, outfile, indent=4)
