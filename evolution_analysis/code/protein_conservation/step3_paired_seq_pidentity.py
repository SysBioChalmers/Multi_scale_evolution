#!/usr/bin/env python

# some reference
# https://rdrr.io/bioc/Biostrings/man/pid.html
# https://drive5.com/usearch/cdhitv4_alignment86.html
# https://www.dnastar.com/megalign_help/index.html#!Documents/calculationofpercentidentity.htm
# one pidenty definition
# For multiple alignments, a percent identity value is displayed for each pair of sequences in the Sequence Distances table. Percent identity is calculated by multiplying the number of matches in the pair by 100 and dividing by the length of the aligned region, including gaps. Identity scoring only counts perfect matches, and does not consider the degree of similarity of amino acids to one another. Note that only internal gaps are included in the length, not gaps at the sequence ends.
# Percent Identity = (Matches x 100)/Length of aligned region (with gaps)

## part1
## calculate the gap ratio from the multiple sequence alignment
from Bio import SeqIO
import os
import pandas as pd
import argparse

def cal_paired_seq_pidentity(fasta_file):
    '''
    This function is used to calculate the pair-wise pidentity for the aligned protein seq based on MAFFT
    mutiple sequence alignment result.
    :param fasta_file:
    :return:
    '''

    # test data
    # fasta_file = "/home/luhongzhong/ortholog_sce_unprune/protein_refine/OG5327_aa_aligned.fasta"

    OG_original = list(SeqIO.parse(fasta_file, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    df_site = pd.DataFrame()
    geneID = []
    for x in OG_original:
        #print(x.id, '==> length=', len(x.seq))
        #print(x.seq._data)
        geneID.append(x.id)
        df_site[x.id] = list(x.seq._data)
    '''
    df_site['gap_ratio'] = [None] * df_site.shape[0]
    df_site['site_ratio'] = [None] * df_site.shape[0]

    gap_sum = []
    site_sum = []
    # calculate the element frequency
    for i, x in df_site.iterrows():
        # i= 1
        # print(df_site.iloc[i,])
        s = df_site.iloc[i,]
        result = s.value_counts().to_dict()
        print(result)
        all_number = sum(result.values())
        if '-' in result.keys():
            gap_value = result['-'] / all_number
        else:
            gap_value = 0
        site_sum.append(result)
        gap_sum.append(gap_value)

    df_site['gap_ratio'] = gap_sum
    df_site['site_ratio'] = site_sum'''

    # prepare the reference seq
    # choose s288c seq as the reference seq automatically
    index_sce = [i for i, x in enumerate(geneID) if "Saccharomyces_cerevisiae@" in x]
    if len(index_sce)>=1:
        refseq = OG_original[index_sce[0]].seq._data
        refseq0 = list(refseq)
        df_site['refsite'] = refseq0
    #calculate pidenty based on the reference seq
    all_other_pro = [x for x in geneID if "Saccharomyces_cerevisiae@" not in x]
    ref_pro = [x for x in geneID if "Saccharomyces_cerevisiae@" in x]
    if(len(ref_pro) >=1 ):
        all_pidentity = []
        for pro in all_other_pro:
            print(pro)
            refseq_list = df_site[ref_pro[0]].tolist()
            newseq_list = df_site[pro].tolist()
            '''
            equal_sites = []
            unequal_sites = []
            for x, y in zip(refseq_list, newseq_list):
                if x==y:
                    equal_sites.append(1)
                else:
                    unequal_sites.append(1)
            pidenty1 = len(equal_sites)/(len(unequal_sites)+len(equal_sites))*100'''

            # another option is that we remove the sites which are both gaps between the paired seq
            equal_sites = []
            unequal_sites = []
            for x, y in zip(refseq_list, newseq_list):
                if x == "-" and y == "-":
                    pass
                else:
                    if x == y:
                        equal_sites.append(1)
                    else:
                        unequal_sites.append(1)
            pidenty2 = len(equal_sites) / (len(unequal_sites) + len(equal_sites)) * 100
            all_pidentity.append(pidenty2)
        id_combine = [x + "&&" + ref_pro[0] for x in all_other_pro]
        df = pd.DataFrame({"pair_id": id_combine, "identity": all_pidentity})
        return df
    else:
        return None

# main
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Calculate the paire-wise pidentity')
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq alignment')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')

    # input
    args = parser.parse_args()
    source = args.p0
    out_dir = args.o

    # test code
    #source = '/home/luhongzhong/protein_all_refine_align_sce/'
    #out_dir = '/home/luhongzhong/Documents/result_pidentity/'

    all_ID = os.listdir(source)
    for i in all_ID:
        print(i)
        fasta_file0 = source + i
        outfile0 = out_dir + i.replace("aa_aligned.fasta", "paired_pidentity.csv")
        result = cal_paired_seq_pidentity(fasta_file=fasta_file0)
        if result is not None:
            result.to_csv(outfile0)
if __name__ == "__main__":
    main()

# example code
# python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/step3_paired_seq_pidentity.py -p0 /home/luhongzhong/ortholog_sce_unprune/protein_refine/ -o /home/luhongzhong/ortholog_sce_unprune/pidentity_result/