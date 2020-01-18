#!/usr/bin/python

# Note
# here we extract paired seq from sce and YAL


import os
import argparse
import statistics
import pandas as pd
from Bio import SeqIO


## part1
## calculate the gap ratio from the multiple sequence alignment

"""
# for the test
prosource1 = "/home/luhongzhong/protein_all_refine_align_sce/"
cdssource1 = "/home/luhongzhong/cds_all_refine_sce/"
pro_out = '/home/luhongzhong/ortholog_subset/protein_align/'
cds_out = '/home/luhongzhong/ortholog_subset/cds/'

file1 = prosource1 + 'OG5327_aa_aligned.fasta'
file2 = cdssource1 + 'OG5327_code.fasta'
file3 = pro_out + 'OG5327_aa_aligned.fasta'
file4 = cds_out + 'OG5327_code.fasta'

species_choose = ["Saccharomyces_cerevisiae", "Yarrowia_lipolytica"]
OG_trim = list(SeqIO.parse(file1, "fasta"))
paired_pro = []
for record in OG_trim:
    print(record.id, len(list(record.seq)))
    s0 = record.id
    s1 = s0.split("@")[0]
    if s1 in species_choose:
        paired_pro.append(record)
    else:
        pass

OG_trim2 = list(SeqIO.parse(file2, "fasta"))
paired_cds = []
for record in OG_trim2:
    print(record.id, len(list(record.seq)))
    c0 = record.id
    c1 = c0.split("@")[0]
    if c1 in species_choose:
        paired_cds.append(record)
    else:
        pass
SeqIO.write(paired_pro, file3, "fasta")
SeqIO.write(paired_cds, file4, "fasta")
"""

def filterPairedCDS(pro_input, cds_input, pro_output, cds_output, species_choose):
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


#prosource1 = "/home/luhongzhong/protein_all_refine_align_sce/"

prosource1 = "/home/luhongzhong/protein_all/"
cdssource1 = "/home/luhongzhong/cds_all/"

#pro_out = '/home/luhongzhong/ortholog_subset/protein_align/'
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

'''
# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Collect the cds seq of high quality for each OG group')
    #adding arguments
    parser.add_argument('-n', metavar='input_file', type=str, help='input the cds seq before trim')
    parser.add_argument('-p1', metavar = 'input_file', type = str, help = 'input the protein seq after trim')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the new protein seq')
    #parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    cdsfile = args.n
    profile = args.p1  # store the cds in phy format
    outfile = args.o # store the code
    # for the test
    cds_list = os.listdir(cdsfile)
    for ele in cds_list:
        print(ele)
        cds0 = cdsfile + ele
        pro0 = profile + ele.replace("code", "aa_aligned_trim")
        output0 = outfile + ele
        try:
            filterCDS(cds_input=cds0, OG_input=pro0, cds_output=output0)
        except: pass
if __name__ == "__main__":
    main()
'''