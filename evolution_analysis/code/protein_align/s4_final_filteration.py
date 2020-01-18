#!/usr/bin/python

from Bio import SeqIO
import os
import argparse

# set the directory
# os.chdir('/Users/luho/Documents/GitHub/proteinER/src')

def getMaxSeqFromSameTax(ele0):
    '''
    Calculate the max seq number from a single species under an ortholog group
    :param ele0:
    :return:
    '''
    #ele0 = ortho_seq["OG1000"]
    from itertools import groupby
    ele1 = [x.split("@")[0] for x in ele0]
    result = [len(list(group)) for key, group in groupby(ele1)]
    max_seq_num = max(result)
    return max_seq_num


## part1
## calculate the gap ratio from the multiple sequence alignment
#source1 = '/home/luhongzhong/protein_all_align_s2/'
#source2 = '/home/luhongzhong/protein_all_align_s3/'
#file1 = source1 + 'OG5327_aa_aligned_trim.fasta'
#file2 = source2 + 'OG5327_aa_aligned_trim.fasta'

# Note: here to improve the coverage we improve the max_paralog from 3 to 5
def filterOG(fasta_input, fast_output, max_specie=7, max_paralog=5, seq_species_ratio=1.5, mini_seq_length=30):
    OG_trim = list(SeqIO.parse(fasta_input, "fasta"))
    proteinID = []
    for record in OG_trim:
        print(record.id, len(list(record.seq)))
        len0 = len(list(record.seq))
        proteinID.append(record.id)
    species_number = len(list(set([x.split("@")[0] for x in proteinID])))
    max_seq0 = getMaxSeqFromSameTax(proteinID)
    seq_num_divided_by_species_num = len(proteinID) / species_number
    final_seq_length = len0
    if species_number >= max_specie and max_seq0 <= max_paralog and seq_num_divided_by_species_num <= seq_species_ratio and final_seq_length >= mini_seq_length:
        SeqIO.write(OG_trim, fast_output, "fasta")


# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-p1', metavar = 'input_file', type = str, help = 'input the protein seq before trim')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the new protein seq')
    #parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    seqfile = args.p1  # store the cds in phy format
    outfile = args.o # store the code
    # for the test
    og_list = os.listdir(seqfile)
    for ele in og_list:
        print(ele)
        fasta_after_trim0 = seqfile + ele
        fasta_output0 = outfile + ele
        filterOG(fasta_input=fasta_after_trim0, fast_output=fasta_output0)
if __name__ == "__main__":
    main()

# an example
# python s4_final_filteration.py -p1 /home/luhongzhong/protein_all_align_s2/ -o /home/luhongzhong/protein_all_align_s2_R/