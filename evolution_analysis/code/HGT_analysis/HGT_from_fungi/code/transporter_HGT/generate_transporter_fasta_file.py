#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-10-19

# This python script is to generate the fasta file for transpoter HGT analysis in evolution paper


import json
from Bio import SeqIO


def get_proteinSeq() :
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
            proteinSeq[record.id] = str(record.seq)

    return proteinSeq

def main() :
    proteinSeq = get_proteinSeq()

    with open("transporter_OG.tsv", 'r') as infile :
        lines = infile.readlines()

    allSeqIds = list()
    for line in lines :
        allSeqIds.append(line.strip().split('\t')[0])
    print(len(allSeqIds)) # 6595
# print(allSeqIds[:3])

    i = 0
    organisms = ['Schizosaccharomyces_pombe', 'Saitoella_complicata', 'Botrytis_cinerea', 'Sclerotinia_sclerotiorum', 'Stagonospora_nodorum', \
                    'Arthrobotrys_oligospora', 'Xylona_heveae', 'Aspergillus_nidulans', 'Coccidioides_immitis', 'Neurospora_crassa', 'Fusarium_graminearum']
    # print(organisms)
    with open('transporter_OG.fasta', 'w') as outfile :
        for seqId in allSeqIds :
            if seqId.split('@')[0] not in organisms :
                i += 1
                print('This is ', i, '--------------------------------------------')
                # This is  6595 --------------------------------------------
                print(seqId)
                print(proteinSeq[seqId])

                outfile.write(">%s\n" % (seqId))
                outfile.write("%s\n" % (proteinSeq[seqId]))


if __name__ == "__main__" :
    main()


