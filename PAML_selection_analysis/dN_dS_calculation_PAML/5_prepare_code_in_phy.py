#!/usr/bin/python

# Note
# This script is used to remove the stop codon and the sequence contains letter "Y"
# In the initial method, we just remove the sequence contains letter "Y"
# This may be not the best option to handle it.
# For the example of "OG5327", one seq contains letter "Y", so we remove it.
# The script will be changed as a function.
import os
from Bio import AlignIO, SeqIO
#import pandas as pd
import argparse


## part1
def prepareFastaPAML(fast_input, phy_out, id_mapping_out):
    '''
     All three files are the directories to input and output file
    :param fast_input:
    :param phy_out:
    :param id_mapping_out:
    :return:
    '''
    ss0 = open(fast_input).readlines()
    OG_original = list(SeqIO.parse(fast_input, "fasta"))
    for x in OG_original:
        print(x.id, '==> length=', len(x.seq))
        num_code = len(x.seq)
    num_species = len(OG_original)
    # change the fasta file into the phy format
    first_line = str(num_species) + "  " + str(num_code) + "\n"
    ss0.insert(0, first_line)
    newfile = open(phy_out, "w")
    newfile2 = open(id_mapping_out, "w")
    id_mapping = {}

    i = 0
    for line in ss0:
        if ">" in line:
            i = i + 1
            old_id = line.replace(">", "").strip("\n")
            new_id = "seq" + str(i)
            id_conversion = new_id + "\t" + old_id + "\n"
            newline = new_id + "   " + "\n"
            newfile.write(newline)
            newfile2.write(id_conversion)
            print(i, newline)
            id_mapping[old_id] = new_id
        else:
            newfile.write(line)
    newfile.close()
    newfile2.close()

# an example
# ID = "OG5327_aligned_codon"
# infile = "/Users/luho/Documents/GitHub/proteinER/measuring_dNdS/" + ID + ".fasta"
# outfile2 = "/Users/luho/Documents/GitHub/proteinER/measuring_dNdS/" + ID + ".phy"
# outfile3 = "/Users/luho/Documents/GitHub/proteinER/measuring_dNdS/" + ID + "_id_mapping"
# prepareFastaPAML(fast_input=infile, phy_out=outfile2, id_mapping_out=outfile3)



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
    # read in the amino acid alignment file
    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        if "code_align" in i:
            infile = nuc_seq_file + i
            outfile2 = out_file + i.split(".")[0] + ".phy"
            outfile3 = out_file + i.split(".")[0] + "_id_mapping"
            print(infile, outfile2)
            prepareFastaPAML(fast_input=infile, phy_out=outfile2, id_mapping_out=outfile3)
    
        else: pass

    # to reduce the file number, here we will delete file not used in the followed analysis
    # only keep the file in phy format and id mapping
    all_file = os.listdir(out_file)
    for i in all_file:
        if "code_remove" in i:
            os.remove(out_file + i)
        else:
            pass

if __name__ == "__main__":
    main()

# usage
# the fasta file is stored in "cds_all"
# python remove_stop_codon_commond_line.py  -n /Users/luho/Documents/cds_all/ -o /Users/luho/Documents/cds_all0/
# python remove_stop_codon_commond_line.py  -h
