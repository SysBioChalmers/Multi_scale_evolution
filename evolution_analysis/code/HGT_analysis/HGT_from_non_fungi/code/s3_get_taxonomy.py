#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Step2 : BLAST hits were parsed to retrieve associated taxonomic information 
# 		using the NCBI's taxonomy database.

# Downloaded resource:

# wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz

# tar -zxvf taxdump.tar.gz

# https://www.biostars.org/p/222183/
 
 # This script is to obtain lineage from tax id
 
import re
import sys
import os
from subprocess import Popen, PIPE

PATH="/Users/leyu/Documents/coding/evolution_code/HGT_analysis/HGT_prediction_tool/"
# ncbi gi dump files location
# PATH="./"

LINNAEUS_FILTER = ["species","genus","family","order","class","phylum","kingdom","superkingdom"]

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
    query = 559292
    queryName = "Saccharomyces cerevisiae"

    names = buildNames()
    nodes, levels = buildNodes()

    taxonomy = buildLineage(query, names, nodes)

    result = str(query)+"\t"+queryName+"|"

    for level in LINNAEUS_FILTER:
        if level in taxonomy:
            result += "\t"+str(taxonomy[level][0])+"\t"+taxonomy[level][1]+"|"
        else:
            result += "\tnone\tnone"

    print(result)

# Results:

# 4932    Saccharomyces cerevisiae|   4932    Saccharomyces cerevisiae|   4930    Saccharomyces|  4893    Saccharomycetaceae|
# 4892    Saccharomycetales|  4891    Saccharomycetes|    4890    Ascomycota| 4751    Fungi|  2759    Eukaryota|
# [Finished in 11.1s]

    # result = giListLookup([6322])
    # print(result)
