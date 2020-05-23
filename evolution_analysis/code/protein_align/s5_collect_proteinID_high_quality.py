#!/usr/bin/python

# Collect the protein seq of high quality for each OG group, which will be use for the cds alignment.

from Bio import SeqIO
import os
import argparse


"""
cdssource2 = '/home/luhongzhong/protein_all_align/'
prosource1 = '/home/luhongzhong/protein_all_align_s2_R/'
outputfile = '/home/luhongzhong/protein_all_refine_align/'

fasta_input = cdssource2 + 'OG5327_aa_aligned.fasta'
OG_input = prosource1 + 'OG5327_aa_aligned_trim.fasta'
fasta_output = outputfile + 'OG5327_aa_aligned.fasta'
"""

def filterCDS(fasta_input, OG_input, fasta_output):
    cds = list(SeqIO.parse(fasta_input, "fasta"))
    try:
        OG_trim = list(SeqIO.parse(OG_input, "fasta"))
        proteinID = []
        for record in OG_trim:
            print(record.id, len(list(record.seq)))
            proteinID.append(record.id)
        fasta_new = []
        for cds0 in cds:
            print(cds0.id)
            if cds0.id in proteinID:
                fasta_new.append(cds0)
        SeqIO.write(fasta_new, fasta_output, "fasta")
    except:
        pass
        print("No refined OG could be found!")



# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Collect the protein seq of high quality for each OG group, which will be use for the cds alignment.')
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq alignment before trim')
    parser.add_argument('-p1', metavar = 'input_file', type=str, help = 'input the protein seq after trim')
    parser.add_argument('-o', metavar = 'output_file', type=str, help = 'output file to store the new protein seq')
    # the newly added parameters
    parser.add_argument('-t', metavar='kind of refined protein align', type=str, help='check the format of protein after alignment')

    args = parser.parse_args()
    fastafile = args.p0
    profile = args.p1
    outfile = args.o
    if args.t is None:
        align_type = "prune" # which means that the aligned protein was further pruned!!!
    else:
        align_type = args.t

    fasta_list = os.listdir(fastafile)
    for ele in fasta_list:
        print(ele)
        pro0 = fastafile + ele
        if align_type =="prune":
            pro1 = profile + ele.replace("aa_aligned.fasta", "aa_aligned.fasta_pruned.fa")
        else:
            pro1 = profile + ele
        output0 = outfile + ele
        try:
            filterCDS(fasta_input=pro0, OG_input=pro1, fasta_output=output0)
        except: pass
if __name__ == "__main__":
    main()

# an example
# others usage: to extract the original protein align based on the trimed remaining gene id
# python os.mkdir("/home/luhongzhong/protein_all_refine_align/")
# cd /home/luhongzhong/Documents/evolution_analysis/code/code_align
# python s5_collect_proteinID_high_quality.py -p0 /home/luhongzhong/protein_align/ -p1 /home/luhongzhong/protein_align_s2_R/ -o /home/luhongzhong/protein_refine_align/ -t unprune