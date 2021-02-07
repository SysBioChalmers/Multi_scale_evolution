#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-04-02


import os
import xlrd
import json
import pandas as pd


def getIndex() :
    # get the ortholog accoding to protein sequence id, that means Alloascoidea_hylecoeti@Seq_1 as the key, 0_0 as the value
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/orthomcl_SeqIDs_index.txt", "r") as indexFile :
        indexs = indexFile.readlines()

    indexSeqId = dict()
    for index in indexs :
        index_Seq = index.strip().split(": ")
        indexSeqId[index_Seq[1]] = index_Seq[0]

    return indexSeqId 

def getOrthologIndex() :
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
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

def getOrthologSpecies() :
    file = os.path.join("/Users/leyu/Documents/coding/MLEssential/complementaryData/evolutionary_data", "ortholog_occurence_num_all.tsv")

    with open(file, "r") as f :
        data = f.readlines()

    orthologSpecies = dict()

    for species in data :
        # print(species)
        # ['0', 'OG1000', '', '343', '2281', '6.65014577259475', 'with_sce', '16']
        ortholog_species = species.strip().split("\t")

        orthologSpecies[ortholog_species[1]] = ortholog_species[3]
    # {'OG1000': '343', 'OG1001': '343', 'OG1002': '343'}
    # print(orthologSpecies)

    return orthologSpecies


def main() :
    worksheet = xlrd.open_workbook(u"./878HGTs_table.xlsx")
    sheet_names = worksheet.sheet_names()
    # print(sheet_names)
    sheet = worksheet.sheet_by_name(sheet_names[0])
    rows = sheet.nrows
    # print(rows)
    genes = list()
    for i in range(1,rows) :
        cell = sheet.cell_value(i,1)
        genes.append(cell)
    # print(len(genes))

    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    orthologSpecies = getOrthologSpecies()

    geneAll = list()
    for gene in genes :
        geneOne = dict()

        if gene.endswith('a') or gene.endswith('b') :
            gene = gene[:-1]

        geneOne["id"] = gene
        geneOne["index"] = indexSeqId[gene] # geneOne["id"] is the protein id, like Alloascoidea_hylecoeti@Seq_1 indexSeqId["Alloascoidea_hylecoeti@Seq_1"] = 0_0
        geneOne["ortholog"] = orthologIndex[geneOne["index"]] # geneOne["index"] is the index, like 302_3224
        geneOne["species"] = orthologSpecies[geneOne["ortholog"]]
        geneAll.append(geneOne)

    # print(len(geneAll))
    # print(geneAll[:10])

    with open("./878HGTs.json", "w") as outfile :
        json.dump(geneAll, outfile, indent=4)


if __name__ == "__main__" :
    main()

