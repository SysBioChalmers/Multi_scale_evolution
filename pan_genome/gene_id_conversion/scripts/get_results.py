#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2019-02-19


import os
import json
import csv
import numpy as np
import pandas as pd
from Bio import SeqIO


# https://widdowquinn.github.io/2018-03-06-ibioic/02-sequence_databases/05-blast_for_rbh.html#reciprocal
def blast_results(strain) :
    fwd_out = os.path.join("../blast/", "%s_fwd.tab" % strain)
    rev_out = os.path.join("../blast/", "%s_rev.tab" % strain)
    # fwd_out = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_fwd.tab")
    # rev_out = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_rev.tab")

    fwd_results = pd.read_csv(fwd_out, sep="\t", header=None)
    rev_results = pd.read_csv(rev_out, sep="\t", header=None)

    # Add headers to forward and reverse results dataframes
    headers = ["query", "subject", "identity", "coverage",
               "qlength", "slength", "alength",
               "bitscore", "E-value"]

    fwd_results.columns = headers
    rev_results.columns = headers

    # Create a new column in both dataframes: normalised bitscore
    fwd_results['norm_bitscore'] = fwd_results.bitscore/fwd_results.qlength
    rev_results['norm_bitscore'] = rev_results.bitscore/rev_results.qlength

    # Create query and subject coverage columns in both dataframes
    fwd_results['qcov'] = fwd_results.alength/fwd_results.qlength
    rev_results['qcov'] = rev_results.alength/rev_results.qlength
    fwd_results['scov'] = fwd_results.alength/fwd_results.slength
    rev_results['scov'] = rev_results.alength/rev_results.slength

    # Clip maximum coverage values at 1.0
    # fwd_results['qcov'] = fwd_results['qcov'].clip_upper(1)
    # rev_results['qcov'] = rev_results['qcov'].clip_upper(1)
    # fwd_results['scov'] = fwd_results['scov'].clip_upper(1)
    # rev_results['scov'] = rev_results['scov'].clip_upper(1)
    fwd_results['qcov'] = fwd_results['qcov'].clip(upper=1)
    rev_results['qcov'] = rev_results['qcov'].clip(upper=1)
    fwd_results['scov'] = fwd_results['scov'].clip(upper=1)
    rev_results['scov'] = rev_results['scov'].clip(upper=1)

    return fwd_results, rev_results

def get_rbbh(fwd_results, rev_results, strain) : # reciprocal blast best hits
    # Merge forward and reverse results
    rbbh = pd.merge(fwd_results, rev_results[['query', 'subject']],
                    left_on='subject', right_on='query',
                    how='outer')

    # Discard rows that are not RBH
    rbbh = rbbh.loc[rbbh.query_x == rbbh.subject_y]

    # Group duplicate RBH rows, taking the maximum value in each column
    rbbh = rbbh.groupby(['query_x', 'subject_x']).max()

    return rbbh

def id_mapping(rbbh, strain) :
    fasta_query = os.path.join("../fasta/", "%s_query.fasta" % strain)
    fasta_ref = os.path.join("../fasta/", "%s_ref.fasta" % strain)

    query = list()
    ref = list()

    with open(fasta_query, "r") as fasta1 :
        for record in SeqIO.parse(fasta1, "fasta") :
            query.append(record.id)
            # print(record.id)
            # print(type(record.id)) # Type: <class 'str'>

    with open(fasta_ref, "r") as fasta2 :
        for record in SeqIO.parse(fasta2, "fasta") :
            ref.append(record.id)

    print("This stain is: %s" % strain.replace("_", " "))

    print("The number of genes used in the model is: %d" %len(query))
    print("The number of genes in Uniprot database is: %d" %len(ref))

    rbbh2 = rbbh.loc[rbbh["identity"]>80.0]

    # for col in rbbh2.columns :
    #     print(col) # identity
    gene_protein = rbbh2.set_index('subject_y')['query_y'].to_dict()
    gene_identity = rbbh2.set_index('subject_y')['identity'].to_dict()

    print("Reciprocal blast best hits with Pidentity more than 80%%: %s" % len(gene_protein))

    print("------------------------------------------")
    print("\n")

    return gene_protein, gene_identity


if __name__ == "__main__" :
    # strain = "Kluyveromyces_dobzhanskii"
    filenames = os.listdir('../fasta')
    for filename in filenames :
        if filename.endswith('ref.fasta') :
            strain = filename[:-10]
            # print(strain)
            fwd_results, rev_results = blast_results(strain)
            rbbh = get_rbbh(fwd_results, rev_results, strain)
            gene_protein,gene_identity = id_mapping(rbbh,strain)

            # print(gene_protein)
            # mapped_genes = list(gene_protein.keys())
            # mapped_genes2 = list(gene_identity.keys())
            # print(len(list(set(mapped_genes))))
            # print(len(list(set(mapped_genes2))))
            # gene = mapped_genes[1]
            # print(gene)
            # print(gene_protein[gene])
            # print(gene_identity[gene])

            with open("../output/%s.csv" % strain.replace("_"," "), "wt") as outfile :
                tsv_writer = csv.writer(outfile, delimiter="\t")
                tsv_writer.writerow(["query id", "uniprot id", "identity"])

                for gene in list(gene_protein.keys()) :
                    tsv_writer.writerow([gene, gene_protein[gene], gene_identity[gene]])




