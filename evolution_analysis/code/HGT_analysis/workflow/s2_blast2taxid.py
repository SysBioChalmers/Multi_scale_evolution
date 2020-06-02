#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Retrieving data in the GenBank using only the GenBank code accession in biopython
from Bio import SeqIO
from Bio import Entrez

# https://www.ncbi.nlm.nih.gov/books/NBK25497/table/chapter2.T._entrez_unique_identifiers_ui/?report=objectonly
# https://www.ncbi.nlm.nih.gov/books/NBK25499/#chapter4.EFetch
# https://biopython.org/DIST/docs/api/Bio.Entrez-module.html
Entrez.email = "leyu@example.org"

# Method 1:
# get sequence using only the GenBank code accession in biopython
# handle = Entrez.efetch(db="protein", id="NP_012706.1", rettype="gb", retmode="text")

# info = SeqIO.read(handle, "genbank")

# # print(handle.readline().strip())
# # print(handle.read().strip())
# # print(dir(info))['__add__', '__bool__', '__class__', '__contains__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__',
# #  '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__le___', '__len__', 
# #  '__lt__', '__module__', '__ne__', '__new__', '__nonzero__', '__radd__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', 
# #  '__str__', '__subclasshook__', '__weakref__', '_per_letter_annotations', '_seq', '_set_per_letter_annotations', '_set_seq', 'annotations', 'dbxrefs', 
# #  'description', 'features', 'format', 'id', 'letter_annotations', 'lower', 'name', 'reverse_complement', 'seq', 'translate', 'upper']
# print(info.translate)


# Method 2:
# https://www.researchgate.net/post/How_can_I_get_the_scientific_name_given_only_the_GenBank_accession_code_and_biopython
# handle = Entrez.efetch(db="protein", id="NP_012706.1", rettype="gb", retmode="xml") 
# record = Entrez.read(handle)
# handle.close()
# print(record[0]['GBSeq_other-seqids'][1][3:])
# Get gi id 6322633

# Method 3：
# https://www.researchgate.net/post/How_can_I_get_the_scientific_name_given_only_the_GenBank_accession_code_and_biopython
# You can handle other databases like this, too, as long as you get the XML. Here's an example of obtaining a species name 
# using a taxonomy id instead of a Genbank entry:
# taxid = "1234"
# target_handle = Entrez.efetch(db="Taxonomy", id=str(taxid), retmode="xml")
# target_records = Entrez.read(target_handle)
# name = target_records[0]["ScientificName"]

# Method 4：
# https://www.biostars.org/p/304175/
# get tax id using only the GenBank code accession in biopython
handle = Entrez.efetch(db='protein', id="NP_012706.1", rettype='gb')
record = SeqIO.read(handle,'genbank')
# print(record.features[0].qualifiers['db_xref'])
if record.features[0].qualifiers['db_xref'][0].split(":")[0] == 'taxon':
    print(record.features[0].qualifiers['db_xref'][0].split(":")[1])
