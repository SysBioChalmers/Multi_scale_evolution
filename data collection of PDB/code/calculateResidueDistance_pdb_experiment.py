#--------------------------------------------------------------------------------------
# The code is used to calculate the residue distance for experimental PDB files from PDB
# model database. It should be careful to do the calculation of residue distance as the
# residue sequence from actual PDB file can be different from the sequence provided by PDB
# database. Also it should be careful that the coordinates given by PDB files can be different
# from the real residue sequence.
# 2019-01-28 Hongzhong Lu
#--------------------------------------------------------------------------------------

from Bio.PDB import *
import os    ##for directory
import numpy as np
import pandas as pd
from Bio.PDB.PDBParser import PDBParser
from Bio.PDB.Polypeptide import PPBuilder
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')

#function
def calc_residue_dist(residue_one, residue_two):
    """Returns the C-alpha distance between two residues"""
    ''' an example
    residue_one = residue1
    residue_two = residue2'''
    diff_vector = residue_one["CA"].coord - residue_two["CA"].coord ##some errors: KeyError: 'CA'
    return np.sqrt(np.sum(diff_vector * diff_vector))

def calc_dist_matrix(chain_one, chain_two) :
    """Returns a matrix of C-alpha distances between two chains"""

    ''' an example
    chain_one = chain
    chain_two = chain'''
    answer = np.zeros((len(chain_one), len(chain_two)), np.float)
    for row, residue_one in enumerate(chain_one) :
        for col, residue_two in enumerate(chain_two) :
            answer[row, col] = calc_residue_dist(residue_one, residue_two)
    return answer

#function to preprocess residue from experiment PDB files, sometimes the residue sequence in the structure is different from the coordinates
#thus we should remove the redundant residue based on the given coordinates
#here it can be found that the target_residue coordinates are different between pdb_ex and pdb_homo, why??
#should check it before the follow-up analysis
#answer: here (start1-1, end1) means the relative coordinate from experimal pdb files which is the main differences between the
#residues calculation between pdb_homo and pdb_ex
def preprocessResidueEXP(chain0, start1, end1):
    '''
    :param chain0: aimed chain with the coordinates
    :param start1: start1 mean that in the blast analysis, start1 represent the first residue which could find in original protein
    :param end1: end1 mean that in the blast analysis, end1 represent the last residue which could find in original protein. start1 and
    end1 is not consistent with the residue order recorded in pdb file and they are the relative coordinates for the residues in pdb files
    :return: a refined chain which could mapping onto the original protein
    '''
    chain_one = chain0
    len(chain_one)
    row0 = []
    residue_one0 = []
    for row, residue_one in enumerate(chain_one):
        row0.append(row)
        residue_one0.append(residue_one)

    #obtain the aimed target residue sequence
    target_residue = list(range(start1-1,end1))#right code
    residue_one1 = [residue_one0[i] for i in target_residue]
    return residue_one1


#this function could help to check why keyError: 'CA' happened
def calc_residue_dist_at_two_pos(chain_check, s1, s2):
    chain_one = chain_check
    ss0 = []
    for row, residue_one in enumerate(chain_one):
        ss0.append(residue_one)
    return calc_residue_dist(ss0[s1],ss0[s2])

#pre-process the pdb meta information before calculate the residue distance
#set the directory
infile = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/data/pdb_ex_filter.txt'

#read meta data for one group of structure
pdb_sce = pd.read_csv(infile, sep="\t")
pdb_sce['uniqueID'] = [str(x) for x in list(pdb_sce.index)]
pdb_sce['coordinate_id0'] = pdb_sce['template'] + '.pdb'
pdb_sce['coordinate_id0'] = pdb_sce['coordinate_id0'].str.replace('-[0-9a-zA-Z]-','-pdb-')
pdb_sce['template'] = pdb_sce['template'] +'@'+ pdb_sce['chain_new'] + '@' + pdb_sce['uniqueID']
#split the template to obtain the chainID for each homo pdb file
pdb_sce0 = pdb_sce

#check whether the pdb_sce existed in the aimed file
pdbfile = '/Users/luho/Documents/pdb file/PDB experimental pdb files/'
exp_pdb_all = os.listdir(pdbfile)
np.setdiff1d(pdb_sce['coordinate_id0'], exp_pdb_all)


