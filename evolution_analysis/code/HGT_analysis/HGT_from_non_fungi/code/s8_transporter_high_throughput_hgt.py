#!/usr/bin/env python
# -*- coding: utf-8 -*-


import re
from ete3 import NCBITaxa
import sys
import csv
import os
import math
from Bio import SeqIO
from Bio import Entrez
from subprocess import Popen, PIPE


# PATH="/Users/leyu/Documents/coding/evolution_code/HGT_analysis/HGT_prediction_tool/"
# ncbi gi dump files location
PATH="./"

# LINNAEUS_FILTER = ["species","genus","family","order","class","subphylum","phylum","kingdom","superkingdom"]

LINNAEUS_FILTER = ["subphylum","kingdom","superkingdom"]

def getTaxid(accession):
    # Retrieving data in the GenBank using only the GenBank code accession in biopython
    # https://www.ncbi.nlm.nih.gov/books/NBK25497/table/chapter2.T._entrez_unique_identifiers_ui/?report=objectonly
    # https://www.ncbi.nlm.nih.gov/books/NBK25499/#chapter4.EFetch
    # https://biopython.org/DIST/docs/api/Bio.Entrez-module.html
    Entrez.email = "leyu@example.org"

    # https://www.biostars.org/p/304175/
    # get tax id using only the GenBank code accession in biopython
    # handle = Entrez.efetch(db='protein', id="NP_012706.1", rettype='gb')
    handle = Entrez.efetch(db='protein', id=accession, rettype='gb')
    record = SeqIO.read(handle,'genbank')
    # print(record.features[0].qualifiers)
    if record.features[0].qualifiers['db_xref'][0].split(":")[0] == 'taxon':
        taxid = record.features[0].qualifiers['db_xref'][0].split(":")[1] # the type is a string
        organism = record.features[0].qualifiers['organism'][0]
    # seq = record.seq
    # print(taxid,organism)

    return taxid,organism
    # return seq

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


if __name__== "__main__":
    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    ortholog_panID = dict()

    with open("transselected.txt", 'r') as infile2 :
        lines2 = infile2.readlines()[1:-1]
    orthologs = list()
    Geneid_OGid = dict()
    for line in lines2 :
        orthologs.append(line.strip().split('\t')[-1])
        Geneid_OGid[line.strip().split('\t')[-3]] = line.strip().split('\t')[-1]
        ortholog_panID[line.strip().split('\t')[-1]] = line.strip().split('\t')[-2]
    orthologs = list(set(orthologs))

    print(len(orthologs))  #608
    # print(orthologs[:3])

    filenames = list()
    i = 0
    for filename in os.listdir("../../Data/2_HGTs/329yeasts_outputs/329yeast_alien_files") :
        i += 1
        # print("This is %d------------------" %(i))
        # print(filename)
        # print(filename[:-10])
        filenames.append(filename[:-10])

    outfile = open("./transporter_bacteria_HGT.tsv", "wt")
    tsv_writer = csv.writer(outfile, delimiter="\t")
    tsv_writer.writerow(["ortholog", "pan id", "gene id", "sequence id of ingroup best hit", "taxonomy id of ingroup best hit", 
        "evalue of ingroup best hit", "sequence id of outgroup best hit", "taxonomy id of outgroup best hit", 
        "evalue of outgroup best hit", "alien index", "outgroup percentage", "HGT or not"])

    e_minus = 1e-200
    for ortholog in orthologs :
        print(ortholog)
        index_all = orthologIndex[ortholog]
        for index in index_all :
            seqId = indexSeqId[index]
            if seqId.split('@')[0] in filenames :
                with open('../../Data/2_HGTs/329yeasts_outputs/329yeast_alien_files/%s_alien.txt' % seqId.split('@')[0], 'r') as file :
                    lines = file.readlines()[1:]
                    # print(lines[3].strip().split('\t'))
                    for line in lines :
                        info = line.strip().split('\t')

                        if seqId == info[0] :
                            best_ingroup_evalue = float(info[10].replace(',', '.'))
                            best_outgroup_evalue = float(info[14].replace(',', '.'))
                            if info[-1] != 'na' :
                                out_pct = float(info[-1])
                            else :
                                out_pct = 0
                            alien_index = math.log(best_ingroup_evalue+e_minus, math.e)-math.log(best_outgroup_evalue+e_minus, math.e)
                            if alien_index >= 45 and out_pct >= 90 :
                                i += 1
                                print(i)
                                hgt = 'Yes'
                                print(alien_index)
                                print(out_pct)
                                print(info[0])
                                print(hgt)
                                # index = indexSeqId[info[0]]
                                # ortholog = orthologIndex[index]
                                # print(ortholog)

                                tsv_writer.writerow([ortholog,ortholog_panID[ortholog],info[0],info[8],info[9],info[10],info[12],info[13],info[14],
                                    alien_index,out_pct,hgt]) # when try to run 10 yeast species, 1277 genes from HGT  # all yeast genes 46702/1892694 = 2.4675%
                            else :                            # 1840/1892694 = 0.0972%
                                hgt = 'No'

            else :
                print(seqId)

    outfile.close()

