#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-07-28
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

    # yeast_species = [line.strip() for line in lines]
    # print(len(yeast_species))  #332
    yeast_species = ['Metschnikowia_matae']
    # outfile = open("./yeast_gene_family.txt", "wt")
    # tsv_writer = csv.writer(outfile, delimiter="\t")
    # firstLine = ['Desc', 'Family ID'] + [yeast.replace('_', '&') for yeast in yeast_species]
    # tsv_writer.writerow(firstLine)

    with open("../../Data/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
        lines = orthologFile.readlines()

    orthologs = [line.strip().split(" ")[0][:-1] for line in lines]
    print(len(orthologs))
    for ortholog in orthologs :
    # for ortholog in list(orthologIndex.keys())[:10]:
        # print(ortholog) # 233478  
        if ortholog == 'OG1001' :
            print(ortholog)
            yeast_counts = dict()
            geneIndex = orthologIndex[ortholog]
            # print(getIndex)
            SeqIds = [indexSeqId[index] for index in geneIndex]
            # print(SeqIds)

            # for SeqId in SeqIds :
            #     if SeqId.startswith('Metschnikowia_matae') :
            #         print(SeqId)


            for SeqId in SeqIds :
                if SeqId.split('@')[0] == 'Metschnikowia_matae' :
                    print(SeqId)

            # for yeast in yeast_species :
            #     yeast_counts[yeast] = len([SeqId for SeqId in SeqIds if SeqId.startswith(yeast)])

            # species_number = len([yeast for yeast, number in yeast_counts.items() if number != 0])

            # print(species_number)
            # if species_number >= 7 : # 13931
            #     yeast_family = [yeast_counts[yeast] for yeast in yeast_species]
            #     gene_family_size = ['(null)', ortholog] + yeast_family
                # print(gene_family_size)
    #         tsv_writer.writerow(gene_family_size)

    # outfile.close()


if __name__ == "__main__" :
    main()
