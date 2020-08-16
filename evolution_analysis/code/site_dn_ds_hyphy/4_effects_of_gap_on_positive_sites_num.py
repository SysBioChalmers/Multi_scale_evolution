#!/usr/bin/env python
# The function could be used for connect the site wise dN/dS with the sequence!
# Hongzhong
# 2020-04-20


from Bio import SeqIO
import os
import pandas as pd
import argparse

## part1
## calculate the gap ratio from the multiple sequence alignment

def connect_site_data_with_seq(fasta_file, site_file, outfile, sce_as_ref=False):
    '''
    This function is used to calculate the mean or median conservation score based on the protein
    mutiple sequence alignment result.
    :param fasta_file:
    :param site_file:
    :param outfile:
    :param output:
    :return:
    '''

    # test using fel result

    #fasta_file = "/Users/luho/Documents/site_model_FEL/OG5017_aa_aligned.fasta"
    #site_file = "/Users/luho/Documents/site_model_FEL/fel_csv/OG5017.csv"
    #sce_as_ref = False

    OG_original = list(SeqIO.parse(fasta_file, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    df_site = pd.DataFrame()
    geneID = []
    seq_legnth_no_gap = []
    for x in OG_original:
        print(x.id, '==> length=', len(x.seq))
        print(x.seq._data)
        seq0 = x.seq._data
        seq1 = seq0.replace("-", "")
        seq1_length = len(seq1)
        seq_legnth_no_gap.append(seq1_length)
        geneID.append(x.id)
        df_site[x.id] = list(x.seq._data)

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
    df_site['site_ratio'] = site_sum

    if sce_as_ref:
        # type 2
        # choose s288c seq as the reference seq automatically
        # here we have two datasets, one for 343 species genomes and another for 1011 sce genomes
        # the gene id of reference sce 288c can be different between the two projects.
        index_general = [i for i, x in enumerate(geneID) if "Saccharomyces_cerevisiae@" in x or "SACE_288c_" in x]
    else:
        # type 1
        # choose the longest seq as the reference
        index_general = [i for i,x in enumerate(seq_legnth_no_gap) if x == max(seq_legnth_no_gap)]

    if len(index_general)>=1:
        refseq = OG_original[index_general[0]].seq._data
        refseq0 = list(refseq)
        df_site['refsite'] = refseq0

    # input the site result
    csv_file = pd.read_csv(site_file)
    csv_file.index.name = 'newhead'
    csv_file.reset_index(inplace=True)
    #the column names are automatically give for fel result, which for the FUBAR method, the followed is needed.
    #csv_file.columns = ["site",	"alpha", "beta","beta-alpha","Prob[alpha>beta]","Prob[alpha<beta]",	"BayesFactor[alpha<beta]","para1", "para2"]

    # try to merge the site select data and sequence site file.
    # however the above two tables should have the same row names
    # compare the row number
    row1 = df_site.shape[0]
    row2 = csv_file.shape[0]
    if row1 == row2:
        df_site["alpha"] = csv_file["alpha"]
        df_site["beta"] = csv_file["beta"]
        df_site["p-value"] = csv_file["p-value"]
        df_site.to_csv(outfile)

    else:
        print("Please check the data quality!!!!")


# main
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Parse the dN/dS data calculated by Hyphy')
    
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq alignment')
    parser.add_argument('-s', metavar = 'input_file', type = str, help = 'input the dN/dS data')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')

    # input
    args = parser.parse_args()
    source = args.p0
    source2 = args.s
    out_dir = args.o

    # test code
    
    #source = '/home/luhongzhong/ortholog_sce_unprune/protein_refine/'
    #source2 = '/home/luhongzhong/Documents/cluster_result/fubar/fubar_csv/'
    #out_dir = '/home/luhongzhong/Documents/cluster_result/fubar/result_site/'

    all_ID = os.listdir(source2)
    all_site_score = []
    for i in all_ID:
        print(i)
        # TEST
        # i = "YAL030W_aa_aligned.fasta"
        fasta_file0 = source + i.replace(".csv", "_aa_aligned.fasta")
        site_file0 = source2 + i
        outfile0 = out_dir + i
        connect_site_data_with_seq(fasta_file=fasta_file0, site_file=site_file0, outfile=outfile0, sce_as_ref=False)

if __name__ == "__main__":
    main()

# example code

# for all OGs
# os.system("mkdir /home/luhongzhong/ortholog_343/fel_result_site/")
# python /home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_hyphy/1_common_residue_site_analysis.py -p0 /home/luhongzhong/ortholog_343/protein_refine/  -s /home/luhongzhong/ortholog_343/fel_csv/ -o /home/luhongzhong/ortholog_343/fel_result_site/

