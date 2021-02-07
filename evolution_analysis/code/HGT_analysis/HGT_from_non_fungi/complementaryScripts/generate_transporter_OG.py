#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-11-07

# This python script is to generate transpoter OG


import csv

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

outfile = open("transporter_OG.tsv", 'w')
tsv_writer = csv.writer(outfile, delimiter='\t')
for Geneid, OGid in Geneid_OGid.items() :
	tsv_writer.writerow([Geneid,OGid])
outfile.close()
