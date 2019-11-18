# --------------------------------------------------------------------------------------
# Extract the ortholog gene mapping between sce with other yeast species based on the ortholog-finder
# --------------------------------------------------------------------------------------
import os  ##for directory
import sys
import pandas as pd

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
from mainFunction import *


# establish the relation between ortholog and the representative protein id (which is also called as panID)
# input the ortholog ID and the panID
infile0 = '/Volumes/newdisk/ortholog_finder_result'

subfold1 = []
for child in os.listdir(infile0):
    path = os.path.join(infile0, child)
    if os.path.isdir(path):
        print(path)
        subfold1.append(path)

for m in subfold1:
    s0 = []
    for x in os.listdir(m):
        s0.append(x)
    s1 = [x for x in s0 if (".fasta" in x or "faa" in x or "fa" in x)and "Saccharomyces_cerevisiae" not in x and "._" not in x]
    if s1 !=[]:
        s2 = s1[0]
        s2 = s2.split(".")[0]
        print(m, s2)
        ortholog_file = m + "/Results_Nov14/Orthogroups.csv"
        ortholog = pd.read_csv(ortholog_file, sep="\t")
        name0 = list(ortholog.columns)
        name0[0] = "OrthologID"
        ortholog.columns = name0
        ortholog.to_csv("../result/" + s2 + ".tsv", sep="\t")
    else:
        pass