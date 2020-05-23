#!/usr/bin/python

# Note
# This script is used to replace any stop codon with "---".
# Here please careful about when finding the positive selected sites, is it still correct to mapping the sites into the
# original reference protein sequences.

from Bio import SeqIO
from Bio.Seq import Seq
import os
import argparse

# others small task
# compare the result after the tree pruner
def removeStopCode(fasta_input, fasta_out):
    '''
    All the parameters are directories of input and output fasta files
    :param fasta_input:
    :param fasta_out:
    :return:
    '''

    # for the test
    #fasta_input = "/home/luhongzhong/ortholog_subset/cds_align_macse/OG4273_code.fasta"
    #fasta_out ="/home/luhongzhong/ortholog_subset/cds_align_macse_remove_stop_code"
    codon_stop_array = ["TAG", "TGA", "TAA", "UGA", "UAA", "UAG"]
    new_seq = []
    for record in SeqIO.parse(fasta_input, "fasta"):
        print(record.seq)
        tempRecordSeq = list(record.seq)
        for index in range(0, len(record.seq), 3):
            codon = record.seq[index:index + 3]
            print(codon)
            if codon._data in codon_stop_array:
                tempRecordSeq[index:index + 3] = "---"
            #if codon in codon_stop_array:
            #    del tempRecordSeq[index:index + 3]
        record.seq = Seq("".join(tempRecordSeq))
        new_seq.append(record)
    '''
    new_seq2 = []
    for seq in new_seq:
        print(seq.seq)
        if 'Y' not in seq.seq:
            new_seq2.append(seq)
        else:
            pass'''
    # save the updated fasta file
    SeqIO.write(new_seq, fasta_out, "fasta")

# an example
# orthogID = "OG5327"
# source = '/Users/luho/Desktop/example/data/'

# original = source + orthogID + '_code_updated' + '.fasta'
# outfile = source + orthogID + '_code_updated' + '_remove_stop' + '.fasta'
# removeStopCode(fasta_input=original, fasta_out=outfile)



# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Remove the stop code or "Y" letter in the code sequence.')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input file which has unaligned/aligned nucleotide/codon sequence file')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')
    args = parser.parse_args()
    #set up output file name if none is given
    if args.o is None:
        out_file = "data/"
    else:
        out_file = args.o

    nuc_seq_file = args.n

    # for the test
    #nuc_seq_file = "/media/luhongzhong/newdisk/Genomics_data/cds_refine_align/"
    #out_file = "/media/luhongzhong/newdisk/Genomics_data/cds_align_macse_remove_stop_code/"
    # read in the amino acid alignment file
    all_ortholog = os.listdir(nuc_seq_file)

    for i in all_ortholog:
        print(i)
        if "_code" in i or ".fasta" in i: # to make the function can be used for 1011 sce strains
            infile = nuc_seq_file + i
            outfile = out_file + i
            print(infile, outfile)
            removeStopCode(fasta_input=infile, fasta_out=outfile)
        else:
            pass

if __name__ == "__main__":
    main()

# usage
# the fasta file is stored in "cds_all"
# python remove_stop_codon_commond_line.py  -n /Users/luho/Documents/cds_all/ -o /Users/luho/Documents/cds_all0/
# python remove_stop_codon_commond_line.py  -h