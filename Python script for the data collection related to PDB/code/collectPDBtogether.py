'''
Copy all swiss model files together.
2019-01-28 Hongzhong Lu
'''

import shutil
import os


#for the latest version of model from swiss model database
#the dir contains the homology pdb files downloaded from swiss database
source = '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/PDB quality analysis/pdb_ex_other_format'
#the dir contains the homology pdb files we used to calculate the residue distance
dest1 = '/Users/luho/Documents/pdb file/PDB experimental pdb files'
#list the files in the directory
for dirName, subdirList, fileList in os.walk(source):
    print('Found directory: %s' % dirName)
    for fname in fileList:
        print('\t%s' % dirName + '/' + fname)
        if fname.endswith('DS_Store'):
            pass
        else:
            shutil.copy(dirName + '/' + fname, dest1)