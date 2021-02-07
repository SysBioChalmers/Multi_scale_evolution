#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2019-04-16

# This python script is to generate the fasta file for each analyzed gene.

import os
import json
import csv
from Bio import SeqIO


def getSeq(proteinid) :
    # get the protein sequence accoding to protein sequence id
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/343taxa_proteins.fasta", "rU") as handleGene :
        # proteinSeq = dict()
        for record in SeqIO.parse(handleGene, "fasta") :
    # ['__add__', '__bool__', '__class__', '__contains__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__',
    # '__getattribute__', '__getitem__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__le___', '__len__', '__lt__', 
    # '__module__', '__ne__', '__new__', '__nonzero__', '__radd__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', 
    # '__subclasshook__', '__weakref__', '_per_letter_annotations', '_seq', '_set_per_letter_annotations', '_set_seq', 'annotations', 'dbxrefs', 'description', 
    # 'features', 'format', 'id', 'letter_annotations', 'lower', 'name', 'reverse_complement', 'seq', 'translate', 'upper']
            # if record.id.startswith("Candida_albicans") :
            if record.id.endswith(proteinid) :
                proteinSeq = str(record.seq)
        print("The protein sequence of %s is: %s" % (proteinid, proteinSeq))
        # for key in proteinSeq.keys() :
        #     print(key)
        #     print(proteinSeq[key])
    return proteinSeq

def getIndex() :
    # get the ortholog accoding to protein sequence id, that means Alloascoidea_hylecoeti@Seq_1 as the key, 0_0 as the value
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/orthomcl_SeqIDs_index.txt", "r") as indexFile :
        indexs = indexFile.readlines()

    indexSeqId = dict()
    for index in indexs :
        index_Seq = index.strip().split(": ")
        indexSeqId[index_Seq[0]] = index_Seq[1]

    return indexSeqId 

def getOrthologIndex() :
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
        orthologs = orthologFile.readlines()

    orthologIndex = dict()
    for ortholog in orthologs :
        ortholog_Index = ortholog.strip().split(" ")
        # orthologIndex = {'OG1001': {'328_2397', '189_1696', '279_256',.....}}
        ortholog = ortholog_Index[0][:-1]
        
        orthologIndex[ortholog] = ortholog_Index[1:]

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
    with open('genelist_HGT_substrate.tsv', 'r') as file :
        lines = file.readlines()[1:]

    orthologs = [line.strip().split('\t')[0] for line in lines]
    # print(len(orthologs))

    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    orthologSpecies = getOrthologSpecies()

    orthologLess = list()
    index_1 = list()
    for ortholog in orthologs :
        if int(orthologSpecies[ortholog]) == 1 :
            orthologLess.append(ortholog)
    # print(len(orthologLess)) # 319

    for ortholog in orthologLess :
        index = orthologIndex[ortholog]
        if len(index) == 1 :
            index_1.append(index[0])
    # print(len(index_1))  #286

    for index in index_1 :
        seqId = indexSeqId[index]
        print(seqId)
        proteinSeq = getSeq(seqId)

        with open("./fasta/%s.fasta" % seqId, "w") as f :
                f.write(">%s\n" % seqId)
                f.write("%s\n" % proteinSeq)

if __name__ == "__main__" :
    # getSeq('YAL054C')
    main()



