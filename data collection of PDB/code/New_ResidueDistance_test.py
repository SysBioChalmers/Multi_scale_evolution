#--------------------------------------------------------------------------------------
# The code is used to test the new method to calcualte the residues distances
# 2019-07-1 Hongzhong Lu
#--------------------------------------------------------------------------------------

from Bio.PDB import *
import os    ##for directory
import numpy as np
import pandas as pd
from Bio.PDB.PDBParser import PDBParser
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/evolution/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')


from pdb_function_module import *


#pre-process the pdb meta information before calculate the residue distance
infile = '../data/pdb_homo_filter.txt'
#read meta data for one group of structure
pdb_sce = pd.read_csv(infile, sep="\t")
pdb_sce['coordinate_id0'] = pdb_sce['mapid'] + '.pdb'

#add the pdbid for the pdb simulated manually
#pdb_sce['coordinate_id0'][520:533] =[x+str(y)+'.pdb' for x,y in zip(['s']*13, list(range(1,14)))]

#split the template to obtain the chainID for each homo pdb file
pdb_sce0 = pdb_sce.join(pdb_sce['template'].str.split('.', expand=True).rename(columns={0:'A', 1:'B', 2:'chainID'}))


#check whether the pdb_sce existed in the aimed file
pdbfile = '/Users/luho/Documents/pdb file/homolog pdb_2019_5/'
homo_pdb_all = os.listdir(pdbfile)
np.setdiff1d(pdb_sce['coordinate_id0'], homo_pdb_all)



#check the duplicated coordinateID
duplicateRowsDF = pdb_sce0[pdb_sce0['mapid'].duplicated()]
pdb_sce0['duplicated_sign'] = None
pdb_sce0['duplicated_sign'][pdb_sce0['mapid'].isin(duplicateRowsDF['mapid'])] = True
pdb_sce0 = pdb_sce0.sort_values(by ='mapid' )



# batch process
# the followed code were used to process all the pdb structure at one time
# it will return the pdb id which need further manual check
#input all the pdb information
pdb_inf = pdb_sce0
PDB_check = []
chain_error = []
for i in range(0, len(pdb_inf['coordinate_id0'])):
    print(i)
    # get the paired distance
    p = PDBParser()
    # input the geneID or PDB ID
    pdbID = pdb_inf['coordinate_id0'][i]
    chainID = pdb_inf['chainID'][i]

    # input the relative coordinated of PDB structure
    start0 = pdb_inf['sstart2'][i]
    end0 = pdb_inf['send2'][i]
    coordinate = list(range(start0, end0))
    length0 = len(coordinate) + 1

    # set directory for the input and output
    infile = pdbfile + pdbID
    outfile = '../result/Distance_mini/' + pdbID + '.txt'

    structure = p.get_structure(pdbID, infile)
    model = structure[0]
    # first obtain the chainID for the model
    chainID0 = []
    for chain in model:
        chainID0.append(chain.get_id())

    if  chainID in chainID0:
        chain = model[chainID]
        chain_filter, chain_filter2 = preprocessResidueHOMO(chain0=chain, start1=start0, end1=end0)
        ss = calc_dist_matrix(chain_filter, chain_filter, type='minimum')
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
            print('right residue distance')
        else:
            PDB_check.append(pdbID)
            continue
    else:
        print("Oops!  ChainID is not right! New chainID from pdb file will be used!")

        # here we use the new chainID from the pdb structure
        chainID = chainID0[0]
        chain = model[chainID]
        chain_filter, chain_filter2 = preprocessResidueHOMO(chain0=chain, start1=start0, end1=end0)
        ss = calc_dist_matrix(chain_filter, chain_filter, type='minimum')
        dimension1 = list(ss.shape)
        if dimension1[0] == length0:
            np.savetxt(outfile, ss, delimiter=',')
            print('right residue distance')
        else:
            PDB_check.append(pdbID)
            continue

        chain_error.append(pdbID)
        pass




















'''chain error analysis
In the above analysis, we could find some chainID is wrong and distance can't be calculated,
Thus we need find why chainID error occur
After we find the right chainID, we can re-run the above code to obtain all the residue distance'''


