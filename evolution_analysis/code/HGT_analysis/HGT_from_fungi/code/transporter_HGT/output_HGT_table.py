#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is to output the HGT results in table S5

import os
import csv

with open('./all_fungi2yeast.tsv', 'r') as infile1 :
    data1 = infile1.readlines()

with open('./all_fungi2yeast_substrate.tsv', 'r') as infile2 :
    data2 = infile2.readlines()[1:]

with open('../HGT_transporter&substrate/transporter_fungi_HGT.tsv', 'r') as infile :
    data = infile.readlines()[1:]

# print(len(data))  # 61

data_all = data1 + data2
first_line = data_all[0]

genes = [line.strip().split('\t')[0] for line in data]

print(len(genes))
print(genes[:3])

output_file = open('./transporter_fungi_HGT_table5.tsv', 'w')
output_file.write(first_line)

i = 0
for gene in genes :
    i += 1
    print('This is', i, '---'*10)
    for data_one_line in data_all :
        if gene == data_one_line.strip().split('\t')[0] :
            print(data_one_line)
            output_file.write(data_one_line)

output_file.close()

