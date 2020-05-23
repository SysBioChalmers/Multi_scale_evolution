#!/usr/bin/python

# Note
# This script is used to update the code sequence into the paml format for seq from 1011 sce genomes
# Also the gene id will be updated using a unified short name in the multtiple sequence alignment
# In each gene group, the each id is replaced by its related strain id

import os
from Bio import SeqIO
import argparse

## part1
def prepareFastaPAML(fast_input, phy_out):
    '''
     All three files are the directories to input and output file
    :param fast_input:
    :param phy_out:
    :param id_mapping_out:
    :return:
    '''
    
    # test
    #fast_input = "/media/luhongzhong/newdisk/Genomics_data/cds_all_refine_align/YPR204W.fasta"
    #phy_out = "/media/luhongzhong/newdisk/Genomics_data/cds_all_refine_align/YPR204W.phy"

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

    for line in ss0:
        if ">" in line:
            #print(line)
            old_id = line.replace(">", "").strip("\n")
            if "SACE" not in old_id:
                new_id = old_id.split("_")[0]
            else:
                new_id = old_id.split("_")[0] + "_" + old_id.split("_")[1]
            print(old_id, "====>", new_id)
            newline = new_id + "   " + "\n"
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
            description = 'Remove the stop code or "Y" letter in the code sequence.')
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
    #nuc_seq_file = "/media/luhongzhong/newdisk/Genomics_data/cds_align_macse_remove_stop_code/"
    #out_file = "/media/luhongzhong/newdisk/Genomics_data/cds_align_unify/"


    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        print(i)
        if ".fasta" in i:
            infile = nuc_seq_file + i
            outfile2 = out_file + i.split(".")[0] + ".phy"
            #outfile3 = out_file + i.split(".")[0] + "_id_mapping"
            print(infile, outfile2)
            prepareFastaPAML(fast_input=infile, phy_out=outfile2)
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
# python A7_prepare_code_for_paml_1011_sce.py -n /media/luhongzhong/newdisk/Genomics_data/cds_all_refine_align/  -o /media/luhongzhong/newdisk/Genomics_data/cds_all_refine_align/