chain_error = ['24_256_5gak.1.0_59b3e2dd7f4bf99d49827220.pdb',
 '142_170_1oey.1.B_589ea8451405500d573ded8b.pdb',
 '73_88_4bj5.1.B_591e83e5573f20aa4da5b56b.pdb',
 '24_156_4v61.1.D_589e399d14055053b1540e30.pdb',
 '13_143_4v4b.1.3_57ef2b1cafa3585111b2759d.pdb',
 '302_449_2wvr.1.C_58913113ad01f05c3d9e1d76.pdb',
 '34_58_5lzf.1.B_597de24b26232580b017533e.pdb',
 '53_92_2fug.1.H_59f2ca583d4e1d89b8d6a283.pdb',
 '3_33_3n7n.1.E_59d60216ddc13fb684817f16.pdb',
 '23_43_4xgc.1.C_57718cbaf8196a07d9eb4653.pdb',
 '28_54_4ntq.1.B_597895a11405501fc64d4ff6.pdb',
 '13_143_4v4b.1.3_57ef2b1cafa3585111b2759d.pdb',
 '53_67_5e5a.1.F_58c5278fc730d47c165dd81d.pdb',
 '24_52_1y5y.1.B_5995db02eb80f76ab39c20d4.pdb',
 '111_211_5gjw.1.D_59606d5526232515895b99a2.pdb',
 '620_656_5t9m.1.E_59cc5508b4c268fb37320064.pdb',
 '481_501_4rt4.1.E_59ca5148afa35879c66ec29a.pdb',
 '9_107_5fl8.1.U_597e085d1405502800f7683e.pdb',
 '225_240_5da7.1.B_5783df96f8196a5b3ebbf30c.pdb',
 '180_846_5flz.1.B_596b8e0ec730d48a4587e6ed.pdb']
pdb_sce_need_check = pdb_sce0[pdb_sce0['coordinate_id0'].isin(chain_error)]

writer = pd.ExcelWriter('../data/pdb homo need check.xlsx')
pdb_sce_need_check.to_excel(writer,'Sheet1')
writer.save()


'''
pdb coordinates's number check
Here we found the number of pdbs with residues distances is smaller than the input
This is due to that the coordinate (start and end coordinate) from swiss model is not consistent with pdb file
'''

outfile0 = '../result/Distance_mini/'
homo_pdb_calculate = os.listdir(outfile0)
homo_pdb_calculate = pd.Series(homo_pdb_calculate)
homo_pdb_calculate = homo_pdb_calculate.str.replace('.txt','')
homo_pdb_not_calculate = list(np.setdiff1d(pdb_sce['coordinate_id0'], homo_pdb_calculate))

# new round of calculation
pdb_sce_need_check = pdb_sce0[pdb_sce0['coordinate_id0'].isin(homo_pdb_not_calculate)]
pdb_inf2 = pdb_sce_need_check
PDB_check = []
chain_error = []
for i in list(pdb_inf2.index):
    print(i)
    # get the paired distance
    p = PDBParser()
    # input the geneID or PDB ID
    pdbID = pdb_inf2['coordinate_id0'][i]
    chainID = pdb_inf2['chainID'][i]

    # input the relative coordinated of PDB structure
    start0 = pdb_inf2['sstart2'][i]
    end0 = pdb_inf2['send2'][i]
    coordinate = list(range(start0, end0))
    length0 = len(coordinate) + 1

    # set directory for the input and output
    infile = pdbfile + pdbID
    outfile = '../result/Distance_mini/' + pdbID + '.txt'

    structure = p.get_structure(pdbID, infile)
    model = structure[0]
    # first obtain the chainID for the model
    chainID0 = []
    for chain in model:
        chainID0.append(chain.get_id())

    if  chainID in chainID0:
        chain = model[chainID]
        chain_filter, chain_filter2 = preprocessResidueHOMO(chain0=chain, start1=start0, end1=end0)
        ss = calc_dist_matrix(chain_filter, chain_filter, type='minimum')
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
            print('right residue distance')
        else:
            np.savetxt(outfile, ss, delimiter=',')
            print('Update the coordinate of pdb_homo files')
            coordinate_update = getNewCoordinatePDBhomo(from1=start0, to1=end0, chain_test=chain_filter)
            pdb_inf2['sstart2'][i] = coordinate_update[0] # new coordinate
            pdb_inf2['send2'][i] = coordinate_update[1] # new coordinate
            PDB_check.append(pdbID)
            continue
    else:
        print("Oops!  ChainID is not right! New chainID from pdb file will be used!")

        # here we use the new chainID from the pdb structure
        chainID = chainID0[0]
        chain = model[chainID]
        chain_filter, chain_filter2 = preprocessResidueHOMO(chain0=chain, start1=start0, end1=end0)
        ss = calc_dist_matrix(chain_filter, chain_filter, type='minimum')
        dimension1 = list(ss.shape)
        if dimension1[0] == length0:
            np.savetxt(outfile, ss, delimiter=',')
            print('right residue distance')
        else:
            PDB_check.append(pdbID)
            continue

        chain_error.append(pdbID)
        pass



# update the coordinate for the pdb_homo with the wrong coordinates
pdb_sce_right = pdb_sce0[~pdb_sce0['coordinate_id0'].isin(homo_pdb_not_calculate)]

# here 'pdb_sce_need_check' is right????
pdb_homo_manual_check = pd.concat([pdb_sce_right, pdb_inf2], axis=0, sort=False)

writer = pd.ExcelWriter('../result/pdb_homo_filter_manual_check.xlsx')
pdb_homo_manual_check.to_excel(writer,'Sheet1')
writer.save()



















