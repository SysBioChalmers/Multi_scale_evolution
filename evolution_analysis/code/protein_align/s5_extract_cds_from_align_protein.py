#!/usr/bin/python

from Bio import SeqIO
import os
import argparse

# set the directory
# os.chdir('/Users/luho/Documents/GitHub/proteinER/src')

## part1
## calculate the gap ratio from the multiple sequence alignment
'''
prosource1 = '/home/luhongzhong/protein_all_align_s2_R/'
cdssource2 = '/home/luhongzhong/cds_all/'
outputfile = '/home/luhongzhong/cds_all_refine/'

file1 = prosource1 + 'OG5327_aa_aligned_trim.fasta'
file2 = cdssource2 + 'OG5327_code.fasta'
file3 = outputfile + 'OG5327_code.fasta'
'''

def filterCDS(cds_input, OG_input, cds_output):
    cds = list(SeqIO.parse(cds_input, "fasta"))
    try:
        OG_trim = list(SeqIO.parse(OG_input, "fasta"))
        proteinID = []
        for record in OG_trim:
            print(record.id, len(list(record.seq)))
            proteinID.append(record.id)
        cds_new = []
        for cds0 in cds:
            print(cds0.id)
            if cds0.id in proteinID:
                cds_new.append(cds0)
        SeqIO.write(cds_new, cds_output, "fasta")
    except:
        pass
        print("No refined OG could be found!")



# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-n', metavar='input_file', type=str, help='input the cds seq before trim')
    parser.add_argument('-p1', metavar = 'input_file', type = str, help = 'input the protein seq before trim')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the new protein seq')
    #parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    cdsfile = args.n
    profile = args.p1  # store the cds in phy format
    outfile = args.o # store the code
    # for the test
    cds_list = os.listdir(cdsfile)
    for ele in cds_list:
        print(ele)
        cds0 = cdsfile + ele
        pro0 = profile + ele.replace("code", "aa_aligned_trim")
        output0 = outfile + ele
        try:
            filterCDS(cds_input=cds0, OG_input=pro0, cds_output=output0)
        except: pass
if __name__ == "__main__":
    main()

# an example
# python s5_extract_cds_from_align_protein.py -n /home/luhongzhong/cds_all/ -p1 /home/luhongzhong/protein_all_align_s2_R/ -o /home/luhongzhong/cds_all_refine/