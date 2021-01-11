#!/usr/bin/env python
# -*- coding: utf-8 -*-
 
# This file is to get sequence for transporters


import re
import sys
import os
from Bio import SeqIO


def get_refSeq(gene) :
    # get the protein sequence accoding to protein sequence id
    with open("/Users/leyu/Documents/Le/Data/orthomcl_output/343taxa_proteins.fasta", "r") as handleGene :
        proteinSeq = dict()
        for record in SeqIO.parse(handleGene, "fasta") :
    # ['__add__', '__bool__', '__class__', '__contains__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__',
    # '__getattribute__', '__getitem__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__le___', '__len__', '__lt__', 
    # '__module__', '__ne__', '__new__', '__nonzero__', '__radd__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', 
    # '__subclasshook__', '__weakref__', '_per_letter_annotations', '_seq', '_set_per_letter_annotations', '_set_seq', 'annotations', 'dbxrefs', 'description', 
    # 'features', 'format', 'id', 'letter_annotations', 'lower', 'name', 'reverse_complement', 'seq', 'translate', 'upper']
            # if record.id.startswith("Candida_albicans") :
            if record.id == gene :
                proteinSeq[record.id] = str(record.seq)

    return proteinSeq[gene]

def main1() : 
    with open("transporter_fungi_HGT.tsv", "r") as infile :
        lines = infile.readlines()[1:]

    genes = [line.strip().split('\t')[0] for line in lines]
    print(genes[:3])
    print(len(genes))  # 61

    outfile = open("./transporter_fungi.fasta", 'w')
    for gene in genes :
        print(gene)
        gene_seq = get_refSeq(gene)
        print(gene_seq)

        outfile.write(">"+gene+"\n")
        outfile.write(gene_seq+"\n")

    outfile.close()

def main2() : 
    with open("transporter_bacteria_HGT.tsv", "r") as infile :
        lines = infile.readlines()[1:]

    genes = [line.strip().split('\t')[2] for line in lines]
    print(genes[:3])
    print(len(genes))  # 33

    outfile = open("./transporter_bacteria.fasta", 'w')
    for gene in genes :
        print(gene)
        gene_seq = get_refSeq(gene)
        print(gene_seq)

        outfile.write(">"+gene+"\n")
        outfile.write(gene_seq+"\n")

    outfile.close()


if __name__== "__main__":
    # main1()
    main2()


