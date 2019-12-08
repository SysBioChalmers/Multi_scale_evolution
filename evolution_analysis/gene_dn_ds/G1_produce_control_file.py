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
def prepareControlFile(fast_input, code_out, result_out):
    all_file0 = os.listdir(fast_input)
    phy_file = [x for x in all_file0 if "phy" in x]
    for i in phy_file:
        s = i.split("_")[0]
        print(s)
        out_code = open(code_out + "yn00_" + s + ".ctl", "w")
        dir0 = "seqfile = " + fast_input + i + "\n"
        dir1 = "outfile = " + result_out + s + "_yn00.out" + "\n"
        others = "verbose = 1\nicode = 0\nweighting = 0\ncommonf3x4 = 0\nndata = 1\n"
        output_txt = dir0 + dir1 + others
        out_code.writelines(output_txt)
        out_code.close()

"""
# an example
infile = "/Users/luho/Documents/cds_all0/" # store the cds in phy format
codefile = "/Users/luho/Documents/paml_yn00/" # store the code
outfile = "/Users/luho/Documents/paml_result/" # store the result
prepareControlFile(fast_input=infile, code_out=codefile, result_out=outfile)
"""



# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Remove the stop code or "Y" letter in the code sequence.')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input file which has unaligned/aligned nucleotide/codon sequence file')
    parser.add_argument('-c', metavar = 'output_file', type = str, help = 'output file to store the result')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    infile = args.n  # store the cds in phy format
    codefile = args.c # store the code
    outfile = args.o  # store the result
    prepareControlFile(fast_input=infile, code_out=codefile, result_out=outfile)
if __name__ == "__main__":
    main()