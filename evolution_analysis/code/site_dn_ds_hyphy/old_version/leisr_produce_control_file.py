#!/usr/bin/python

# Note
# This script is used to produce the control file for the leisr function

import os
import argparse


def prepareSiteFile(fast_input,tree_input,site_model):
    """
    # for the test
    # fast_input = "/home/luhongzhong/protein_all_refine_align_sce/OG5327_aa_aligned.fasta"
    # tree_input = "/home/luhongzhong/protein_all_align_tree/OG5327_aa.tre"
    # site_model = "/home/luhongzhong/Documents/evolution_analysis/hyphy_model/"
    """

    model_type = os.listdir(site_model)
    model_type = [x for x in model_type if "runLEISR0.bf" in x]
    for x in model_type:
        print(x)
        # test
        if x =="runLEISR0.bf":  # there is another file "._runLEISR0.bf" in the directory
            model_dir = site_model + x
            model_inf = open(model_dir).readlines()
            model_inf[13] = model_inf[13].replace("fasta", fast_input)
            model_inf[14] = model_inf[14].replace("tree", tree_input)
            try:
                os.remove(site_model + x.split(".")[0] + "_test.bf")  # remove the old files
            except:
                pass
            new_codefile = open(site_model + x.split(".")[0] + "_test.bf", "w")
            new_codefile.writelines(model_inf)
            new_codefile.close()

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-p', metavar = 'input_file', type = str, help = 'input the protein sequence file')
    parser.add_argument('-t', metavar = 'input_file', type = str, help = 'input the tree file')
    parser.add_argument('-c', metavar = 'output_file', type = str, help = 'output file to store code')
    #parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    cdsfile = args.p  # store the cds in phy format
    treefile = args.t
    codefile = args.c # store the code
    #resultfile = args.o  # store the result
    prepareSiteFile(fast_input=cdsfile,tree_input=treefile,site_model=codefile)
if __name__ == "__main__":
    main()

# an example
# python B1_produce_control_file_in_batch.py -n /Users/luho/Documents/PAML/data/Example2.pml -t /Users/luho/Documents/PAML/data/Example2.tree -c /Users/luho/Documents/PAML/site_model/
# python B1_produce_control_file_in_batch.py -n /Users/luho/Documents/PAML/data/Example2.pml -t /Users/luho/Documents/PAML/data/Example2.tree -c /Users/luho/Documents/PAML/site_model/
