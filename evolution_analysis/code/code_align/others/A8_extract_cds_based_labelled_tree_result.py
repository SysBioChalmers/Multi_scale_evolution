#!/usr/bin/python

# Collect the cds based on the labelled tree as the minimum species number in the foreground is contained in the labelled tree.

from Bio import SeqIO
import os
import argparse
import shutil


#label_tree_file = "/home/luhongzhong/ortholog_343_methanol/unroot_tree_label_methanol/"
#all_cds_file = "/home/luhongzhong/ortholog_343_methanol/cds_refine/"
#new_file = "/home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/"
def filterCDSfromLabelledTree(label_tree_file, all_cds_file, new_file):
    all_tree = os.listdir(label_tree_file)
    OG_from_tree = [x.split("_aa")[0] + "_code.fasta" for x in all_tree]
    for i in OG_from_tree:
        print(i)
        if "OG" in i:
            shutil.copy(all_cds_file + i, new_file)


# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Collect the cds seq of high quality for each OG group')
    #adding arguments
    parser.add_argument('-t', metavar='input_file', type=str, help='input the labelled tree file')
    parser.add_argument('-c', metavar = 'input_file', type = str, help = 'input all the related cds file')
    parser.add_argument('-n', metavar = 'output_file', type = str, help = 'output file to store the cds file')

    args = parser.parse_args()
    treefile = args.t
    cdsfile = args.c  # store the cds in phy format
    outfile = args.n # store the code
    filterCDSfromLabelledTree(label_tree_file=treefile, all_cds_file=cdsfile, new_file=outfile)

if __name__ == "__main__":
    main()

# an example
# python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A8_extract_cds_based_labelled_tree_result.py -t /home/luhongzhong/ortholog_343_methanol/unroot_tree_label_methanol/ -c /home/luhongzhong/ortholog_343_methanol/cds_refine/ -n /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/