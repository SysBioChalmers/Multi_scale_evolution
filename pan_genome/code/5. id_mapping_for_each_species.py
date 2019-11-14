# --------------------------------------------------------------------------------------
# This script is used to find the protein id and ortholog id for each gene id which is from
# the draft model by RAVEN toolbox
# --------------------------------------------------------------------------------------
import os  ##for directory
import sys
import pandas as pd

def changeComputer(computer_name):
    """
    The function is used to define the work directory in the different computer
    :param computer_name:
    :return:
    """
    if computer_name == "linux":
        # for lab top
        sys.path.append(r"/media/hongzhong/newdisk/yeast_species/code")
        os.chdir(r'/media/hongzhong/newdisk/yeast_species/code')
    else:
    # for mac
        sys.path.append(r"/Volumes/newdisk/yeast_species/code")
        os.chdir(r'/Volumes/newdisk/yeast_species/code')

# here if we use computer on the mac
changeComputer(computer_name="mac")
from mainFunction import *


# establish the relation between ortholog and the representative protein id (which is also called as panID)
# input the ortholog ID and the panID
id_mapping = pd.read_table('../representative_fasta/representatives.tsv')
# here we will use a dict to store the relation between the orthologID and the panID
pan_to_ortholog = dict()
ortholog_to_pan = dict()
for i, x in id_mapping.iterrows():
    print(x['representative'], x['ortho_id'])
    pan_to_ortholog[x['representative']] = x['ortho_id']
    ortholog_to_pan[x['ortho_id']] = x['representative']



# firstly input all the id mapping
infile = '../orthomcl_output/orthomcl_clusters.txt'
all_id = open(infile, "r").readlines()
len(all_id)
#test0 =[i for i,x in enumerate(all_id) if 'OG1071:' in x]
# for the followed work, we need establish the mapping between the ortholog id and order number mapping
ortholog_id_mapping = []
#from itertools import chain
for i, x in enumerate(all_id):
    print(all_id[i])
    s0 = all_id[i].strip('\n').split(':')
    ort= s0[0]
    other = s0[1].split(' ')
    small_dict =[x +'@' +ort for x in other if x!='']
    ortholog_id_mapping.append(small_dict)
# flattern the list
import functools
import operator
ortholog_id_mapping0 = functools.reduce(operator.iconcat, ortholog_id_mapping, [])
# change the dict into a list
ortholog_id_mapping1 = {x.split('@')[0]: x.split('@')[1] for x in ortholog_id_mapping0} # will change it name into: index_to_ortholog
index_to_ortholog = ortholog_id_mapping1


# here we connect the number order (connect with ortholog ID) with the protein ID
infile2 = '../orthomcl_output/orthomcl_SeqIDs_index.txt'
id_mapping1 = open(infile2, "r").readlines()
len(id_mapping1)
id_map_dict1 = dict() # will change the file name into "index_to_protein"
protein_to_index = dict()
for id in id_mapping1:
    print(id)
    id = id.strip('\n')
    id0 = id.split(': ')
    id_map_dict1[id0[0]] = id0[1]
    protein_to_index[id0[1]] = id0[0]



# here we define the id mapping between the gene and protein ids
infile4 = '../orthomcl_output/343taxa_protein_IDs_index.txt'
gene_protein_file = open(infile4, "r").readlines()
protein_mRNA = dict()
protein_gene = dict()
for x in gene_protein_file:
    print(x)
    x= x.strip('\n')
    x0 = x.split('\t')
    protein_gene[x0[1]] = x0[2]
    protein_mRNA[x0[1]] = x0[0]
gene_protein = {y:x for x,y in protein_gene.items()}
mRNA_protein = {y:x for x,y in protein_mRNA.items()}
mRNA_id_list = list(mRNA_protein.keys())

# connect the different id together

strain0 = "Alloascoidea_hylecoeti"
# all proteins belong to strain0
all_proteinID = list(protein_to_index.keys())
protein_id = [x for x in all_proteinID if x.split("@")[0]==strain0]
# find the index id based on the protein id
index_id = [protein_to_index[x] for x in protein_id]
# find the ortholog id based on the index id
ortholog_id = [index_to_ortholog[x] for x in index_id]
# find the representative gene id (or panID) based on the ortholog id
pan_id = [ortholog_to_pan[x] for x in ortholog_id]
# find the gene id based the protein id
mRAN_id = [protein_mRNA[x] for x in protein_id]
gene_id = [protein_gene[x] for x in protein_id]

id_mapping_table = pd.DataFrame({'protein_id': protein_id, "index_id": index_id, 'ortholog_id': ortholog_id,
                        'pan_id': pan_id, 'mRNA_id': mRAN_id, 'gene_id': gene_id, 'strain': [strain0]*len(protein_id)})
id_mapping_table.to_csv('../result/' + strain0 + '.tsv', sep = '\t')






# for the loop
strain_all = list(set([x.split("@")[0] for x in all_proteinID]))
for strain0 in strain_all:
    # all proteins belong to strain0
    all_proteinID = list(protein_to_index.keys())
    protein_id = [x for x in all_proteinID if x.split("@")[0] == strain0]
    # find the index id based on the protein id
    index_id = [protein_to_index[x] for x in protein_id]
    # find the ortholog id based on the index id
    ortholog_id = [index_to_ortholog[x] for x in index_id]
    # find the representative gene id (or panID) based on the ortholog id
    pan_id = [ortholog_to_pan[x] for x in ortholog_id]
    # find the gene id based the protein id
    mRAN_id = [protein_mRNA[x] for x in protein_id]
    gene_id = [protein_gene[x] for x in protein_id]

    id_mapping_table = pd.DataFrame({'protein_id': protein_id, "index_id": index_id, 'ortholog_id': ortholog_id,
                                     'pan_id': pan_id, 'mRNA_id': mRAN_id, 'gene_id': gene_id,
                                     'strain': [strain0] * len(protein_id)})
    id_mapping_table.to_csv('../result/' + strain0 + '.tsv', sep='\t')