#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Step : BLAST hits were parsed to retrieve associated taxonomic information 
# 		using the NCBI's taxonomy database.

# Downloaded resource:

# wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz

# tar -zxvf taxdump.tar.gz

# https://www.biostars.org/p/222183/
 
import re
import sys
import os
from Bio import SeqIO
from Bio import Entrez
from subprocess import Popen, PIPE


PATH="/Users/leyu/Documents/coding/evolution_code/HGT_analysis/HGT_prediction_tool/"
# ncbi gi dump files location
# PATH="./"

LINNAEUS_FILTER = ["species","genus","family","order","class","subphylum","phylum","kingdom","superkingdom"]

def parse_NCBI():
    with open("YNR058W.txt", "r") as filename :
        data = filename.readlines()
        for line in data :
            if line.strip("\n").endswith("found") :
                index = data.index(line)

        blast_results = data[index+1:-1]

    accession_number = list()

    for blast in blast_results :
        accession = blast.strip("\n").split("\t")[1]
        accession_number.append(accession)

    # print(accession_number)
    return accession_number

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

    return taxid, organism
    # return seq

def getSeq(accession):
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

    seq = record.seq

    print(seq)

    return seq

def buildNames():
    inFile = open(PATH+"names.dmp")

    result = dict()

    for line in inFile:
        line = line.replace("\t","")
        line = line.replace("|\n","")
        splits = line.split("|")
        if splits[-1] == 'scientific name':
            key = int(line.split("|")[0])
            name = line.split("|")[1]
            result[key] = name

    return result

# print >> sys.stderr, 'taxa_library_cluster initializing :: Building Names database'
# g_names = buildNames()

def buildNodes():
    inFile = open(PATH+"nodes.dmp")

    result = dict()
    levels = dict()

    for line in inFile:
        #print line
        line = line.replace("\t","")
        line = line.replace("|\n","")
        splits = line.split("|")
        #print splits
        taxaID = int(splits[0])
        parentID = int(splits[1])
        level = splits[2]
        result[taxaID] = (parentID, level)
        levels[level]=1

    return (result,levels)

# print >> sys.stderr, 'taxa_library_cluster initializing :: Building Nodes database'
# (g_nodes, g_levels) = buildNodes()

def buildLineage(x , names, nodes, filter = LINNAEUS_FILTER):
    k = int(x)
    result={}

    while k != 1 and k != 131567:
        if k in nodes:
            (next, level) = nodes[k]
            if filter == None or level in filter:
                result[level] = (k,names[k])
            k = next
        else:
            # https://docs.python.org/3/library/exceptions.html#exception-hierarchy
            raise AssertionError("Looking up taxa %d :: ancestor %d is not in taxonomy" % (x,k))
            break

    return result

def giListLookup(giList):
    #takes a list of gi and returns dictionary mapping gi to taxaID
    taxonomy = {}
    for line in open(PATH+"gi_taxid_nucl.dmp"):
        (gi, taxid) = line.split()
        if gi in giList:
            taxonomy[gi] = int(taxid)
            break
    return taxonomy

def giLookup(gid):
    result = -1
    '''
    #commands = ["grep", "-Pm", "1", '"^'+str(gid)+'\\'+'t"', PATH+"gi_taxid_nucl.dmp", "|", "cut", "-f2"]
    commands = ["grep", "-Pm", "1", '"^'+str(gid)+'"', PATH+"gi_taxid_nucl.dmp", "|", "cut", "-f2"]
    print >> sys.stderr, commands
    #temp = ""
    #for item in commands:
    #    temp += item+" "
    #print >> sys.stderr, temp
    print >> sys.stderr, " ".join(commands)
    proc = Popen(commands, stdout=PIPE, bufsize=1)
    #proc = Popen(temp, stdout=PIPE, bufsize=1)
    for line in iter(proc.stdout.readline, b''):
        result = int(line)
    proc.communicate()
    '''
    commands = ["grep", "-Pm", "1", '"^'+str(gid)+'"', PATH+"gi_taxid_nucl.dmp", "|", "cut", "-f2", ">", "temp"]
    print(" ".join(commands))
    os.system(" ".join(commands))
    for line in open("temp", "r"):
        result = int(line)
    return result

def getSpeciesID(taxaID):
    result = 0
    currID = taxaID
    if not taxaID in g_nodes:
        result = -1
    else:
        while currID != 1 and currID != 131567:
            if g_nodes[currID][1] == "species":
                result = currID
                break
            currID = g_nodes[currID][0]
    return result

def getGID(text):
    splits = text[1:].split("|")
    for k in range(len(splits)-1):
        if re.search("gi",splits[k]):
            return splits[k+1]
    return "-1"

if __name__== "__main__":
    accession_number = parse_NCBI()
    id_seq = dict()
    for accession in accession_number[:200] :
    # accession = "XP_003959759.1"  
        print(accession)
        seq = str(getSeq(accession))
        id_seq[accession] = seq
    print(len(id_seq))

    with open("YNR058W.fasta", "w") as outfile :
        for accession,seq in id_seq.items() :
            outfile.write(">"+accession+"\n")
            outfile.write(seq+"\n")

# WP_125374519.1
# WP_004632486.1
# WP_154607797.1
# WP_027973296.1
# WP_149556087.1
# 500
# [Finished in 299.4s]


