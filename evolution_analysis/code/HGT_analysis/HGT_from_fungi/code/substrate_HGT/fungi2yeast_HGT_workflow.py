#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is to identify the HGT events from fungi to yeast or yeast to yeast.

import re
from ete3 import NCBITaxa
import sys
import os
import math
import csv
from Bio import SeqIO
from Bio import Entrez
from subprocess import Popen, PIPE


# LINNAEUS_FILTER = ["species","genus","family","order","class","subphylum","phylum","kingdom","superkingdom"]

def parse_NCBI(filename):
    with open(filename, "r") as infile :
        lines = infile.readlines()

    accession_number = list()
    accession_bitscore = dict()

    gene = lines[0].strip("\n").split("\t")[0]
    for line in lines :
        accession = line.strip("\n").split("\t")[1]
        bitscore = line.strip("\n").split("\t")[-1]
        accession_number.append(accession)
        accession_bitscore[accession] = float(bitscore)

    # print(len(accession_number))
    return gene, accession_number, accession_bitscore

# It can work, but HttpError: Too many requests when running parallel
def getTaxid2(accession):
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
        # organism = record.features[0].qualifiers['organism'][0]
    # seq = record.seq
    # print(taxid,organism)

    # return taxid,organism
    # return seq
    return taxid

accession_taxid = dict()
with open("acc2taxid_final.txt","r") as infile :
    lines = infile.readlines()
for line in lines :
    accession = line.strip('\n').split(',')[0]
    taxid = line.strip('\n').split(',')[1]
    accession_taxid[accession] = taxid

def getTaxid(accession) :
    taxid = accession_taxid[accession]
    return taxid

