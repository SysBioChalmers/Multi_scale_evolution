#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is to output the HGT gene and OG

import os
import csv


def getIndex() :
    # get the ortholog accoding to protein sequence id, that means Alloascoidea_hylecoeti@Seq_1 as the key, 0_0 as the value
    with open("/Users/leyu/Documents/Le/Data/orthomcl_output/orthomcl_SeqIDs_index.txt", "r") as indexFile :
        indexs = indexFile.readlines()

    indexSeqId = dict()
    for index in indexs :
        index_Seq = index.strip().split(": ")
        indexSeqId[index_Seq[1]] = index_Seq[0]

    return indexSeqId

def getOrthologIndex() :
    with open("/Users/leyu/Documents/Le/Data/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
        orthologs = orthologFile.readlines()

    orthologIndex = dict()
    for ortholog in orthologs :
        ortholog_Index = ortholog.strip().split(" ")
        # orthologIndex = {'OG1001': {'328_2397', '189_1696', '279_256',.....}}
        ortholog = ortholog_Index[0][:-1]
        
        for index in ortholog_Index[1:] :
            orthologIndex[index] = ortholog
    # print(orthologIndex)  # {'302_3224': 'OG1000', '317_1502': 'OG1000', '318_1938': 'OG1001', '320_301': 'OG1001', '325_5347': 'OG1001'}

    return orthologIndex

def intersect_OG() :
    with open("./transselected.txt", 'r') as infile2 :
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

    with open("./substrate_all_HGT.tsv", 'r') as infile3 :
        lines3 = infile3.readlines()[1:]
    HGT_OGs = list()
    for line in lines3 :
        HGT_OGs.append(line.strip().split('\t')[1])

    intersect_OGs = set(allOGs).intersection(set(HGT_OGs))
    # print(len(intersect_OGs))  # 5
    return intersect_OGs

def main() :
    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    intersect_OGs = intersect_OG()
    print(intersect_OGs)

    with open("./all_fungi2yeast.tsv", 'r') as infile4 :
        lines4 = infile4.readlines()[1:]  # 46

    with open("./all_fungi2yeast_substrate.tsv", 'r') as infile5 :
        lines5 = infile5.readlines()[1:]  # 153

    # print(len(lines5))

    HGT_other_transporter = list()
    for line in lines5 :
        gene = line.strip().split('\t')[0]
        index = indexSeqId[gene] # gene the protein id, like Alloascoidea_hylecoeti@Seq_1 indexSeqId["Alloascoidea_hylecoeti@Seq_1"] = 0_0, that is index
        ortholog = orthologIndex[index]

        if ortholog in intersect_OGs :
            print(ortholog)
            HGT_other_transporter.append(gene)

    print(len(HGT_other_transporter))  # 32

    total_HGT_transporter = len(lines4) + len(HGT_other_transporter)

    print('The number of high-throughput prediction for transporter HGT is: ', total_HGT_transporter)  # 78


if __name__ == "__main__" :
    # intersect_OG()
    main()














