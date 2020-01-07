#!/usr/bin/python

from Bio import SeqIO
import os
import argparse

# set the directory
# os.chdir('/Users/luho/Documents/GitHub/proteinER/src')

def calculateSiteLength(fastinput):
    OG_trim = list(SeqIO.parse(fastinput, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    length = {}
    for x in OG_trim:
        print(x.id, '==> length=', len(x.seq))
        print(x.seq._data)
        aligned_protein = list(x.seq._data)
        gap0 = [x for x in aligned_protein if x == "-"]
        site_length = len(aligned_protein) - len(gap0)
        length[x.id] = site_length
    return length

## part1
## calculate the gap ratio from the multiple sequence alignment
#source1 = '/home/luhongzhong/protein_all_align_s1/'
#file1 = source1 + 'OG5327_aa_aligned_trim.fasta'

#source2 = "/home/luhongzhong/protein_all_align/"
#file2 = source2 + "OG5327_aa_aligned.fasta"

#source3 = '/home/luhongzhong/protein_all_align_s1_R/'
#file3 = source3 + "OG5327_aa_aligned_trim.fasta"

def filterSeqUsingRatio(fasta_before_trim, fasta_after_trim, fasta_output, ratio_choose=0.5):

    length_before_trim = calculateSiteLength(fasta_before_trim)
    length_after_trim = calculateSiteLength(fasta_after_trim)
    # get the sequence need to be removed
    seq_need_remove = []
    for k, v in length_after_trim.items():
        ratio = length_after_trim[k] / length_before_trim[k]
        print(k, ratio)
        if ratio < ratio_choose:
            seq_need_remove.append(k)
    # save the new sequence list
    OG_trim = list(SeqIO.parse(fasta_after_trim, "fasta"))
    seq_save = []
    for record in OG_trim:
        if record.id not in seq_need_remove:
            print(record.id)
            seq_save.append(record)
    SeqIO.write(seq_save, fasta_output, "fasta")

# for the batch process
# source1 = '/home/luhongzhong/protein_all_align_s1/'
# source2 = "/home/luhongzhong/protein_all_align/"
# source3 = '/home/luhongzhong/protein_all_align_s1_R/'
# all_ortholog = os.listdir(source1)


# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-p1', metavar = 'input_file', type = str, help = 'input the protein seq before trim')
    parser.add_argument('-p2', metavar = 'input_file', type = str, help = 'input the protein seq after trim')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the new protein seq')
    #parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    oldfile = args.p1  # store the cds in phy format
    newfile = args.p2
    outfile = args.o # store the code
    # for the test
    og_list = os.listdir(newfile)
    for ele in og_list:
        print(ele)
        fasta_after_trim0 = newfile + ele
        fasta_before_trim0 = oldfile + ele
        fasta_output0 = outfile + ele
        filterSeqUsingRatio(fasta_before_trim0, fasta_after_trim0, fasta_output0, ratio_choose=0.5)
if __name__ == "__main__":
    main()

# an example
# python s2_remove_seq_reduce_length_by_50%.py -p1 /home/luhongzhong/protein_all_align/ -p2 /home/luhongzhong/protein_all_align_s1/ -o /home/luhongzhong/protein_all_align_s1_R/