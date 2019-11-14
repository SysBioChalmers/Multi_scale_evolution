# --------------------------------------------------------------------------------------
# This script is used to collect the protein and code sequence data
# --------------------------------------------------------------------------------------
import os  ##for directory
import sys

def changeComputer(computer_name):
    """
    The function is used to define the work directory in the different computer
    :param computer_name:
    :return:
    """
    if computer_name == "linux":
        # for lab top
        sys.path.append(r"/media/hongzhong/newdisk/yeast_species/code")
        os.chdir(r'/media/hongzhong/newdisk/yeast_species/code')
    else:
    # for mac
        sys.path.append(r"/Volumes/newdisk/yeast_species/code")
        os.chdir(r'/Volumes/newdisk/yeast_species/code')

# here if we use computer on the mac
changeComputer(computer_name="mac")




# here we connect the number order (connect with ortholog ID) with the protein ID
infile2 = '../orthomcl_output/orthomcl_SeqIDs_index.txt'
id_mapping1 = open(infile2, "r").readlines()
len(id_mapping1)
id_map_dict1 = dict()
for id in id_mapping1:
    print(id)
    id = id.strip('\n')
    id0 = id.split(': ')
    id_map_dict1[id0[0]] = id0[1]


# part one
# collect the protein seq from a gene cluster together
from Bio import SeqIO
infile3 = '../orthomcl_output/343taxa_proteins.fasta'
records = SeqIO.index(infile3, 'fasta')

def findSceIDfromCluster(id_simple, id_map1= id_map_dict1):
    '''
    Find the protein seq based on the proteinID
    :param id_simple:
    :param record0:
    :return:
    '''

    #id_simple = a_id0 # for the test
    id_new = []
    for i in id_simple:
        #print(i)
        i = i.strip('\n')
        new1 = id_map1[i]
        id_new.append(new1)
    sce_seq = [x for i, x in enumerate(id_new) if 'Saccharomyces_cerevisiae' in x]
    print(len(sce_seq))
    return len(sce_seq), sce_seq


# find which ortholog group contain sce
infile = '../orthomcl_output/orthomcl_clusters.txt'
all_id = open(infile, "r").readlines()
len(all_id)


ortho_list = []
sce_list = []
ortho_seq = dict()

for orthoID in all_id:
    s1 = orthoID.split(': ')
    orthoID0 = s1[0]
    a_id = s1[1]
    a_id0 = a_id.split(' ')
    # then find the gene id based on the id mapping
    sce_num, sce_seq = findSceIDfromCluster(id_simple=a_id0)
    ortho_list.append(orthoID0)
    sce_list.append(sce_num)
    ortho_seq[orthoID0] = sce_seq

# then we can choose which ortholog group contains the sce
ortho_sce_seq = {k:v for (k,v) in ortho_seq.items() if len(v) > 0}
ortho_id_choose = [k for (k,v) in ortho_seq.items() if len(v) > 0]

# result analysis
ortho_no_sce_seq =  {k:v for (k,v) in ortho_seq.items() if len(v) == 0}
ortho_one_sce_seq =  {k:v for (k,v) in ortho_seq.items() if len(v) == 1}
ortho_with_sce_seq =  {k:v for (k,v) in ortho_seq.items() if len(v) > 0}
len(ortho_no_sce_seq)
len(ortho_one_sce_seq)
len(ortho_with_sce_seq)