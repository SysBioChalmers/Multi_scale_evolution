#--------------------------------------------------------------------------------------
# 3D site definition
#--------------------------------------------------------------------------------------
import os    ##for directory
import numpy as np
import pandas as pd
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/evolution/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')
from pdb_function_module import *


# step 1
# parse the second structure
'''
secondary_structure = pd.read_excel('../data/YCL040W_site_definition.xlsx', sheet_name='secodary_structure')
seq0 = secondary_structure.iloc[0,1] # choose based on index
type0 = secondary_structure.iloc[1,1] # choose based on index
score0 = secondary_structure.iloc[2,1] # choose based on index
coordinate0 = [i+1 for i in range(len(seq0))]
seq0 = [x for i, x in enumerate(seq0)]
type0 = [x for i, x in enumerate(type0)]
score0 = [x for i, x in enumerate(score0)]

df_second = pd.DataFrame({'gene': ['YCL040W'] * len(seq0)})
df_second['position'] = coordinate0
df_second['feature_key'] = type0
df_second['description'] = score0
# group the secondary structure
from itertools import groupby
count_ele = [x for x, group in groupby(type0)]
count_dups = [sum(1 for x in group) for x, group in groupby(type0)]
count_ele =[x + '_group' + str(i) for i, x in enumerate(count_ele)]
unique_group = [[x]*y for x, y in zip(count_ele, count_dups)]
unique_group0 = sum(unique_group, []) # flatten the list
df_second['group'] = unique_group0
secondary_structure_set = dict()
for j in count_ele:
    smallset = []
    for i,x in df_second.iterrows():
        print(i, x['group'])
        if x['group'] ==j:
            smallset.append(x['position'])
    secondary_structure_set[j]=smallset
'''
# now, to represent the whole process
secondary_structure_set = dict()


# step 2
# prepare the interface residues sites
# will do when all the interface residues are calculated
# now, to represent the whole process
interface_structure_set = dict()





# step 3
# parse the general structure
# this is the key sites used all the analysis

# input the coordinate mapping information
infile = '../result/pdb_homo_filter_manual_check.xlsx'
#read meta data for one group of structure
pdb_inf = pd.read_excel(infile)
#check whether the pdb_sce existed in the aimed file
pdbfile = '/Users/luho/Documents/pdb file/homolog pdb_2019_5/'
# input the site summary information
site_detail = pd.read_excel('../result/sce_site_summary.xlsx')
distance_wrong = []
for i in range(0, len(pdb_inf['coordinate_id0'])):
    print(i)
    #i =512 # need check
    #i = 1032
    entryID = pdb_inf['UniProtKB_ac'][i]
    # input the geneID or PDB ID
    pdbID = pdb_inf['coordinate_id0'][i]
    chainID = pdb_inf['chainID'][i]
    # input the relative coordinated of PDB structure
    start0 = pdb_inf['sstart2'][i]
    end0 = pdb_inf['send2'][i]
    coordinate = list(range(start0, end0))
    length0 = len(coordinate) + 1

    site_protein = site_detail[site_detail['Entry'] == entryID]
    # change the sites from UniProt into a vector format
    feature_set0 = updateSiteFormatFromUniprot(general_3D_site=site_protein)
    # combine the three dict
    feature_all = {**secondary_structure_set, **interface_structure_set, **feature_set0}
    # next get the residues coordinate from structure
    # in the example the coordinates are same between the pdb and protein
    # with these information, we need define the 3D sites for features with smaller than 100 residues, if
    # it is large than 100 residues, it can be analysed independently.
    #for key in feature_all:
    #    print(key, 'length:', len(feature_all[key]), feature_all[key])


    # step5
    # find the near residues within 5Å of the any atom of residues in the feature
    # batch process
    # To load the saved distance data
    # Now the alpha 'C' distances are used, which will be replaced by the minimal distances
    # it can be found that distance matrix length is not consistent with the coordinate of proteins, for example 'P36151'
    # why this occurs?
    distance_dir = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/residue_distance/pdb_homo/' + pdbID + '.txt'
    ss = np.loadtxt(distance_dir, delimiter=',')
    if ss.shape[0] != length0:
        print('Wrong distance matrix!')
        distance_wrong.append(i)
    else:
        site_3D_all = dict()
        for key in feature_all:
            print(key)
            # test
            interest_site = feature_all[key]
            # get the original coordinates of residues from proteins
            coordinate_mapping = list(range(start0, end0 + 1))
            # this is coordinate of distance matrix
            distance_index = list(range(len(coordinate_mapping)))
            # change the site coordinate into the distance_index
            interest_index = [y for x, y in zip(coordinate_mapping, distance_index) if x in interest_site]
            if len(interest_site) >= 100:
                print('The length of feature is over 100')
                # here we only choose the intersection of site covered with pdb
                site_3D = list(set(interest_site) & set(coordinate_mapping))
            else:
                if len(interest_index) >= 1:
                    distance_set = ss[interest_index,]
                    target_index = np.where(distance_set < 5)[1]
                    site_3D_index = list(np.unique(target_index))
                    # change the index into the coordinate
                    site_3D = [coordinate_mapping[i] for i in site_3D_index]
                    print('', key, 'original site', feature_all[key], '3D site', site_3D, sep="\n")
                else:
                    print('No more site can be found!')
            if len(site_3D) > 1:
                site_3D_all[key] = site_3D

        # save the site information
        # here the siteID, the original site and new 3D site were saved together
        # how to name the 3D site for each proteins ?
        # it should be careful that there exist duplicated proteins/gene IDs
        # here we use the detailed pdbID to name the 3D site information of each proteins
        outfile = '../result/3D_site/' + pdbID + '.csv'
        with open(outfile, 'w') as f:
            for key in site_3D_all.keys():
                f.write("%s\t%s\t%s\t%s\t%s\t%s\n" % (entryID, key, feature_all[key], str(len(feature_all[key])), site_3D_all[key], pdbID))
