#!/usr/bin/python

# Note
# This script is used to compare the species number and protein ID number under the same OG id
# in the protein alignment before and after pruner.

import os
import argparse
import pandas as pd
from Bio import Phylo, SeqIO

pro_dir1 = "/home/luhongzhong/ortholog_343/protein_align_s2_R/"
pro_dir2 = "/home/luhongzhong/ortholog_343/protein_align_pruner/"
original_pro_input = pro_dir1 + "OG5327_aa_aligned_trim.fasta"
pro_pruned = pro_dir2 + "OG5327_aa_aligned_trim.fasta_pruned.fa"


def FindChangeAfterTreePruner (pro_before_pruner, pro_after_pruner):

    proteinID = []
    try:
        OG_trim = list(SeqIO.parse(pro_before_pruner, "fasta"))
        for record in OG_trim:
            print(record.id, len(list(record.seq)))
            proteinID.append(record.id)
    except:
        pass
        print("No refined OG could be found!")
    proteinID2 = []

    try:
        OG_trim2 = list(SeqIO.parse(pro_after_pruner, "fasta"))
        for record in OG_trim2:
            print(record.id, len(list(record.seq)))
            proteinID2.append(record.id)
    except:
        pass
        print("No refined OG could be found!")
    gene_num1 = len(proteinID)
    gene_num2 = len(proteinID2)
    speciesID1 = list(set([x.split("@")[0] for x in proteinID]))
    speciesID2 = list(set([x.split("@")[0] for x in proteinID2]))
    species_num1 = len(speciesID1)
    species_num2 = len(speciesID2)
    return gene_num1, gene_num2, species_num1, species_num2

all_og = os.listdir(pro_dir1)

gene_num1_all = []
gene_num2_all = []
species_num1_all = []
species_num2_all = []
for x in all_og:
    print(x)
    original_pro_input = pro_dir1 + x
    pro_pruned = pro_dir2 + x.replace(".fasta", ".fasta_pruned.fa")
    r1,r2,r3,r4= FindChangeAfterTreePruner(original_pro_input, pro_pruned)
    gene_num1_all.append(r1)
    gene_num2_all.append(r2)
    species_num1_all.append(r3)
    species_num2_all.append(r4)

ratio_species = [x/y for x , y in zip(species_num2_all, species_num1_all)]
result_all = pd.DataFrame({"OG":all_og,
                           "gene_num1":gene_num1_all,
                           "species_num1":species_num1_all,
                           "gene_num2":gene_num2_all,
                           "species_num2":species_num2_all,
                           "ration_species":ratio_species})
# so how many OGs with reduced species after tree pruner:
# total 2396 species with the reduced species
# why and how to avoid??
number_reduced_species = [x for x in ratio_species if x <1]
len(number_reduced_species)