# batch process
# the followed code were used to process all the pdb structure at one time
# it will return the pdb id which need further manual check
#input all the pdb information
pdb_inf = pdb_sce0
PDB_check = []
chain_error = []
key_error= []
for i in range(0, len(pdb_inf['coordinate_id0'])):
    print(i)
    # get the paired distance
    p = PDBParser()
    # input the geneID or PDB ID
    pdbID0 = pdb_sce['template'][i]
    pdbID = pdb_inf['coordinate_id0'][i]
    chainID = pdb_inf['chain_new'][i]

    # input the relative coordinated of PDB structure
    # the start0, end0 are quite different from that used in the homology model
    start0 = pdb_inf['qstart2'][i]
    end0 = pdb_inf['qend2'][i]
    coordinate = list(range(start0, end0))
    length0 = len(coordinate) + 1 #the coordinate lose the last number, so the length0 should be added 1.

    # set directory for the input and output
    infile = pdbfile + pdbID
    outfile = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/residue_distance/pdb_ex/' + pdbID0 + '.txt'

    structure = p.get_structure(pdbID, infile)
    model = structure[0]
    # first obtain the chainID for the model
    chainID0 = []
    for chain in model:
        chainID0.append(chain.get_id())
    if  chainID in chainID0:
        chain11 = model[chainID]
        chain_filter = preprocessResidueEXP(chain0=chain11, start1=start0, end1=end0)
        try:
            ss = calc_dist_matrix(chain_filter, chain_filter)
        except KeyError:
            key_error.append(i)
            pass
        dimension1 = list(ss.shape)
    # how to add quality control for the distance before save the file for the downstream analysis
    # First step we can compare the dimension with the relative length
    # the dimension is 390 for chain A, while the relative coordinates is  25-417
    # thus it can be found that the actual amino acid length (417-25)=393 is not equal to the dimension of matrix, thus need manual check
    # In the manual check part,
    # we can parse the pdb structure and obtain the residue information
    # then we can compare the dimension of the distance matrix and the length of residue which has coordinates
    # Finally for a strict comparison, the residue amino acids sequence should be compared the sequence from structure
        if dimension1[0] == length0:
            np.savetxt(outfile, ss, delimiter=',')
        else:
            PDB_check.append(pdbID)
            continue
    else:
        print("Oops!  ChainID is not right")
        chain_error.append(pdbID)
        pass



'''chain error analysis
In the above analysis, we could find some chainID is wrong and distance can't be calculated,
Thus we need find why chainID error occur
After we find the right chainID, we can re-run the above code to obtain all the residue distance'''

len(key_error)
key_error = pd.Series(key_error)
writer = pd.ExcelWriter('/Users/luho/PycharmProjects/pdb/result/error in residue sequence for experimental pdb file.xlsx')
key_error.to_excel(writer,'Sheet1')
writer.save()















'''
PDB need check:
Here we don't find the chain error, but we find that for some experimental pdb files,
The residues contained in the chain can be not the amino acids residues
'''
PDB_check0 =['4g4s.pdb',
 '2caz.pdb',
 '1w96.pdb',
 '1uyv.pdb',
 '2j16.pdb',
 '4clc.pdb',
 '3kl4.pdb',
 '1usv.pdb',
 '2xgq.pdb',
 '2xgq.pdb',
 '2xgp.pdb',
 '2xgp.pdb',
 '4g4s.pdb',
 '4uyt.pdb']

pdb_sce_need_check = pdb_sce0[pdb_sce0['coordinate_id0'].isin(PDB_check0)]


writer = pd.ExcelWriter('../data/pdb ex need check.xlsx')
pdb_sce_need_check.to_excel(writer,'Sheet1')
writer.save()




def exactResidueEXP(chain0, qstart1, qend1, sstart1, send1):
    '''
    This function is used to extract the residues with 'CA' based on the coordinates from blast analysis
    :param chain0:
    :param start1: relative coordinate of residues from pdb file
    :param end1: relative coordinate of residues from pdb file
    :return: the new coordinates and the related new chain
    '''
    chain_one = chain0
    len(chain_one)
    row0 = []
    residue_one0 = []
    for row, residue_one in enumerate(chain_one):
        row0.append(row)
        residue_one0.append(residue_one)
    first_residue = residue_one0[0].id[1] # check whether the first residue with coordinate of 0!!!
    if first_residue==0:
        residue_one0=residue_one0[1:]
    #obtain the aimed target residue sequence
    relative_coordinate = list(range(qstart1, qend1 + 1))
    original_coordinate_protein = list(range(sstart1, send1+1)) # this is original coordinate in the protein  got from blast analysis
    original_coordinate_pdb = list() # this is used to store the 'coordinate' contained in the pdb file
    target_residue = list(range(qstart1-1,qend1))#right code
    residue_contain_CA = list()
    for i in target_residue:
        ss = residue_one0[i]
        original_coordinate_pdb.append(ss.id[1])
        atom_type = ss.child_list
        atom_all = list()
        for atom in atom_type:
            atom_all.append(atom.id)

        if 'CA' in atom_all and len(atom_all) >1:
            residue_contain_CA.append(True)
        else:
            residue_contain_CA.append(False)

    relative_coordinate_new = [x for x, y in zip(relative_coordinate,residue_contain_CA) if y is True]
    original_coordinate_pdb = [x for x, y in zip(original_coordinate_pdb,residue_contain_CA) if y is True]#here the original coordinate in pdb file maybe not consistent with the blast analysis result
    original_coordinate_new = [x for x, y in zip(original_coordinate_protein,residue_contain_CA) if y is True]
    if original_coordinate_pdb==original_coordinate_new:
        print('The pdb file contained the right original coordinate from the blast analysis')
    else:
        print('The pdb file contained the wrong original coordinate from the blast analysis')
    residue_one1 = []
    for residue in residue_one0:
        if residue.id[1] in original_coordinate_pdb: # here the coordinate given be pdb can be different from that in the blast analysis result
            residue_one1.append(residue)
        else:
            pass
    print(relative_coordinate_new[0], relative_coordinate_new[-1],
            original_coordinate_new[0], original_coordinate_new[-1])
    return [relative_coordinate_new[0], relative_coordinate_new[-1],
            original_coordinate_new[0], original_coordinate_new[-1],
            residue_one1]




