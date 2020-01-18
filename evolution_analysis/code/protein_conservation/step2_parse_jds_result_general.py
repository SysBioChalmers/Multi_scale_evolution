#!/usr/bin/env python
# The function could be used for conservation score calculation without the sce sequence as the reference!!


from Bio import SeqIO
import os
import pandas as pd
import statistics
import argparse

## part1
## calculate the gap ratio from the multiple sequence alignment

def calConservationScore(fasta_file, jsd_file, outfile, sce_as_ref=False, output ="median"):
    '''
    This function is used to calculate the mean or median conservation score based on the protein
    mutiple sequence alignment result.
    :param fasta_file:
    :param jsd_file:
    :param outfile:
    :param output:
    :return:
    '''
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

        # for the conservation score calculated by the JSD method
        try:
            conservation_score_jds = open(jsd_file).readlines()  # I  found YGR183C has no jsd results!!!!!
            conservation_score_jds = conservation_score_jds[2:]
            column_inf = []
            score_inf = []
            for line in conservation_score_jds:
                print(line)
                colum_num = line.split("\t")[0].strip(" ")
                score_num = line.split("\t")[1].strip(" ")
                column_inf.append(colum_num)
                score_inf.append(score_num)

            conservation_jds_df = pd.DataFrame({"site": column_inf, "score": score_inf})
            conservation_jds_df['gap_ratio'] = df_site['gap_ratio']
            conservation_jds_df['refsite'] = df_site['refsite']

            # only save the conservation score for the reference sites
            conservation_jds_df_ref = conservation_jds_df[conservation_jds_df['refsite'] != '-']
            coordinate = list(range(1, (conservation_jds_df_ref.shape[0] + 1)))
            conservation_jds_df_ref['coordinate'] = coordinate
            # save the result
            conservation_jds_df_ref.to_csv(outfile)
            # to calculate the average conservation score of a whole proteins
            score0 = conservation_jds_df_ref["score"].tolist()
            score1 = [float(i) for i in score0]
            score2 = [x for x in score1 if x > 0]
            if output == "median":
                return statistics.median(score2)
            else:
                return statistics.mean(score2)
        except:

            pass
    else:
        pass


# main
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Parse the conservation score calculated by JDS')
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq alignment')
    parser.add_argument('-s', metavar = 'input_file', type = str, help = 'input the protein conservation score')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')

    # input
    args = parser.parse_args()
    source = args.p0
    source2 = args.s
    out_dir = args.o

    # test code
    # source = '/home/luhongzhong/ortholog_ML_unprune/protein_align/'
    # source2 = '/home/luhongzhong/ortholog_ML_unprune/protein_sce_conservation_score/'
    # out_dir = '/home/luhongzhong/ortholog_ML_unprune/result_jsd/'

    all_ID = os.listdir(source)
    all_jsd_score = []
    for i in all_ID:
        print(i)
        # TEST
        # i = "YAL030W_aa_aligned.fasta"
        fasta_file0 = source + i
        jsd_file0 = source2 + i.replace("aa_aligned.fasta", "conservation_score_jsd")
        outfile0 = out_dir + i.replace("aa_aligned.fasta", "conservation_score_jsd.csv")
        score0 = calConservationScore(fasta_file=fasta_file0, jsd_file=jsd_file0, outfile=outfile0, sce_as_ref=False, output="median")
        all_jsd_score.append(score0)

    # to save the result
    conservation_score_result = pd.DataFrame({"OG": all_ID, "conservation_score": all_jsd_score})
    conservation_score_result.to_csv(out_dir + "conservation_score_sce.csv")

if __name__ == "__main__":
    main()

# example code
# python /home/luhongzhong/Documents/evolution_analysis/code/protein_conservation/3_connect_site_data_with_sequence.py -p0 /home/luhongzhong/protein_all_refine_align_sce/ -s /home/luhongzhong/protein_sce_conservation_score/ -o /home/luhongzhong/Documents/result_jsd/