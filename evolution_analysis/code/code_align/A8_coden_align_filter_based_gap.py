#!/usr/bin/python

# Note
# This script is used to further filter the aligned cds sequence based on the gap ratio


import os
from Bio import SeqIO
import pandas as pd
import argparse
import numpy as np
from Bio.Seq import Seq


# need a function to calculate the ratio of gaps
def filterCodonBasedGapRatio(OG_dict, gap_ratio=0.3):
    """
    This function is used to remove coden site with a lot of gaps
    :param OG_dict:
    :param gap_ratio:
    :return:
    """
    OG_dict_coden = {}
    for key, value in OG_dict.items():
        print(key, value)
        codon_original = value
        # change the "---" into 0 and "ATC" into 1
        codon_0_1 = []
        for x in codon_original:
            if x == "---":
                codon_0_1.append(0)
            else:
                codon_0_1.append(1)
        OG_dict_coden[key] = codon_0_1

    arr = np.stack(OG_dict_coden.values(), axis=1)

    sum_row = list(np.sum(arr, axis=1))
    seq_num = arr.shape[1]
    codon_num = arr.shape[0]
    ratio_row = [1 - (x / seq_num) for x in sum_row]
    # based on the ratio_row
    codon_index = [x + 1 for x in range(codon_num)]
    # then we could esitmate which codon can be kept based on the gap ratio
    # codon existed in 10 sequences will be also kept
    # further we can calculate the column wise score refer to the GUIDENCE 2.0
    codon_index_kept = []
    codon_index_removed = []
    #for t1, t2, t3 in zip(ratio_row, codon_index, sum_row):
    for t1, t2 in zip(ratio_row, codon_index):
        if t1 >= gap_ratio:
            codon_index_removed.append(t2)
        else:
            codon_index_kept.append(t2)
    return codon_index_kept


def produceSeqDict(fastInputBySeqIO):
    OG_dict = {}
    for record in fastInputBySeqIO:
        codon_seq = []
        for index in range(0, len(record.seq), 3):
            codon = record.seq[index:index + 3]
            print(codon)
            codon_seq.append("".join(list(codon)))
        OG_dict[record.id] = codon_seq
    return OG_dict

def outputFilterCDSbasedGapRatio(infile, fasta_out, id_mapping_out):
    """
    The function is used to output the filtered cds file based on the gap ratio.
    Be careful about the gap ratio setting!!!

    :param infile:
    :param fasta_out:
    :param id_mapping_out:
    :return:

    usage
    -------------------------------
    # an example
    # infile0 = "/Users/luho/Documents/branch_site_methanol/cds_align_macse_remove_stop_code_methanol/OG5327_code.fasta"
    # fasta_out0 = "/Users/luho/Documents/branch_site_methanol/cds_align_gap_filter_methanol/OG5327_code.fasta"
    # id_mapping_out0 =  "/Users/luho/Documents/branch_site_methanol/coordinate_mapping_after_cds_filter/OG5327.csv"
    # outputFilterCDSbasedGapRatio(infile=infile0, fasta_out=fasta_out0, id_mapping_out=id_mapping_out0)

    """

    OG_original = list(SeqIO.parse(infile, "fasta"))
    # step1 build the dict
    OG_dict0 = produceSeqDict(fastInputBySeqIO=OG_original)
    new_seq = []
    for record in OG_original:
        tempRecordSeq = list(record.seq)
        codon_seq = []
        for index in range(0, len(record.seq), 3):
            codon = record.seq[index:index + 3]
            print(codon)
            codon_seq.append("".join(list(codon)))
        # then based on the choose codon index based on the gap ratio
        codon_index_kept0 = filterCodonBasedGapRatio(OG_dict=OG_dict0, gap_ratio=0.3)
        index_choose = codon_index_kept0
        new_codon_seq = []
        for i, x in enumerate(codon_seq):
            print(i + 1, x)
            if i + 1 in index_choose:
                new_codon_seq.append(x)
        record.seq = Seq("".join(new_codon_seq))
        new_seq.append(record)

        # save the updated fasta file
        SeqIO.write(new_seq, fasta_out, "fasta")

        # output the id mapping
        new_index_of_codon = [x + 1 for x, ele in enumerate(codon_index_kept0)]
        id_mapping = pd.DataFrame({"original_pro_coordinate": codon_index_kept0,
                                   "new_coordinate": new_index_of_codon})
        id_mapping.to_csv(id_mapping_out)

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Filter cds based on the site gap for the followed evolution analysis.')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input file which has unaligned/aligned nucleotide/codon sequence file')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the filtered cds')
    parser.add_argument('-m', metavar = 'output_file', type = str, help = 'output file to store the id mapping file')
    args = parser.parse_args()
    #set up output file name if none is given
    if args.o is None:
        cds_out_file = "data/"
    else:
        cds_out_file = args.o

    id_mapping_out = args.m
    nuc_seq_file = args.n

    # test
    nuc_seq_file = "/Users/luho/Documents/branch_site_methanol/cds_align_macse_remove_stop_code_methanol/"
    cds_out_file = "/Users/luho/Documents/branch_site_methanol/cds_align_gap_filter_methanol/"
    id_mapping_out = "/Users/luho/Documents/branch_site_methanol/coordinate_mapping_after_cds_filter/"

    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        print(i)
        if "_code.fasta" in i:
            infile0 = nuc_seq_file + i
            outfile1 = cds_out_file + i
            outfile2 = id_mapping_out + i.replace("_code.fasta",".csv")
            outputFilterCDSbasedGapRatio(infile=infile0, fasta_out=outfile1, id_mapping_out=outfile2)
        else: pass
if __name__ == "__main__":
    main()

# usage
# python A8_coden_align_filter_based_gap.py -n /Users/luho/Documents/branch_site_methanol/cds_align_macse_remove_stop_code_methanol/ -o /Users/luho/Documents/branch_site_methanol/cds_align_gap_filter_methanol/ -m /Users/luho/Documents/branch_site_methanol/coordinate_mapping_after_cds_filter/