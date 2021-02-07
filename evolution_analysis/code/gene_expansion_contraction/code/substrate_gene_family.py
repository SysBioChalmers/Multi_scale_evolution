#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-08
# This script is to obtain gene family sizes for the taxa included in the phylogenetic tree for CAFE software

import os
import csv


def getIndex() :
    # get the ortholog accoding to protein sequence id, that means Alloascoidea_hylecoeti@Seq_1 as the key, 0_0 as the value
    with open("../../Data/orthomcl_output/orthomcl_SeqIDs_index.txt", "r") as indexFile :
        indexs = indexFile.readlines()

    indexSeqId = dict()
    for index in indexs :
        index_Seq = index.strip().split(": ")
        indexSeqId[index_Seq[0]] = index_Seq[1]

    return indexSeqId

def getOrthologIndex() :
    with open("../../Data/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
        orthologs = orthologFile.readlines()

    orthologIndex = dict()
    for ortholog in orthologs :
        ortholog_Index = ortholog.strip().split(" ")
        # orthologIndex = {'OG1001': {'328_2397', '189_1696', '279_256',.....}}
        ortholog = ortholog_Index[0][:-1]

        orthologIndex[ortholog] = ortholog_Index[1:]

    return orthologIndex

def main() :

    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()

    with open('./yeast_species.txt', 'r') as outfile :
        lines = outfile.readlines()[1:]

    yeast_species = [line.strip() for line in lines]
    # print(len(yeast_species))  #332

    outfile = open("./substrate_gene_family.txt", "wt")
    tsv_writer = csv.writer(outfile, delimiter="\t")
    firstLine = ['Desc', 'Family ID'] + [yeast.replace('_', '&') for yeast in yeast_species]
    tsv_writer.writerow(firstLine)

    with open('substrate_OG.txt', 'r') as substrateFile :
        lines = substrateFile.readlines()[1:]

    orthologs = [line.strip().split("\t")[0] for line in lines]

    print(len(orthologs)) # 623

    for ortholog in orthologs :
        print(ortholog)
        yeast_counts = dict()
        geneIndex = orthologIndex[ortholog]
        SeqIds = [indexSeqId[index] for index in geneIndex]

        for yeast in yeast_species :
            yeast_counts[yeast] = len([SeqId for SeqId in SeqIds if SeqId.split('@')[0]==yeast])

        species_number = len([yeast for yeast, number in yeast_counts.items() if number != 0])

        print(species_number)

        yeast_family = [yeast_counts[yeast] for yeast in yeast_species]
        gene_family_size = ['(null)', ortholog] + yeast_family
        # # print(gene_family_size)
        tsv_writer.writerow(gene_family_size)

    outfile.close()


if __name__ == "__main__" :
    main()
