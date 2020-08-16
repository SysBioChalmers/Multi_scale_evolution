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


if __name__== "__main__":
    indexSeqId = getIndex()
    orthologIndex = getOrthologIndex()
    ortholog_panID = dict()

    with open('./genelist_HGT_substrate.tsv', 'r') as file :
        lines = file.readlines()[1:]

    orthologs = [line.strip().split('\t')[0] for line in lines]
    # print(len(orthologs))  #444
    for line in lines :
        ortholog_panID[line.strip().split('\t')[0]] = line.strip().split('\t')[1]

    filenames = list()
    i = 0
    for filename in os.listdir("../2_HGTs/329yeasts_outputs/329yeast_alien_files") :
        i += 1
        # print("This is %d------------------" %(i))
        # print(filename)
        # print(filename[:-10])
        filenames.append(filename[:-10])

    outfile = open("./substrate_usage_new_HGT.tsv", "wt")
    tsv_writer = csv.writer(outfile, delimiter="\t")
    tsv_writer.writerow(["ortholog", "pan id", "gene id", "sequence id of ingroup best hit", "taxonomy id of ingroup best hit", 
        "evalue of ingroup best hit", "sequence id of outgroup best hit", "taxonomy id of outgroup best hit", 
        "evalue of outgroup best hit", "alien index", "bitscore percentage", "HGT or not"])

    e_minus = 1e-200
    for ortholog in orthologs :
        print(ortholog)
        index_all = orthologIndex[ortholog]
        for index in index_all :
            seqId = indexSeqId[index]
            print(seqId)
            if seqId.split('@')[0] in filenames :
                with open('../2_HGTs/329yeasts_outputs/329yeast_alien_files/%s_alien.txt' % seqId.split('@')[0], 'r') as file :
                    lines = file.readlines()[1:]
                    # print(lines[3].strip().split('\t'))
                    for line in lines :
                        info = line.strip().split('\t')
                        bitscore_of_top_hit = float(info[7])
                        bitscore_of_top_hit_outgroup = float(info[15])
                        bitscore_percentage = bitscore_of_top_hit_outgroup/bitscore_of_top_hit
                        if seqId == info[0] :
                            best_ingroup_evalue = float(info[10].replace(',', '.'))
                            best_outgroup_evalue = float(info[14].replace(',', '.'))
                            alien_index = math.log(best_ingroup_evalue+e_minus, math.e)-math.log(best_outgroup_evalue+e_minus, math.e)
                            if alien_index>45 and bitscore_percentage>0.6:
                                hgt = 'Yes'
                            else :
                                hgt = 'No'

                            tsv_writer.writerow([ortholog,ortholog_panID[ortholog],
                                info[0],info[8],info[9],info[10],info[12],info[13],info[14],
                                alien_index,bitscore_percentage,hgt])
            else :
                print(seqId)

    outfile.close()


#     # code1
#         i=0
#         k=0
#         ncbi = NCBITaxa()
#         outgroup = list()
#         ingroup = list()
#         outgroup_dict = dict()
#         ingroup_dict = dict()
#         e_minus = 1e-200

#         for accession in accession_number[:200] :
#             i+=1
#             # taxid, organism = getTaxid(accession)
#             try :
#                 taxid,organism = getTaxid(accession)
#             except :
#                 k+=1
#                 print('------------------------------',k)
#                 continue
#             # taxonomy = os.system('ete3 ncbiquery --search %d --info' % int(taxid))
#             lineage = ncbi.get_lineage(taxid)
#             lineage2ranks = ncbi.get_rank(lineage)
#             ranks2lineage = dict((rank, taxid) for (taxid, rank) in lineage2ranks.items())


#             print(i)
#             print(ranks2lineage)

#             taxonomy_alignment = ranks2lineage
#             LINNAEUS_FILTER = ["subphylum","kingdom","superkingdom"]

#             # {'no rank': 2608891, 'superkingdom': 2, 'phylum': 1239, 'genus': 1350, 'family': 81852, 'class': 91061, 
#             # 'order': 186826, 'species': 1857215}
#             # Traceback (most recent call last):
#             #   File "workflow_batch_ete3.py", line 226, in <module>
#             #     if taxonomy_alignment['kingdom'] != 4751 :  # 'Fungi': 4751   'Saccharomycotina': 147537
#             # KeyError: 'kingdom'
#             try :

#                 if taxonomy_alignment['kingdom'] != 4751 :  # 'Fungi': 4751   'Saccharomycotina': 147537
#                     outgroup.append(accession)              # 'Eukaryota': 2759

#                 if taxonomy_alignment['kingdom'] == 4751 and taxonomy_alignment['subphylum'] != 147537 :
#                     ingroup.append(accession)

#             except :

#                 outgroup.append(accession)


#         for accession_id in outgroup :
#             outgroup_dict[accession_id] = evalue[accession_id]

#         for accession_id in ingroup :
#             ingroup_dict[accession_id] = evalue[accession_id]

#         if outgroup_dict :
#             min_outgroup_key = min(outgroup_dict,key=outgroup_dict.get)
#             min_outgroup_evalue = outgroup_dict[min_outgroup_key]
#         else :
#             min_outgroup_evalue = 1

#         if ingroup_dict :
#             min_ingroup_key = min(ingroup_dict,key=ingroup_dict.get)
#             min_ingroup_evalue = ingroup_dict[min_ingroup_key]
#         else :
#             min_ingroup_evalue = 1

#         alienindex = math.log(min_ingroup_evalue+e_minus, math.e)-math.log(min_outgroup_evalue+e_minus, math.e)

#         print(outgroup_dict)
#         print(ingroup_dict)
#         print(min_outgroup_evalue)
#         print(min_ingroup_evalue)
#         print(alienindex)

#         if alienindex > 45 :
#             print('This is a HGT event')
#             print('Accession_id: %s' % min_outgroup_key)
#             taxid, organism = getTaxid(min_outgroup_key)
#             print('This HGT is from: %s' %organism)
#         else:
#             print('This is not a HGT')



# #     # accession = "XP_003959759.1"
# #     # taxid, organism = getTaxid(accession)

# #     # taxonomy = os.system('ete3 ncbiquery --search 1071382 --info')
# #     # print(taxonomy)

