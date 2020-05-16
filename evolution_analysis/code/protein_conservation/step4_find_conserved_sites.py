#!/usr/bin/env python

## part1
from Bio import SeqIO
import os
import pandas as pd
import argparse

def find_conserved_sites(fasta_file, pi_cutoff=0.9):
    '''
    This function is used to calculate the pair-wise pidentity for the aligned protein seq based on MAFFT
    mutiple sequence alignment result.
    :param fasta_file:
    :return:
    '''

    # test data
    #fasta_file = "/home/luhongzhong/ortholog_sce_unprune/protein_refine/OG5327_aa_aligned.fasta"

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

    df_site['gap_ratio'] = [None] * df_site.shape[0]
    df_site['site_ratio'] = [None] * df_site.shape[0]

    gap_sum = []
    site_sum = []
    all_site_ratio = []
    # calculate the element frequency
    for i, x in df_site.iterrows():
        # i= 1
        # print(df_site.iloc[i,])
        s = df_site.iloc[i,]
        result = s.value_counts().to_dict()
        print(result)
        all_number = sum(result.values())
        site_ratio = {}
        for key, value in result.items():
            ratio = result[key]/all_number
            print(key, ratio)
            if key != "-" and ratio >= pi_cutoff:
                site_ratio[key] = ratio
        all_site_ratio.append(site_ratio)

        if '-' in result.keys():
            gap_value = result['-'] / all_number
        else:
            gap_value = 0
        site_sum.append(result)
        gap_sum.append(gap_value)

    df_site['gap_ratio'] = gap_sum
    df_site['site_ratio'] = site_sum
    df_site['conserved_sites'] = all_site_ratio

    # prepare the reference seq
    # choose s288c seq as the reference seq automatically
    # as the better strategy, we should choose panID as the reference
    index_sce = [i for i, x in enumerate(geneID) if "Saccharomyces_cerevisiae@" in x]
    if len(index_sce)>=1:
        refseq = OG_original[index_sce[0]].seq._data
        refseq0 = list(refseq)
        df_site['refsite'] = refseq0
    return df_site


# main
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Find the highly conserved sites based on the site wise occurance.')
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
        outfile0 = out_dir + i.replace("aa_aligned.fasta", "conserved_site.csv")
        result = find_conserved_sites(fasta_file=fasta_file0, pi_cutoff = 0.9)
        result.to_csv(outfile0)
if __name__ == "__main__":
    main()


# example
# OG with sce
# python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/step4_find_conserved_sites.py -p0 /home/luhongzhong/ortholog_sce_unprune/protein_refine/ -o /home/luhongzhong/ortholog_sce_unprune/result_conserved_site/

# All OGs
# python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/step4_find_conserved_sites.py -p0 /home/luhongzhong/ortholog_343/protein_refine/ -o /home/luhongzhong/ortholog_343/result_conserved_site/
