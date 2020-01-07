#!/usr/bin/python

from Bio import SeqIO
import os
import argparse
import pandas as pd

# set the directory
# os.chdir('/Users/luho/Documents/GitHub/proteinER/src')

## part1
## calculate the gap ratio from the multiple sequence alignment


def filteroriginal_pro(original_pro_input, OG_input, original_pro_output):
    original_pro = list(SeqIO.parse(original_pro_input, "fasta"))
    try:
        OG_trim = list(SeqIO.parse(OG_input, "fasta"))
        proteinID = []
        for record in OG_trim:
            print(record.id, len(list(record.seq)))
            proteinID.append(record.id)
        original_pro_new = []
        for original_pro0 in original_pro:
            print(original_pro0.id)
            if original_pro0.id in proteinID:
                original_pro_new.append(original_pro0)
        SeqIO.write(original_pro_new, original_pro_output, "fasta")
    except:
        pass
        print("No refined OG could be found!")



# for the batch process
# the aa file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Collect protein seq of high quality for each OG group')
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq before QC and QA')
    parser.add_argument('-p1', metavar = 'input_file', type = str, help = 'input the protein seq after QC and QA')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the new protein seq')
    # the newly added parameters
    parser.add_argument('-t', metavar='kind of refined protein align', type=str, help='check the format of protein after alignment')
    args = parser.parse_args()
    original_profile = args.p0
    profile = args.p1  # store the original_pro in phy format
    outfile = args.o # store the aa

    if args.t is None:
        align_type = "prune" # which means that the aligned protein was further pruned!!!
    else:
        align_type = args.t


    # for the test
    original_pro_list = os.listdir(original_profile)
    # for OGs contains sce
    og_sce_list = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/sce_gene_summary.xlsx")
    og_sce_list0 = og_sce_list["OrthologID"].tolist()

    for ele in original_pro_list:
        print(ele)
        #ele = "OG5327_aa_aligned.fasta"
        OG0 = ele.replace("_aa_aligned.fasta", "")
        if OG0 in og_sce_list0:
            original_pro0 = original_profile + ele
            #pro0 = profile + ele

            if align_type == "prune":
                pro0 = profile + ele.replace("aa_aligned.fasta", "aa_aligned.fasta_pruned.fa")
            else:
                pro0 = profile + ele

            output0 = outfile + ele
            try:
                filteroriginal_pro(original_pro_input=original_pro0, OG_input=pro0, original_pro_output=output0)
            except:
                pass
if __name__ == "__main__":
    main()

# an example
# python s6_collect_proteinID_high_quality_sce.py -p0 /home/luhongzhong/protein_all/ -p1 /home/luhongzhong/protein_all_align_s2_R/ -o /home/luhongzhong/protein_all_refine_sce/ -t unprune