def main() :
    # filename = sys.argv[1]
    # gene, accession_number, accession_bitscore = parse_NCBI(filename)

    # gene, accession_number, accession_bitscore = parse_NCBI("AOX_test.txt")
    # accession_number, accession_bitscore = parse_NCBI("./gain_blast/gain_OG_3.txt")

    outfile = open("./all_fungi2yeast.tsv", "wt")
    tsv_writer = csv.writer(outfile, delimiter="\t")
    tsv_writer.writerow(["gene id", "max_bitscore_recipient_yeast", "max_bitscore_other_fungi", "bitscore_percentage", "recipient_species_number", "other_fungi_species_number", "HGT_index", "max_bitscore_accession", \
                    "max_bitscore_taxid", "other_fungi_kingdom", "other_fungi_phylum", "other_fungi_subphylum", "other_fungi_species"])

    i = 0
    filenames =[filename for filename in os.listdir("./blast_file") if filename.endswith('txt')]
    for filename in filenames :
        print(filename)
        i += 1
        print('This is', i, '----------------------------------------')
        gene, accession_number, accession_bitscore = parse_NCBI("./blast_file/%s" % filename)

        recipient_yeast = list()
        other_fungi_accession = list()
        recipient_yeast_accession_bitscore = dict()
        other_fungi_accession_bitscore = dict()
        recipient_species = list()
        other_fungi_species = list()

        # i = 0
        k = 0
        ncbi = NCBITaxa()
        for accession in accession_number[:200] :
            # i += 1
            # print('This is', i, '----------------------------------------')
            # print(accession)
            try :
                taxid = getTaxid(accession)
                # taxid = getTaxid2(accession)
                # print(taxid)
            except :
                k+=1
                # print('------------------------------',k)
                continue
            lineage = ncbi.get_lineage(taxid)
            lineage2ranks = ncbi.get_rank(lineage)
            ranks2lineage = dict((rank, taxid) for (taxid, rank) in lineage2ranks.items())
            # print(ranks2lineage)
            # # taxid2name = ncbi.get_taxid_translator([ranks2lineage['kingdom'], ranks2lineage['subphylum'], ranks2lineage['species']])
            # # {4751: 'Fungi', 147537: 'Saccharomycotina', 460519: 'Komagataella phaffii'}

            # # taxid2name = ncbi.get_taxid_translator(lineage)
            # # print(taxid2name)
            # # print(taxid2name[ranks2lineage['species']])

            taxonomy_alignment = ranks2lineage

            try :
                if taxonomy_alignment['subphylum'] == 147537 :
                    recipient_yeast.append(accession)
                    recipient_species.append(taxonomy_alignment['species'])

                # if taxonomy_alignment['kingdom'] == 4751 and taxonomy_alignment['subphylum'] != 147537 :
                if taxonomy_alignment['kingdom'] == 4751 and taxonomy_alignment['phylum'] != 4890 :  # 'Ascomycota' phylum
                    other_fungi_accession.append(accession)
                    other_fungi_species.append(taxonomy_alignment['species'])
            except :
                continue

        for accession_id in recipient_yeast :
            recipient_yeast_accession_bitscore[accession_id] = accession_bitscore[accession_id]

        for accession_id in other_fungi_accession :
            other_fungi_accession_bitscore[accession_id] = accession_bitscore[accession_id]

        if recipient_yeast_accession_bitscore :
            max_recipient_yeast_accession_key = max(recipient_yeast_accession_bitscore,key=recipient_yeast_accession_bitscore.get)
            max_recipient_yeast_bitscore = recipient_yeast_accession_bitscore[max_recipient_yeast_accession_key]

        if other_fungi_accession_bitscore :
            max_other_fungi_accession_key = max(other_fungi_accession_bitscore,key=other_fungi_accession_bitscore.get)
            max_other_fungi_bitscore = other_fungi_accession_bitscore[max_other_fungi_accession_key]
            if max_other_fungi_accession_key not in ['pir|S67133|', 'pir|S39953|', '5OQM_l', 'pir|JC7966|'] : 
                max_taxid = getTaxid(max_other_fungi_accession_key)
                max_lineage = ncbi.get_lineage(max_taxid)
                max_lineage2ranks = ncbi.get_rank(max_lineage)
                max_ranks2lineage = dict((rank, taxid) for (taxid, rank) in max_lineage2ranks.items())
                max_taxid2name = ncbi.get_taxid_translator([max_ranks2lineage['kingdom'], max_ranks2lineage['phylum'], max_ranks2lineage['subphylum'], max_ranks2lineage['species']])

                print(gene)
                print(max_recipient_yeast_bitscore)
                print(max_other_fungi_bitscore)
                print(max_taxid2name)

                if recipient_species :
                    recipient_species_number = len(set(recipient_species))
                if other_fungi_species :
                    other_fungi_species_number = len(set(other_fungi_species))

                bitscore_index = max_other_fungi_bitscore/max_recipient_yeast_bitscore
                HGT_index = other_fungi_species_number/(other_fungi_species_number+recipient_species_number)

                print(recipient_species_number)
                print(other_fungi_species_number)
                print(HGT_index)  # >60% or >70% or >80% or >90%
                # XP_002494271.1
                # 1398.3
                # 1020.4
                # {4751: 'Fungi', 4890: 'Ascomycota', 147538: 'Pezizomycotina', 337075: 'Pyronema omphalodes'}
                # 16
                # 142
                # 0.8987341772151899
                # This is a potential HGT event from fungi to yeast!!!

                # if max_other_fungi_bitscore>100 and bitscore_index>0.5 and HGT_index>0.7 :
                #     print("This is a potential HGT event from fungi to yeast!!!")
                #     outfile = open("./results/%s.tsv" % gene, "wt")
                #     tsv_writer = csv.writer(outfile, delimiter="\t")
                #     tsv_writer.writerow(["gene id", "max_bitscore_recipient_yeast", "max_bitscore_other_fungi", "bitscore_percentage", "HGT_index", "max_bitscore_accession", \
                #                     "max_bitscore_taxid", "other_fungi_kingdom", "other_fungi_phylum", "other_fungi_subphylum", "other_fungi_species"])
                #     tsv_writer.writerow([gene, max_recipient_yeast_bitscore, max_other_fungi_bitscore, bitscore_index, HGT_index, max_other_fungi_accession_key, \
                #                      max_taxid, max_taxid2name[max_ranks2lineage['kingdom']], max_taxid2name[max_ranks2lineage['phylum']], \
                #                      max_taxid2name[max_ranks2lineage['subphylum']], max_taxid2name[max_ranks2lineage['species']]])
                #     outfile.close()

                if max_other_fungi_bitscore>100 and bitscore_index>0.5 and HGT_index>=0.9 :
                    print("This is a potential HGT event from fungi to yeast!!!")

                    tsv_writer.writerow([gene, max_recipient_yeast_bitscore, max_other_fungi_bitscore, bitscore_index, recipient_species_number, other_fungi_species_number, HGT_index, max_other_fungi_accession_key, \
                                     max_taxid, max_taxid2name[max_ranks2lineage['kingdom']], max_taxid2name[max_ranks2lineage['phylum']], \
                                     max_taxid2name[max_ranks2lineage['subphylum']], max_taxid2name[max_ranks2lineage['species']]])
    outfile.close()


if __name__== "__main__":
    main()

