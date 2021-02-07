#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-10-19

# This python script is to generate the fasta file for substrate lost usage analysis in evolution paper


import json
from Bio import SeqIO


def getIndex() :
    with open("../../Data/orthomcl_output/orthomcl_SeqIDs_index.txt", "r") as indexFile :
        indexs = indexFile.readlines()

    indexSeqId = dict()
    for index in indexs :
        index_Seq = index.strip().split(": ")
        indexSeqId[index_Seq[0]] = index_Seq[1]   #0_0 (index) as the key, Alloascoidea_hylecoeti@Seq_1 as the value.

    return indexSeqId

def getOrthologIndex() :
    with open("../../Data/orthomcl_output/orthomcl_clusters.txt", "r") as orthologFile :
        orthologs = orthologFile.readlines()

    orthologIndex = dict()
    for ortholog in orthologs :
        ortholog_Index = ortholog.strip().split(" ")
        ortholog = ortholog_Index[0][:-1]
        
        orthologIndex[ortholog] = ortholog_Index[1:]
        # orthologIndex = {'OG1001': {'328_2397', '189_1696', '279_256',.....}}

    return orthologIndex

def get_substrate_lost() :
    with open("lost_OG.tsv", 'r') as infile :
        lines = infile.readlines()
    lostOGs = [line.strip().split('\t')[1] for line in lines]
    print(len(lostOGs))
    # print(lostOGs[:3])
    return lostOGs

def get_proteinSeq() :
    # get the protein sequence accoding to protein sequence id
    with open("/Users/leyu/Documents/Le/Data/orthomcl_output/343taxa_proteins.fasta", "rU") as handleGene :
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

# # 12278 sequences in one file is too slow ro run the blastp
# def main() :
#     lostOGs = get_substrate_lost()
#     indexSeqId = getIndex()
#     orthologIndex = getOrthologIndex()
#     proteinSeq = get_proteinSeq()

#     i = 0
#     organisms = ['Schizosaccharomyces_pombe', 'Saitoella_complicata', 'Botrytis_cinerea', 'Sclerotinia_sclerotiorum', 'Stagonospora_nodorum', \
#                     'Arthrobotrys_oligospora', 'Xylona_heveae', 'Aspergillus_nidulans', 'Coccidioides_immitis', 'Neurospora_crassa', 'Fusarium_graminearum']
#     # print(organisms)
#     with open('lost_OG.fasta', 'w') as outfile :
#         for ortholog in lostOGs :
#             index_all = orthologIndex[ortholog]
#             # print(len(index_all))
#             for index in index_all :
#                 seqId = indexSeqId[index]
#                 if seqId.split('@')[0] not in organisms :
#                     i += 1
#                     print('This is ', i, '--------------------------------------------')
#                     # This is  12278 --------------------------------------------
#                     print(seqId)
#                     print(proteinSeq[seqId])

#                     outfile.write(">%s\n" % (seqId))
#                     outfile.write("%s\n" % (proteinSeq[seqId]))

# So we need to split 12278 sequences into different files (5000 sequences in one file)
def main() :
    lostOGs = get_substrate_lost()
    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    proteinSeq = get_proteinSeq()

    i = 0
    j = 0
    organisms = ['Schizosaccharomyces_pombe', 'Saitoella_complicata', 'Botrytis_cinerea', 'Sclerotinia_sclerotiorum', 'Stagonospora_nodorum', \
                    'Arthrobotrys_oligospora', 'Xylona_heveae', 'Aspergillus_nidulans', 'Coccidioides_immitis', 'Neurospora_crassa', 'Fusarium_graminearum']

    for ortholog in lostOGs :
        index_all = orthologIndex[ortholog]
        # print(len(index_all))

        for index in index_all :
            if i % 5000 == 0 :
                print(i)
                j += 1
                outfile = open('./lost_OG/lost_OG_%d.fasta' % j, 'w')

            seqId = indexSeqId[index]
            # print(seqId)
            i += 1
            # print('This is ', i, '--------------------------------------------')
            # This is  12800 --------------------------------------------
            if seqId.split('@')[0] not in organisms :
                # i += 1
                print('This is ', i, '--------------------------------------------')
                # # This is  12278 --------------------------------------------

                print(seqId)
                # print(proteinSeq[seqId])

                outfile.write(">%s\n" % (seqId))
                outfile.write("%s\n" % (proteinSeq[seqId]))

            if i % 5000 == 0 :
                outfile.close()

    outfile.close()  # To close the last file


if __name__ == "__main__" :
    main()


