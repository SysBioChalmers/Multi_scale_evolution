# --------------------------------------------------------------------------------------
# Compare the protein seq from sce with other proteins
# --------------------------------------------------------------------------------------
import os  ##for directory
import pandas as pd
import sys
from Bio import SeqIO

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


changeComputer(computer_name="MAC")


orthologID = []
sce_gene_in_ortho = []
sce_gene_number = []
strain_number_no_sce =[]

for (k,v) in ortho_with_sce_seq.items():
    print(k, v)
    infile = '../result/' + k + '_aa.fasta'
    #all_id = open(infile, "r").readlines()
    gene_sum = []
    for record in SeqIO.parse(infile, "fasta"):
        #print("%s %i" % (record.id, len(record)))
        gene_sum.append(record.id)
    gene_sce = [i for i in gene_sum if 'Saccharomyces_cerevisiae' in i]
    gene_no_sce = [i for i in gene_sum if 'Saccharomyces_cerevisiae' not in i]
    strain_all = [i.split('@')[0] for i in gene_sum]
    strain_all_no_sce = list(set(strain_all) - set(['Saccharomyces_cerevisiae']))
    orthologID.append(k)
    sce_gene_in_ortho.append(gene_sce)
    sce_gene_number.append(len(gene_sce))
    strain_number_no_sce.append(len(strain_all_no_sce))

# summarize the result
result_summary = pd.DataFrame({'OrthologID': orthologID, 'sce_gene_number': sce_gene_number,'sce_gene':sce_gene_in_ortho, 'other_strain_number': strain_number_no_sce})



# save the result
result_summary.to_excel("../result/sce_gene_summary.xlsx")
