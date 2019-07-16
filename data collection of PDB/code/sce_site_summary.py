#--------------------------------------------------------------------------------------
# This script is to collect site definition for sce from Uniprot database
# The download time is on 11,June, 2019
#--------------------------------------------------------------------------------------
import os    ##for directory
import pandas as pd
import sys
from functools import reduce
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/evolution/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')
from pdb_function_module import *

# parse the second structure
site_type = pd.read_excel('../data/functional site/site classification.xlsx')

# input 6 kinds of site annotation
subcellular = pd.read_excel('../data/functional site/uniprot_yeast_subcellular_location.xlsx')
sce_function = pd.read_excel('../data/functional site/uniprot_yeast_function.xlsx')
mutagenesis = pd.read_excel('../data/functional site/uniprot_yeast_mutagenesis.xlsx')
PTM = pd.read_excel('../data/functional site/uniprot_yeast_PTM.xlsx')
family_domain = pd.read_excel('../data/functional site/uniprot_yeast_family_domain.xlsx')
secondary_structure = pd.read_excel('../data/functional site/uniprot_yeast_secondary_structure_experiment_file.xlsx')

# merge
# change multiple columns into one column
site_all = reduce(lambda x,y: pd.merge(x,y, on='Entry', how='outer'), [subcellular, sce_function, mutagenesis, PTM, family_domain, secondary_structure])
df1 = site_all.iloc[:, 0:2]
name0 = list(df1.columns)[1]
df1.columns = ['Entry','site']
df1['site_type'] = [name0]*len(df1['Entry'])

# loop to summary all site into three column format
name1 = list(site_all.columns)
name1 = name1[2:]
for x in name1:
    print(x)
    df_one = site_all[['Entry', x]]
    df_one.columns = ['Entry', 'site']
    df_one['site_type'] = [x]*len(df_one['Entry'])
    df1 = pd.concat([df1,df_one], axis=0, join='outer')

# remove the 'nan' in the column 'site'
df2 =df1.dropna()


site = []
# one example
for i in range(len(df2['Entry'])):
    #print(i)
    s1 = df2.iloc[i,1]
    # split based on key word
    keyword = s1.split(" ")[0].strip()
    s0 = s1.split(keyword)
    print(s0)
    s0 = [keyword +' ' + x.strip() for x in s0 if x !='']
    s2 = df2.iloc[i,0]
    s3 = df2.iloc[i,2]
    s0 =[s2+'@'+ s3 + '@' + x for x in s0]
    site.append(s0)


# flatten list
site0 = sum(site, [])

# extract the coordinate for each element
site1 = []
for i, x in enumerate(site0):
    p1 = site0[i]
    p2 = p1.split('@')
    item1 = p2[2]
    item2 = item1.split(' ')
    if(len(item2) >= 3):
        site_range = item2[1] +'-' + item2[2]
        p1_new = p1 + '@' + site_range
        print(i, site_range)
        site1.append(p1_new)


# A new dataframe to store the result
site_detail = pd.DataFrame({'site': site1})
# separate one column into four columns
site_detail2 = site_detail['site'].str.split('@', expand=True)
# rename each column
site_detail2.columns = ['Entry', 'feature_key', 'description', 'coordinate']




# summarize the interface annotation data
# this data is from https://www.biorxiv.org/content/10.1101/700070v1
interface = pd.read_excel('../data/functional site/sce_protein_interface.xlsx')
interface['feature_key'] = interface['P1'] + '+' + interface['P2'] + '_interface'
interface1 = interface[['P1','feature_key', 'Source','P1_Interface_residues']]
interface2 = interface[['P2','feature_key', 'Source','P2_Interface_residues']]
interface1.columns =  ['Entry', 'feature_key', 'description', 'coordinate']
interface2.columns =  ['Entry', 'feature_key', 'description', 'coordinate']
# merge the interface site data into the final data
site_final = pd.concat([site_detail2,interface1,interface2], axis=0, join='outer')


# save the result in excel format
writer = pd.ExcelWriter('../result/sce_site_summary.xlsx')
site_final.to_excel(writer,'Sheet1')
writer.save()
# extract the site for one gene to check the result
# P17709 as an example
# site_P17709 = site_detail2[site_detail2['Entry']=='P17709']




