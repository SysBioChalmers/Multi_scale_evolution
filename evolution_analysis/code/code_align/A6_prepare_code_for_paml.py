#!/usr/bin/python

# Note
# This script is used to update the code sequence into the paml format
# Also the gene id will be updated using a unified short name in the multtiple sequence alignment

import os
from Bio import AlignIO, SeqIO
import pandas as pd
import argparse


## part1
def prepareFastaPAML(fast_input, phy_out, id_mapping0):
    '''
     All three files are the directories to input and output file
    :param fast_input:
    :param phy_out:
    :param id_mapping_out:
    :return:
    '''
    
    # test
    #fast_input = "/Users/luho/Documents/pan_genome/cds_all0/OG5328_code_align.fasta"
    #phy_out = "/Users/luho/Documents/pan_genome/cds_all0/OG5328_code_align.phy"

    ss0 = open(fast_input).readlines()
    OG_original = list(SeqIO.parse(fast_input, "fasta"))
    num_code = None
    for x in OG_original:
        print(x.id, '==> length=', len(x.seq))
        num_code = len(x.seq)
    num_species = len(OG_original)
    # change the fasta file into the phy format
    first_line = str(num_species) + "  " + str(num_code) + "\n"
    ss0.insert(0, first_line)
    newfile = open(phy_out, "w")
    #newfile2 = open(id_mapping_out, "w")
    #id_mapping = {}

    #i = 0
    for line in ss0:
        if ">" in line:
            #i = i + 1
            print(line)
            old_id = line.replace(">", "").strip("\n")
            #new_id = "seq" + str(i)
            #id_conversion = new_id + "\t" + old_id + "\n"
            new_id = id_mapping0[old_id]
            newline = new_id + "   " + "\n"
            newfile.write(newline)
            #newfile2.write(id_conversion)
            print(newline)
            #id_mapping[old_id] = new_id
        else:
            newfile.write(line)
    newfile.close()

'''
# an example
infile = "/home/luhongzhong/cds_all_refine_align/OG5327_code.fasta"
outfile2 = "/home/luhongzhong/cds_all_refine_align_unify/OG5327_code.phy"
outfile3 = "/home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt"
id_input = pd.read_csv(outfile3, sep=": ", header=None)
id_mapping1 = {v: k for k, v in zip(id_input.iloc[:, 0].tolist(), id_input.iloc[:, 1].tolist())}
prepareFastaPAML(fast_input=infile, phy_out=outfile2, id_mapping0=id_mapping1)
nuc_seq_file = "/home/luhongzhong/cds_all_refine_align"
all_ortholog0 = os.listdir(nuc_seq_file)
for i in all_ortholog0:
    print(i)
'''

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Remove the stop code or "Y" letter in the code sequence.')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input file which has unaligned/aligned nucleotide/codon sequence file')
    parser.add_argument('-id', metavar='input_file', type=str, help='input_the_id_mapping_file')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')
    args = parser.parse_args()
    #set up output file name if none is given
    if args.o is None:
        out_file = "data/"
    else:
        out_file = args.o

    nuc_seq_file = args.n

    # test
    #id_mapping_in = "/home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt"
    #nuc_seq_file = "/home/luhongzhong/cds_all_refine_align/"
    #out_file = "/home/luhongzhong/cds_all_refine_align_unify/"

    # read in the amino acid alignment file
    id_mapping_in =args.id
    id_input = pd.read_csv(id_mapping_in, sep=": ", header=None)
    id_mapping1 = {v: k for k, v in zip(id_input.iloc[:, 0].tolist(), id_input.iloc[:, 1].tolist())}

    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        print(i)
        if "_code.fasta" in i:
            infile = nuc_seq_file + i
            outfile2 = out_file + i.split(".")[0] + ".phy"
            #outfile3 = out_file + i.split(".")[0] + "_id_mapping"
            print(infile, outfile2)
            prepareFastaPAML(fast_input=infile, phy_out=outfile2, id_mapping0=id_mapping1)
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

# python A6_prepare_code_for_paml.py -n /home/luhongzhong/cds_all_refine_align_sce/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/cds_all_refine_align_sce_unify/

# python A6_prepare_code_for_paml.py -n /home/luhongzhong/cds_all_refine_align/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/cds_all_refine_align_unify/

