#--------------------------------------------------------------------------------------
# This script is to summarize the phosphate sites
# this data is from https://www.biorxiv.org/content/10.1101/700070v1
# With these datasets, we can conduct the mutation enrichment analysis based on
# Protein 3D structures, domains and 3D site(around the important phosphate sites)
# Therefore, it is important to further refine the datasets
#--------------------------------------------------------------------------------------
import os    ##for directory
import pandas as pd
import sys
from functools import reduce
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/evolution/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')
from pdb_function_module import *

# parse the second structure
id_mapping = pd.read_excel('../data/uniprot_id_mapping.xlsx')
id_mapping = splitAndCombine(gene=id_mapping['geneID'], rxn=id_mapping['Entry'], sep0=';', moveDuplicate=False)
id_mapping.columns = ['Entry','geneID']
phosphate_site = pd.read_excel('../data/functional site/sce_phosphate_site.xlsx')
phosphate_site['uniqueID'] = ['g'+str(i) for i in list(phosphate_site.index)]

# split the cell with ';'
phosphate_site_all = splitAndCombine(gene=phosphate_site['Phosphosite'], rxn=phosphate_site['uniqueID'], sep0=';', moveDuplicate=False)
# separate one column into four columns
phosphate_site_all['V2'] = phosphate_site_all['V2'].str.replace('_YEAST','@YEAST')
phosphate_site_all = phosphate_site_all['V2'].str.split('_', expand=True)
phosphate_site_all.columns = ['geneID','site']
phosphate_site_all['geneID'] = phosphate_site_all['geneID'].str.replace('@YEAST', '_YEAST')
# get the entryID from UniProt database
phosphate_site_all['EntryID'] = singleMapping(description=phosphate_site['Uniprot_id'], item1=phosphate_site['Gene(s)'], item2=phosphate_site_all['geneID'], dataframe=True)
phosphate_site_all['EntryID2'] = singleMapping(description=id_mapping['Entry'], item1=id_mapping['geneID'], item2=phosphate_site_all['geneID'], dataframe=True)

s1 = phosphate_site_all['EntryID'].tolist()
s2 = phosphate_site_all['EntryID2'].tolist()
for i, x in enumerate(s1):
    print(i)
    if x is not None:
        pass
    else:
        s1[i] = s2[i]
phosphate_site_all['Entry'] = s1
phosphate_site_refine = phosphate_site_all[['Entry','site','geneID']]
