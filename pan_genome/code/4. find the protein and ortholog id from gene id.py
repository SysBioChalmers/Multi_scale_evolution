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

missed_gene_kegg = pd.read_excel('../representative_fasta/gap_filling_from_draft_model.xlsx', sheet_name='KEGG_DRAFT_MODEL')
missed_gene_biocyc = pd.read_excel('../representative_fasta/gap_filling_from_draft_model.xlsx', sheet_name ='METACYC_DRAFT_MODEL')

missed_gene_kegg1 = missed_gene_kegg[['rxnid_in model', 'ecNumber', 'MNXid', 'original GPRS', 'KEGGID', 'METACYCID', 'STRAIN', 'GENE', 'ECNUMBER']]
missed_gene_biocyc1 = missed_gene_biocyc[['rxnid_in model', 'ecNumber', 'MNXid', 'original GPRS', 'KEGGID', 'METACYCID', 'STRAIN', 'GENE', 'ECNUMBER']]


# here we will analyze the keeg draft model firstly
# as the first step we will find the ortholog group id for each id

# establish the relation between the gene id and the reaction id
missed_gene_kegg1['original GPRS'] = missed_gene_kegg1['original GPRS'].str.replace(' and ',' or ')
rxn_panID = splitAndCombine(gene=missed_gene_kegg1['original GPRS'], rxn=missed_gene_kegg1['rxnid_in model'], sep0=' or ', moveDuplicate=False)
rxn_panID['V2'] =rxn_panID ['V2'].str.replace('(','').str.replace(')', '').str.strip(' ')
rxn_panID['rxn_gene'] = rxn_panID['V1'] + '@' + rxn_panID['V2']
rxn_panID1 = rxn_panID.drop_duplicates(subset='rxn_gene')
rxn_panID1 = rxn_panID1[['V1','V2']]
rxn_panID1.columns = ['rxnID','panID']


missed_gene_kegg1['rxnid_in model'] = missed_gene_kegg1['rxnid_in model'] + '@' + missed_gene_kegg1['STRAIN']
rxn_geneID =  splitAndCombine(gene=missed_gene_kegg1['GENE'], rxn=missed_gene_kegg1['rxnid_in model'], sep0 =' or ', moveDuplicate=False)
rxn_geneID['V2'] =rxn_geneID['V2'].str.strip(' ')
rxn_geneID['rxn_gene'] = rxn_geneID['V1'] + rxn_geneID['V2']
rxn_geneID0 = rxn_geneID.drop_duplicates(subset='rxn_gene')
rxn_geneID0 = rxn_geneID0[['V1','V2']]
rxn_geneID1 = rxn_geneID0['V1'].str.split(pat='@', expand=True)
rxn_geneID1.columns = ['rxnID','STRAIN']
rxn_geneID1['GENE'] = rxn_geneID0['V2']


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

# then establish the relation between the gene id and ortholog group id
# we start from the panID in the pan model
# find the ortholog id based on the panID
for i, x in rxn_panID1.iterrows():
    print(i)
    if '@' not in x['panID']:
        x0 = "Saccharomyces_cerevisiae@" + x['panID']
        rxn_panID1['panID'][i] = x0

rxn_panID1['orthologID'] = singleMapping(description=id_mapping['ortho_id'], item1=id_mapping['representative'], item2=rxn_panID1['panID'], dataframe=True)
# next try to find the related ortholog id based on the gene id of each strain genome


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
ortholog_id_mapping1 = {x.split('@')[0]: x.split('@')[1] for x in ortholog_id_mapping0}



# here we connect the number order (connect with ortholog ID) with the protein ID
infile2 = '../orthomcl_output/orthomcl_SeqIDs_index.txt'
id_mapping1 = open(infile2, "r").readlines()
len(id_mapping1)
id_map_dict1 = dict()
for id in id_mapping1:
    print(id)
    id = id.strip('\n')
    id0 = id.split(': ')
    id_map_dict1[id0[0]] = id0[1]



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


def FindProIDfromGeneID(geneName, strainName, mRNA_protein_dict=mRNA_protein):
    """
    # This function is used to find the protein id based on the mRNA ID while the later is mainly used in the
    # draft model reconstruction by RAVEN2
    :param geneName:
    :param strainName:
    :return:

    # example
    gene0 = '-processed-gene-1.22-mRNA-1_1'
    strain0 = 'Candida_sorboxylosa'
    FindProIDfromGeneID(gene0, strain0)
    Please be careful about the strain proteome file name
    """

    # in the first step here, we must find the right gene id based on the part gene id from raven
    dir0 = '../0_332yeast_genomes/332_genome_annotations/proteome_old_species_id/'
    # strain1 = 'candida_sorboxylosa'
    strain_dir = dir0 + strainName + '.max.pep'
    protein_faa = open(strain_dir, 'r').readlines()
    protein_faa_id = [x for x in protein_faa if '>' in x]
    # next based on the above gene0, we find the related right mRNAid
    gene1 = [x.replace('>', '').strip('\n') for x in protein_faa_id if geneName in x]
    protein_id = []
    for x in gene1:
        print(mRNA_protein_dict[x])
        protein_id.append(mRNA_protein_dict[x])
    return protein_id



# in this case, firstly we need find: mRNAid =>> protein ID =>> universal number id =>> ortholog id
proteinID = []
OrthologID = []
for i, x in rxn_geneID1.iterrows():
    print(i, x['GENE'], x['STRAIN'])
    gene0 = x['GENE']
    strain0 = x['STRAIN']
    proID = FindProIDfromGeneID(gene0, strain0)
    proteinID.append(proID)
    # next we will find the ortholog id based on proID
    protein_index = {y:x for x, y in id_map_dict1.items()}
    number_order = [protein_index[id] for id in proID]
    # then find the ortholog id based on the number order
    orthologID0 = []
    for x in number_order:
        print(x)
        oid = ortholog_id_mapping1[x]
        orthologID0.append(oid)
    OrthologID.append(orthologID0)

# merge the proteinid and orthologid with the geneid
rxn_geneID1['proteinID'] = proteinID
rxn_geneID1['orthologID'] = OrthologID


# compare the panID of rxn in the panModel with the panID from the draft model
rxn_geneID1['proteinID_panmodel'] = multiMapping(rxn_panID1['panID'],rxn_panID1['rxnID'],rxn_geneID1['rxnID'],dataframe=True)
rxn_geneID1['orthologID_panmodel'] = multiMapping(rxn_panID1['orthologID'],rxn_panID1['rxnID'],rxn_geneID1['rxnID'],dataframe=True)

rxn_geneID1.to_excel('../result/id comparison for the same reaction between the pan-model and draft model.xlsx')