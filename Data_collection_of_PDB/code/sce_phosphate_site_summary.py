#--------------------------------------------------------------------------------------
# This script is to summarize the phosphate sites
# this data is from https://www.biorxiv.org/content/10.1101/700070v1
# With these datasets, we can conduct the mutation enrichment analysis based on
# Protein 3D structures, domains and 3D site(around the important phosphate sites)
# Therefore, it is important to further refine the datasets
#--------------------------------------------------------------------------------------
import os    #for directory
import pandas as pd
import sys
from functools import reduce
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code')
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
phosphate_site_refine.columns = ['Entry','coordinate','geneID']
phosphate_site_refine['feature_key'] = ['PhosphateSite']*phosphate_site_refine.shape[0]
phosphate_site_refine['description'] = ['Phosphorylation']*phosphate_site_refine.shape[0]
phosphate_site_summary1 = phosphate_site_refine[['Entry', 'feature_key','description','coordinate']]
# add the source for these sites, which will be further compared with phosphate sites data from UniProt database
phosphate_site_summary1['source'] = ['Lanz']*phosphate_site_summary1.shape[0]


# input the site summary from uniprot database
site_uniprot = pd.read_excel('../result/sce_site_summary.xlsx')
phosphate_site_uniprot= site_uniprot[site_uniprot['feature_key']=='Modified residue']
# further filter the phosphate site from uniprot database
phosphate_site_uniprot1 = phosphate_site_uniprot[phosphate_site_uniprot['description'].str.contains('Phospho')]
non_phosphate_site_uniprot2 = phosphate_site_uniprot[~phosphate_site_uniprot['description'].str.contains('Phospho')]

phosphate_site_uniprot1 = phosphate_site_uniprot1[['Entry', 'feature_key','description','coordinate']]
phosphate_site_uniprot1['source']  = ['uniprot']*phosphate_site_uniprot1.shape[0]
new = phosphate_site_uniprot1['coordinate'].str.split("-", n = 1, expand = True)
phosphate_site_uniprot1['coordinate'] = new[0]

# combine the above two datasets together
phosphate_site_combine = pd.concat([phosphate_site_summary1, phosphate_site_uniprot1], axis=0, join='outer')
# sort the data based on the first column
phosphate_site_combine = phosphate_site_combine.sort_values(by=['Entry'], ascending=False)
# it can be found there are some common sites from uniprot and lanz's dataset
phosphate_site_combine['unique_id'] = phosphate_site_combine['Entry'] + '@' + phosphate_site_combine['coordinate']
# remove the duplicated elements
phosphate_site_combine0 = phosphate_site_combine.drop_duplicates('unique_id')


# establish the mapping between the entry and phosphate sites
# One protein could have multiple sites
phosphate_site_final = pd.DataFrame({'Entry': phosphate_site_combine0['Entry'].unique()})
phosphate_site_final['coordinate'] = multiMapping (description=phosphate_site_combine0['coordinate'], item1=phosphate_site_combine0['Entry'], item2=phosphate_site_final['Entry'], dataframe=True, sep=",", removeDuplicates=True)
# order the coordinates for easy observation
site0 = phosphate_site_final['coordinate'].tolist()
site_new = []
length0 = []
for x in site0:
    print(x)
    if ',' in x:
        s= x.split(',')
        s =[int(x) for x in s]
        s.sort()
    else:
        s = [int(x)]
    site_new.append(s)
    length0.append(len(s))

phosphate_site_final['coordinate'] = site_new
phosphate_site_final['number'] = length0

# Initially analyze the relation between the phosphate site number and the related protein abundances
'''
# input the abundance data from https://pax-db.org/species/4932
abundance = pd.read_csv('../data/4932-WHOLE_ORGANISM-integrated.txt', sep="\t")
id_mapping2 = pd.read_excel('../data/uniprotGeneID_mapping.xlsx')
abundance['string_external_id'] = abundance['string_external_id'].str.replace('4932.','')
abundance['Entry'] = singleMapping(description=id_mapping2['Entry'], item1=id_mapping2['GeneName'], item2=abundance['string_external_id'], dataframe=True)
phosphate_site_final['abundance'] = singleMapping(description=abundance['abundance'], item1=abundance['Entry'], item2=phosphate_site_final['Entry'], dataframe=True)
phosphate_site_final['abundance'] = pd.to_numeric(phosphate_site_final['abundance'])


phosphate_site_final = phosphate_site_final.dropna()
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import gaussian_kde
# Generate fake data
y = phosphate_site_final['number']
x = phosphate_site_final['abundance']
# Calculate the point density
xy = np.vstack([x,y])
z = gaussian_kde(xy)(xy)
# Sort the points by density, so that the densest points are plotted last
idx = z.argsort()
x, y, z = x[idx], y[idx], z[idx]
fig, ax = plt.subplots()
ax.scatter(x, y, c=z, s=30, edgecolor='')
plt.xlim([0, 2000])
plt.show()
'''
# input the abundance data from one article from cell system https://doi.org/10.1016/j.cels.2017.12.004
abundance = pd.read_excel('../data/abundance_cell_system.xlsx')
id_mapping2 = pd.read_excel('../data/uniprotGeneID_mapping.xlsx')
abundance['Entry'] = singleMapping(description=id_mapping2['Entry'], item1=id_mapping2['GeneName'], item2=abundance['GeneID'], dataframe=True)
phosphate_site_final['abundance'] = singleMapping(description=abundance['abundance'], item1=abundance['Entry'], item2=phosphate_site_final['Entry'], dataframe=True)
phosphate_site_final['abundance'] = pd.to_numeric(phosphate_site_final['abundance'])
phosphate_site_final = phosphate_site_final.dropna()

x = phosphate_site_final['abundance']
y = phosphate_site_final['number']

# Plot the result
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import gaussian_kde
# Calculate the point density
xy = np.vstack([x,y])
z = gaussian_kde(xy)(xy)
# Sort the points by density, so that the densest points are plotted last
idx = z.argsort()
x, y, z = x[idx], y[idx], z[idx]
fig, ax = plt.subplots()
ax.scatter(x, y, c=z, s=30, edgecolor='')
plt.xlim([0, 100000])
plt.show()