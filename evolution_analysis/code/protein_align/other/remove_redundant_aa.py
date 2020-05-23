# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# Note
# This script is used to update the original alignment to
# remove the redundant protein sequences from the same yeast species
# This script will be changed into a simple function


from Bio import SeqIO
import os
os.getcwd()

# others small task
# compare the result after the tree pruner
# here with OG1000 as an example
source = '/Users/luho/Desktop/example/data/'

original = source + 'OG5327_aa_aligned' + '.fasta'
OG_original = list(SeqIO.parse(original, "fasta"))

original_code = source + 'OG5327_code' + '.fasta'
OG_original_code = list(SeqIO.parse(original_code, "fasta"))

pruned = source + 'OG5327_aa_aligned_trim2.fasta_pruned.fa'
OG_prune = list(SeqIO.parse(pruned, "fasta"))

# check the length
len(OG_original)
len(OG_prune)

# check the species
aa_original = []
for x in OG_original:
    print(x.id)
    aa_original.append(x.id)
species_aa = list(set([x.split('@')[0] for x in aa_original]))

code_original = []
for x in OG_original_code:
    print(x.id)
    code_original.append(x.id)
species_code = list(set([x.split('@')[0] for x in code_original]))

gene_pruner = []
for x in OG_prune:
    print(x.id)
    gene_pruner.append(x.id)
species_pruner = list(set([x.split('@')[0] for x in gene_pruner]))


# here in the protein fasta file, it contains some out-group strains while in the gene fasta file, no out-group strains
len(species_aa)
len(species_code)
len(species_pruner)
id_kept = list(set(code_original) & set(gene_pruner))
len(id_kept)


# which gene seq is removed in the pruner phase
species_removed = list(set(species_aa)-set(species_pruner))

# next we need refine the original fasta file based on the pruned fasta file
OG_original_v2 = []
for x in OG_original:
    print(x.id)
    if x.id in id_kept:
        OG_original_v2.append(x)


OG_original_code_v2 = []
for x in OG_original_code:
    print(x.id)
    if x.id in id_kept:
        OG_original_code_v2.append(x)


# save the updated fasta file
outfile = source + 'OG5327_aa_aligned' + '_updated' + '.fasta'
SeqIO.write(OG_original_v2, outfile, "fasta")

outfile2 = source + 'OG5327_code' + '_updated' + '.fasta'
SeqIO.write(OG_original_code_v2, outfile2, "fasta")