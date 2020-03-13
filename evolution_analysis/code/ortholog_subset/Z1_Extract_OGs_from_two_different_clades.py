#!/usr/bin/python
# Note
# The script is used to species from two different clades to the method test!


import os
from Bio import SeqIO

## part1
def filterPairedCDS(pro_input, cds_input, pro_output, cds_output, species_choose):
    """
    This function is used to choose species from two test clades.
    This function is just used for the test!
    :param pro_input:
    :param cds_input:
    :param pro_output:
    :param cds_output:
    :param species_choose:
    :return:
    """

    #species_choose = ["Saccharomyces_cerevisiae", "Yarrowia_lipolytica"]
    OG_trim = list(SeqIO.parse(pro_input, "fasta"))
    paired_pro = []
    pro_id = []
    for record in OG_trim:
        print(record.id, len(list(record.seq)))
        s0 = record.id
        s1 = s0.split("@")[0]
        if s1 in species_choose:
            paired_pro.append(record)
            pro_id.append(s1)
        else:
            pass

    OG_trim2 = list(SeqIO.parse(cds_input, "fasta"))
    paired_cds = []
    for record in OG_trim2:
        print(record.id, len(list(record.seq)))
        c0 = record.id
        c1 = c0.split("@")[0]
        if c1 in species_choose:
            paired_cds.append(record)
        else:
            pass

    species_in_choose = list(set(pro_id))
    branch1 = ["Saccharomyces_cerevisiae", "Saccharomyces_paradoxus"]
    branch2 = ["Candida_albicans"]
    # check whether the specific branch has the related species
    check1 = list(set(branch1) & set(species_in_choose))
    check2 = list(set(branch2) & set(species_in_choose))

    if check1 and check2:
        SeqIO.write(paired_pro, pro_output, "fasta")
        SeqIO.write(paired_cds, cds_output, "fasta")
    else:
        print(" The number of seq from one ortholog is smaller than 2!")

# here we extract paired seq from sce and YAL
prosource1 = "/home/luhongzhong/protein_all/"
cdssource1 = "/home/luhongzhong/cds_all/"

pro_out = '/home/luhongzhong/ortholog_subset/protein/'
cds_out = '/home/luhongzhong/ortholog_subset/cds/'

all_org = os.listdir(prosource1)
species_choose0 = ["Saccharomyces_cerevisiae", "Saccharomyces_paradoxus", "Candida_albicans"]

for i in all_org:
    print(i)
    # i = "OG5610_aa.fasta"
    file1 = prosource1 + i
    file2 = cdssource1 + i.replace("aa", "code")
    file3 = pro_out + i
    file4 = cds_out + i.replace("aa", "code")
    try:
        filterPairedCDS(pro_input=file1, cds_input=file2, pro_output=file3, cds_output=file4, species_choose=species_choose0)
    except:
        pass











