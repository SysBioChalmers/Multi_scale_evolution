"""Put all the function to process PDB file together to make the script more clear"""


from Bio.PDB import *
import os    ##for directory
import numpy as np
import pandas as pd
from Bio.PDB.PDBParser import PDBParser
import xlwt



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

# in this function, for the homology pdb files, the residues were obtained based on the original coordinates of proteins
# not the relative coordinates of the pdb structures
def preprocessResidueHOMO(chain0, start1, end1):
    '''
    :param chain0: aimed chain with the coordinates
    :param start1: start1 mean the coordinate of "from" for homology model provided by swiss model database
    :param end1: end1 mean the the coordinate of "to" for homology model provided by swiss model database
    :return: a refined chain which could mapping onto the original protein
    '''
    chain_one = chain0
    len0 = len(chain_one)
    seq0 = list(range(0,len0))
    row0 = []
    residue_one0 = []
    for row, residue_one in enumerate(chain_one):
        residueOrder = list(residue_one.id)[1]
        row0.append(residueOrder )
        residue_one0.append(residue_one)
    #print(row0)
    #obtain the aimed target residue sequence
    target_residue = list(range(start1, end1+1))  # target_residue = list(range(start1,end1+1)) # right code
    finalOrder =[i for i,x in enumerate(row0) if x in target_residue]
    residue_one1 = [residue_one0[i] for i in finalOrder]
    return residue_one1, residue_one0


def getNewCoordinatePDBhomo(from1, to1, chain_test):
    '''
    This function is used to get new coordinates for the pdb homology file if the coordinate is not right
    :param from1: start coordinate given by swiss model database
    :param to1: end coordinate given by swiss model database
    :param chain_test: the chain with residues in a protein structure
    :return:
    '''
    old_coordinate = list(range(from1, to1 + 1))
    new_coordinate = list()
    for residue in chain_test:
        id = residue.id
        id1 = id[1]
        print(id1)
        new_coordinate.append(id1)
    return new_coordinate[0], new_coordinate[-1]

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

