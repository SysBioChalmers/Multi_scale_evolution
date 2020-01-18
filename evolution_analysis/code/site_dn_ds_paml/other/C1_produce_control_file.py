#!/usr/bin/python

# Note
# This script is used to remove the stop codon and the sequence contains letter "Y"
# In the initial method, we just remove the sequence contains letter "Y"
# This may be not the best option to handle it.
# For the example of "OG5327", one seq contains letter "Y", so we remove it.
# The script will be changed as a function.

import os
import argparse
## part1
#ef prepareControlFile(fast_input, tree_input, code_out, result_out, site_model):
    # for the test
#fast_input = "/Users/luho/Documents/PAML/data/Example2.pml"
#tree_input = "/Users/luho/Documents/PAML/data/Example2.tree"
#site_model = "/Users/luho/Documents/PAML/site_model/"
#result_out = "/Users/luho/Documents/paml_result/Example2_out"

def prepareSiteFile(fast_input,tree_input,site_model, result_out):
    model_type = os.listdir(site_model)
    model_type = [x for x in model_type if "_" not in x]
    for x in model_type:
        print(x)
        # test
        # x = "M2a"
        model_dir = site_model + x + "/" + "codeml.ctl0"
        model_inf = open(model_dir).readlines()
        model_inf[0] = "      seqfile = " + fast_input + "\n"
        model_inf[1] = "     treefile = " + tree_input + "\n"
        model_inf[2] = "      outfile = " + result_out + "_" + x + "\n"
        try:
            os.remove(site_model + x + "/" + "codeml_test.ctl") # remove the old files
        except: pass
        new_codefile = open(site_model + x + "/" + "codeml_test.ctl", "w")
        new_codefile.writelines(model_inf)
        new_codefile.close()

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input the codon sequence file')
    parser.add_argument('-t', metavar = 'input_file', type = str, help = 'input the tree file')
    parser.add_argument('-c', metavar = 'output_file', type = str, help = 'output file to store code')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    cdsfile = args.n  # store the cds in phy format
    treefile = args.t
    codefile = args.c # store the code
    resultfile = args.o  # store the result
    prepareSiteFile(fast_input=cdsfile,tree_input=treefile,site_model=codefile, result_out=resultfile)
if __name__ == "__main__":
    main()

# an example
# python C1_produce_control_file.py -n /Users/luho/Documents/PAML/data/Example2.pml -t /Users/luho/Documents/PAML/data/Example2.tree -c /Users/luho/Documents/PAML/site_model/ -o /Users/luho/Documents/paml_result/Example2_out
