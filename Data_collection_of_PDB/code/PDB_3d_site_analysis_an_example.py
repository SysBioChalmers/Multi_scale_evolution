#--------------------------------------------------------------------------------------
# 3D site definition
#--------------------------------------------------------------------------------------
from Bio.PDB import *
import os    ##for directory
import numpy as np
import pandas as pd
from Bio.PDB.PDBParser import PDBParser
import xlwt
from Bio.PDB.Polypeptide import PPBuilder
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code')
from pdb_function_module import *


# step 1
# parse the second structure
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


# step 2
# prepare the interface residues sites
# will do when all the interface residues are calculated



# step 3
# parse the general structure
# this is the key sites used all the analysis
general_3D_site = pd.read_excel('../data/YCL040W_site_definition.xlsx', sheet_name='general_site')
# establish unique group
# to avoid the duplicated id
s0 = ["_group" +str(i) for i in range(len(general_3D_site['gene']))]
general_3D_site['order'] = s0
general_3D_site['id'] = general_3D_site['feature_key'] + '@' + general_3D_site['description'] + general_3D_site['order']

# establish a dict, in which the coordinates are stored in a list
feature_set = dict()
for i,x in general_3D_site.iterrows():
    cor = x['coordinate']
    print(cor)
    if isinstance(cor, int):
        s2=[cor]
    else:
        if '-' in cor:
            s1= cor.split('-')
            s1 = [int(x.strip()) for x in s1]
            s2 = list(range(s1[0],s1[1]+1))
        else:
            s1 = cor.split(' ')
            s2 = [int(x.strip()) for x in s1]
    print(s2)
    feature_set[x['id']] = s2

# combine the two dict
feature_all = {**secondary_structure_set, **feature_set}

# next get the residues coordinate from structure
# in the example the coordinates are same between the pdb and protein
# with these information, we need define the 3D sites for features with smaller than 100 residues, if
# it is large than 100 residues, it can be analysed independently.
for key in feature_all:
    print(key, 'length:', len(feature_all[key]), feature_all[key])







'''calculate the residue matrix using normal method
In the batch process calculation, the residue matrix will be calculated in advance

# input
# input the geneID or PDB ID
pdbID0 = 'YCL040W_3D_site_example.pdb' #pdb_inf['coordinate_id0'][i]
# set directory for the input and output
infile1 = '/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/data/' + pdbID0 #pdbfile + pdbID
outfile1 = '/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/' + pdbID0 + '.txt' #pdbfile + pdbID
calcAndSaveDistanceMatrix(pdbID = pdbID0 ,
                          chainID = 'A',
                          start0 = 1, #pdb_inf['sstart2'][i], the relative coordinated of PDB structure
                          end0 = 500,  #pdb_inf['send2'][i], the relative coordinated of PDB structure
                          infile = infile1,
                          outfile = outfile1,
                          method= 'minimum'
                         )
'''

# step4
# find the near residues within 5Å of the any atom of residues in the feature
# batch process
# To load the saved distance data
ss = np.loadtxt(outfile1,delimiter=',')
site_3D_all = dict()
for key in feature_all:
    interest_site = feature_all[key]
    # get the original coordinates of residues from proteins
    coordinate_mapping = list(range(start0, end0 + 1))
    # this is coordinate of distance matrix
    distance_index = list(range(len(coordinate_mapping)))
    # change the site coordinate into the distance_index
    interest_index = [y for x, y in zip(coordinate_mapping, distance_index) if x in interest_site]
    if len(interest_site) >=100:
        print('The length of feature is over 100')
        # here we only choose the intersection of site covered with pdb
        site_3D = list(set(interest_site) & set(coordinate_mapping))
    else:
        if len(interest_index) >=1:
            distance_set = ss[interest_index,]
            target_index = np.where(distance_set < 5)[1]
            site_3D_index = list(np.unique(target_index))
            # change the index into the coordinate
            site_3D = [coordinate_mapping[i] for i in site_3D_index]
            print('', key, 'original site', feature_all[key], '3D site', site_3D, sep="\n")
        else:
            print('No more site can be found!')
    if len(site_3D) >1:
        site_3D_all[key] = site_3D


# save the site information
# here the siteID, the original site and new 3D site were saved together
with open('../result/3D site YCL040W.csv', 'w') as f:
    for key in site_3D_all.keys():
        f.write("%s\t%s\t%s\t%s\n"%(key, feature_all[key], str(len(feature_all[key])), site_3D_all[key]))








'''
# example
# write a function to calculate the minimum distance between all atoms of two residues
residue_one = chain_filter[0]
residue_two = chain_filter[1]
# as the fist step we need extract all the atom in a residues
atoms_one = []
atoms_two = []
for atom in residue_one.child_list:
    print(atom.id)
    atoms_one.append(atom.id)
for atom in residue_two.child_list:
    print(atom.id)
    atoms_two.append(atom.id)
answer = np.zeros((len(atoms_one), len(atoms_two)), np.float)
for row, a_one in enumerate(atoms_one) :
    for col, a_two in enumerate(atoms_two) :
        answer[row, col] = residue_one[a_one] - residue_two[a_two]
        #diff_vector = residue_one[a_one].coord - residue_two[a_two].coord
        #answer[row, col] =np.sqrt(np.sum(diff_vector * diff_vector))
np.amin(answer) # this is the minimum distance beween all atoms from two residues


# write a function to calculate the distance between centroid of two residues
residue_one = chain_filter[0]
residue_two = chain_filter[1]
# as the fist step we need extract all the atom in a residues
atoms_one = []
atoms_two = []
for atom in residue_one.child_list:
    print(atom.id)
    atoms_one.append(atom.id)
for atom in residue_two.child_list:
    print(atom.id)
    atoms_two.append(atom.id)

x,y,z=0,0,0
for row, a_one in enumerate(atoms_one):
    x+= residue_one[a_one].coord[0]
    y+= residue_one[a_one].coord[1]
    z+= residue_one[a_one].coord[2]
x_new = x/len(atoms_one)
y_new = y/len(atoms_one)
z_new = z/len(atoms_one)

x1,y1,z1=0,0,0
for row, a_two in enumerate(atoms_two):
    x1+= residue_two[a_two].coord[0]
    y1+= residue_two[a_two].coord[1]
    z1+= residue_two[a_two].coord[2]
x1_new = x1/len(atoms_two)
y1_new = y1/len(atoms_two)
z1_new = z1/len(atoms_two)
np.sqrt((x1_new-x_new)**2+(y1_new-y_new)**2+(z1_new-z_new)**2)


# using the function to calculate different distances
# input the residue
residue_one0 = chain_filter[0]
residue_two0 = chain_filter[1]
# the distance of 'CA' atom
calc_residue_dist(residue_one0, residue_two0)
# the minimum distance of all atom
calc_residue_miniDist(residue_one0, residue_two0)
# the minimum distance of centroid in a residue
calc_residue_centroidDist(residue_one0, residue_two0)
'''