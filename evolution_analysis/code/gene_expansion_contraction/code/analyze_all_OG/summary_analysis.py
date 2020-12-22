#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-13


import os
import csv
import json

outfile = open("./summary_results.tsv", "wt")
tsv_writer = csv.writer(outfile, delimiter="\t")
tsv_writer.writerow(['species', 'expansion', 'contraction', 'rapidly_evolving'])


with open("./summary_run1_pub.txt", "r") as file :
    lines = file.readlines()[1:]

for line in lines :
    data = line.strip().split('\t')
    # print(data)
    species = data[0].replace('&', '_')
    expansion = data[1].split(' (')[0]
    contraction = data[4].split(' (')[0]
    rapidly_evolving = data[1].split(' (')[1][:-1]
    # print(expansion)
    # print(contraction)
    # print(rapidly_evolving)
    tsv_writer.writerow([species,expansion,contraction,rapidly_evolving])

outfile.close()