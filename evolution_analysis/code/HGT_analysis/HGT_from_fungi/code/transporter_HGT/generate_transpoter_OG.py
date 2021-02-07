#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-11-05

# This python script is to generate transpoter OG


import csv

with open("substrate_OG.txt", 'r') as infile1 :
    lines1 = infile1.readlines()[1:]
substrate_OGs = list()
for line in lines1 :
    substrate_OGs.append(line.strip().split('\t')[0])

with open("transselected.txt", 'r') as infile2 :
    lines2 = infile2.readlines()[1:-1]
allOGs = list()
Geneid_OGid = dict()
for line in lines2 :
    allOGs.append(line.strip().split('\t')[-1])
    Geneid_OGid[line.strip().split('\t')[-3]] = line.strip().split('\t')[-1]
allOGs = list(set(allOGs))
# print(len(allOGs)) # 608
# print(allOGs[-3:])
# print(len(Geneid_OGid))  # 10273

with open("substrate_all_HGT.tsv", 'r') as infile3 :
    lines3 = infile3.readlines()[1:]
HGT_OGs = list()
for line in lines3 :
    HGT_OGs.append(line.strip().split('\t')[1])

intersect_OGs = set(allOGs).intersection(set(substrate_OGs))
# print(len(intersect_OGs))  # 28
# print(intersect_OGs)

transpoter_OGs = set(allOGs) - set(intersect_OGs)

# print(len(transpoter_OGs))  # 580
# print(list(transpoter_OGs)[:3])

outfile = open("transpoter_OG.tsv", 'w')
tsv_writer = csv.writer(outfile, delimiter='\t')
for Geneid, OGid in Geneid_OGid.items() :
	if OGid not in intersect_OGs :
		tsv_writer.writerow([Geneid,OGid])
outfile.close()

# To confirm the generated file transpoter_OG.tsv is right in the number of gene id and unique OG id.
with open("transpoter_OG.tsv", 'r') as infile4 :
    lines4 = infile4.readlines()
allOGs = list()

for line in lines4 :
    allOGs.append(line.strip().split('\t')[-1])

allOGs = list(set(allOGs))
print(len(allOGs)) # 580
print(allOGs[-3:])


