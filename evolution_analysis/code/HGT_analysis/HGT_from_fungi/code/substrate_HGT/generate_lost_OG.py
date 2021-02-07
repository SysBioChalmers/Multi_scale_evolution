#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-10-19

# This python script is to generate substraten lost OG


import csv


with open("gain_OG.tsv", 'r') as infile1 :
    lines1 = infile1.readlines()

gainOGs = [line.strip().split('\t')[1] for line in lines1]
print(len(gainOGs)) # 202
# print(gainOGs[:3])

with open("substrate_OG.txt", 'r') as infile2 :
    lines2 = infile2.readlines()[1:]

allOGs = list()
OGid_Panid = dict()
for line in lines2 :
    allOGs.append(line.strip().split('\t')[0])
    OGid_Panid[line.strip().split('\t')[0]] = line.strip().split('\t')[1]

print(len(allOGs)) # 623
# print(allOGs[:3])

lostOGs = set(allOGs) - set(gainOGs)

print(len(lostOGs))  # 421
# print(list(lostOGs)[:3])

outfile = open("lost_OG.tsv", 'w')
tsv_writer = csv.writer(outfile, delimiter='\t')
for OG in lostOGs :
    tsv_writer.writerow([OGid_Panid[OG],OG])
outfile.close()



