#--------------------------------------------------------------------------------------
# This script is to collect site definition for sce from Uniprot database
# The download time is on 11,June, 2019
#--------------------------------------------------------------------------------------
import os    ##for directory
import pandas as pd
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code')
from pdb_function_module import *

# parse the second structure
site_type = pd.read_excel('../data/functional site/site classification.xlsx')

# input the secondary structure information for proteins with experimental evidences
secondary_structure = pd.read_excel('../data/functional site/uniprot_yeast_secondary_structure_experiment_file.xlsx')

# find proteins without secondary structure information
protein_with_ex_str = secondary_structure.dropna()

# total 5704 proteins with no secondary structure information
# here three methods can be used to annotate the secondary structure information
# the first one is using DSSP ran in the biopython
# the second one is using NetSurfP-2.0  http://www.cbs.dtu.dk/services/NetSurfP-2.0/
# the third one is using SCRATCH
protein_no_ex_str = list(set(secondary_structure['Entry'])-set(protein_with_ex_str['Entry']))



# Next we will parse the secondary structure information for each protein
sub_files = ['p1','p2','p3','p4','p5','p6']
infile0 = "/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/data/secondary_structure_sce_proteins/"


# SSpro8
# SSpro8 is an extension to SSpro
# in this method, it seems there are so many sites, total 685387 sites
all_structure ={}
for element in sub_files:
    file_test = infile0 + "sce_sgd_" + element + ".out.ss8"
    predict1 = open(file_test, 'r').readlines()
    dict1 = {}
    id_index = [i for i, x in enumerate(predict1) if '>' in x]
    for x in id_index:
        dict1[predict1[x]] = predict1[x + 1]
    all_structure = {**all_structure, **dict1}

# refine the relation between geneid and structure annotation
all_structure0 = {}
for key, value in all_structure.items():
    print(key)
    key0 = key.split(' ')[0]
    key1 = key0.replace('>','')
    all_structure0[key1] = all_structure[key].strip('\n')

# extract the coordinates of each second structure
from itertools import groupby
ss_definition = {
'H':'alpha-helix',
'G': '3-10-helix',
'I': 'pi-helix (extremely rare)',
'E': 'extended strand',
'B': 'beta-bridge',
'T': 'turn',
'S': 'bend',
'C': 'the rest'
}

secondary_structure_feature = []
for key, value in all_structure0.items():
    print(key, value)
    #Split string into repeated characters
    site_group = [''.join(g) for _, g in groupby(value)]
    index_site = list(range(len(value)))
    index_site0 = [x+1 for x in index_site]
    feature_coordinate = []
    for i, x in enumerate(site_group):
        print(i, x)
        start0 = site_group[0:i]
        merge0 = ''.join(start0)
        s1 = len(merge0) +1
        s2 = s1 + len(x)
        coordinate = list(range(s1,s2))
        print(coordinate)
        structure_type = ss_definition[x[0]]
        # define a unique key value
        unique_key = key + "@" + structure_type + "@" +str(s1) + '-' +str(s2-1)
        feature_coordinate.append(unique_key)
    secondary_structure_feature.append(feature_coordinate)

secondary_structure_feature0 =  sum(secondary_structure_feature, [])

# here we can do some filteration, remove the secondary structure with less than three sites based on the experimental secondary
# structure data annotation
# after filteration, there are total 282726 feature sites
secondary_structure_feature1 = []
for x in secondary_structure_feature0:
    x1 = x.split('@')
    coordinate0 = x1[2].split('-')
    coordinate0 = [int(i) for i in coordinate0]
    length0 = coordinate0[1]-coordinate0[0] +1
    print(x, ' ==> length: ', length0)
    if length0 >=3:
        secondary_structure_feature1.append(x)

# change the above information into a dataframe
geneID = []
feature_key = []
description = []
coordinate = []
for x in secondary_structure_feature1:
    x1 = x.split('@')
    geneID.append(x1[0])
    feature_key.append(x1[1])
    description.append(' '.join(x1[1:]))
    coordinate.append(x1[2])

predict_secondary_structure = pd.DataFrame({'geneID':geneID, 'feature_key':feature_key,
                                            'description': description, 'coordinate':coordinate})


# further find the Uniprot ID for each protein
id_mapping2 = pd.read_excel('../data/uniprotGeneID_mapping.xlsx')
predict_secondary_structure['Entry'] = singleMapping(description=id_mapping2['Entry'], item1=id_mapping2['GeneName'], item2=predict_secondary_structure['geneID'], dataframe=True)
predict_secondary_structure = predict_secondary_structure[['Entry','feature_key','description','coordinate']]

# only choose proteins second structure prediction without experiment data
predict_secondary_structure = predict_secondary_structure[predict_secondary_structure['Entry'].isin(protein_no_ex_str)]
predict_secondary_structure.to_excel("../result/predict_secondary_structure.xlsx")





'''
# SSpro
# SSpro only predict three kinds of features
# in this method, it seems there are so many sites, total 357529 sites
all_structure ={}
for element in sub_files:
    file_test = infile0 + "sce_sgd_" + element + ".out.ss"
    predict1 = open(file_test, 'r').readlines()
    dict1 = {}
    id_index = [i for i, x in enumerate(predict1) if '>' in x]
    for x in id_index:
        dict1[predict1[x]] = predict1[x + 1]
    all_structure = {**all_structure, **dict1}

# refine the relation between geneid and structure annotation
all_structure0 = {}
for key, value in all_structure.items():
    print(key)
    key0 = key.split(' ')[0]
    key1 = key0.replace('>','')
    all_structure0[key1] = all_structure[key].strip('\n')

# extract the coordinates of each second structure
from itertools import groupby
ss_definition = {
'H':'alpha-helix',
'E': 'extended strand',
'C': 'the rest'
}

secondary_structure_feature = []
for key, value in all_structure0.items():
    print(key, value)
    site_group = [''.join(g) for _, g in groupby(value)]
    index_site = list(range(len(value)))
    index_site0 = [x+1 for x in index_site]
    feature_coordinate = []
    for i, x in enumerate(site_group):
        print(i, x)
        start0 = site_group[0:i]
        merge0 = ''.join(start0)
        s1 = len(merge0) +1
        s2 = s1 + len(x)
        coordinate = list(range(s1,s2))
        print(coordinate)
        structure_type = ss_definition[x[0]]
        # define a unique key value
        unique_key = key + "@" + structure_type + "@" +str(s1) + '-' +str(s2-1)
        feature_coordinate.append(unique_key)
    secondary_structure_feature.append(feature_coordinate)

secondary_structure_feature0 =  sum(secondary_structure_feature, [])
'''