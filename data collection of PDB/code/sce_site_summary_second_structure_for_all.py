#--------------------------------------------------------------------------------------
# This script is to collect site definition for sce from Uniprot database
# The download time is on 11,June, 2019
#--------------------------------------------------------------------------------------
import os    ##for directory
import pandas as pd
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/evolution/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/evolution/code')
from pdb_function_module import *

# parse the second structure
site_type = pd.read_excel('../data/functional site/site classification.xlsx')

# input the secondary structure information for proteins with experimental evidences
secondary_structure = pd.read_excel('../data/functional site/uniprot_yeast_secondary_structure_experiment_file.xlsx')

# find proteins without secondary structure information
protein_with_ex_str = secondary_structure.dropna()

# total 5704 proteins with no secondary structure information
# here two methods can be used to annotate the secondary structure information
# the first one is using DSSP ran in the biopython
# the second one is using NetSurfP-2.0  http://www.cbs.dtu.dk/services/NetSurfP-2.0/
protein_no_ex_str = list(set(secondary_structure['Entry'])-set(protein_with_ex_str['Entry']))


