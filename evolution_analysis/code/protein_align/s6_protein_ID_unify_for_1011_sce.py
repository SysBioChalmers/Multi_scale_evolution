#!/usr/bin/python

# Note
# This script is used to update the protein ID name for 1011 strains so it is consistent with that in the code seq

import os
import argparse

## part1
def prepareFastaPAML(fasta_input, fasta_out):
    '''
     All three files are the directories to input and output file
    :param fast_input:
    :param phy_out:
    :param id_mapping_out:
    :return:
    '''
    
    # test
    #fast_input = "/media/luhongzhong/newdisk/Genomics_data/protein_align_s2/YAL001C_aa_aligned.fasta"
    #phy_out = "/media/luhongzhong/newdisk/Genomics_data/protein_align_s2_ID_unify/YAL001C_aa_aligned.fasta"

    ss0 = open(fasta_input).readlines()
    newfile = open(fasta_out, "w")
    for line in ss0:
        if ">" in line:
            #print(line)
            old_id = line.replace(">", "").strip("\n")
            if "SACE" not in old_id:
                new_id = old_id.split("_")[0]
            else:
                new_id = old_id.split("_")[0] + "_" + old_id.split("_")[1]
            print(old_id, "====>", new_id)
            newline = ">" + new_id + "\n"
            newfile.write(newline)
            print(newline)

        else:
            newfile.write(line)
    newfile.close()



# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Unify the protein id name for 1011 sce proteins')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input file which has unaligned/aligned nucleotide/codon sequence file')
    #parser.add_argument('-id', metavar='input_file', type=str, help='input_the_id_mapping_file')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')
    args = parser.parse_args()
    #set up output file name if none is given
    if args.o is None:
        out_file = "data/"
    else:
        out_file = args.o

    nuc_seq_file = args.n

    # test
    #nuc_seq_file = "/home/luhongzhong/cds_all_refine_align/"
    #out_file = "/home/luhongzhong/cds_all_refine_align_unify/"


    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        print(i)
        if "_aa_aligned.fasta" in i:
            infile = nuc_seq_file + i
            outfile2 = out_file + i
            #outfile3 = out_file + i.split(".")[0] + "_id_mapping"
            print(infile, outfile2)
            prepareFastaPAML(fasta_input=infile, fasta_out=outfile2)
        else: pass
if __name__ == "__main__":
    main()

# usage
# the fasta file is stored in "cds_all"
# python s6_protein_ID_unify_for_1011_sce.py -n /media/luhongzhong/newdisk/Genomics_data/protein_align_s2/  -o /media/luhongzhong/newdisk/Genomics_data/protein_align_s2_ID_unify/