pdb_inf2 = pdb_sce_need_check
PDB_check = []
chain_error = []
key_error= []
for i in list(pdb_inf2.index):
    print(i)
    # get the paired distance
    #i = 813 used for the new function
    p = PDBParser()
    # input the geneID or PDB ID
    pdbID0 = pdb_inf2['template'][i]
    pdbID = pdb_inf2['coordinate_id0'][i]
    chainID = pdb_inf2['chain_new'][i]

    # input the relative coordinated of PDB structure
    # the start0, end0 are quite different from that used in the homology model
    start0 = pdb_inf2['qstart2'][i]
    end0 = pdb_inf2['qend2'][i]
    # input the original protein coordinate from the blast analysis
    start1 = pdb_inf2['sstart2'][i]
    end1 = pdb_inf2['send2'][i]

    coordinate = list(range(start0, end0))
    length0 = len(coordinate) + 1 #the coordinate lose the last number, so the length0 should be added 1.

    # set directory for the input and output
    infile = pdbfile + pdbID
    outfile = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/residue_distance/pdb_ex/' + pdbID0 + '.txt'

    structure = p.get_structure(pdbID, infile)
    model = structure[0]
    # first obtain the chainID for the model
    chainID0 = []
    for chain in model:
        chainID0.append(chain.get_id())
    if  chainID in chainID0:
        chain11 = model[chainID]
        w1,w2,w3,w4,chain_filter = exactResidueEXP(chain0=chain11, qstart1=start0, qend1=end0, sstart1=start1, send1=end1)
        pdb_inf2['qstart2'][i] = w1
        pdb_inf2['qend2'][i] = w2
        pdb_inf2['sstart2'][i] = w3
        pdb_inf2['send2'][i] = w4
        try:
            ss = calc_dist_matrix(chain_filter, chain_filter)
        except KeyError:
            key_error.append(i)
            pass
        dimension1 = list(ss.shape)
    # how to add quality control for the distance before save the file for the downstream analysis
    # First step we can compare the dimension with the relative length
    # the dimension is 390 for chain A, while the relative coordinates is  25-417
    # thus it can be found that the actual amino acid length (417-25)=393 is not equal to the dimension of matrix, thus need manual check
    # In the manual check part,
    # we can parse the pdb structure and obtain the residue information
    # then we can compare the dimension of the distance matrix and the length of residue which has coordinates
    # Finally for a strict comparison, the residue amino acids sequence should be compared the sequence from structure
        if dimension1[0] == w2-w1+1:
            np.savetxt(outfile, ss, delimiter=',')
        else:
            PDB_check.append(pdbID)
            continue
    else:
        print("Oops!  ChainID is not right")
        chain_error.append(pdbID)
        pass

'''
note 
'''

# double check whether some pdb files residue distance is not calculated
outfile0 = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/residue_distance/pdb_ex/'
pdb_calculate = os.listdir(outfile0)
pdb_calculate = pd.Series(pdb_calculate)
pdb_calculate = pdb_calculate.str.replace('.txt','')
pdb_not_calculate = list(np.setdiff1d(pdb_sce['coordinate_id0'], pdb_calculate))



# update the coordinate for the pdb_homo with the wrong coordinates
pdb_sce_right = pdb_sce0[~pdb_sce0['coordinate_id0'].isin(PDB_check0)]
pdb_sce_manual_check = pd.concat([pdb_sce_right, pdb_inf2], axis=0, sort=False)

writer = pd.ExcelWriter('../result/pdb_ex_filter_manual_check.xlsx')
pdb_sce_manual_check.to_excel(writer,'Sheet1')
writer.save()
