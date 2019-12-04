#!/usr/bin/python

'''
This script takes in an amino acid multiple sequence alignment (MSA) in FASTA format and converts it to a nucleotide MSA in FASTA format. The outputted MSA will contain nucleotides while preserving the amino acid alignment. For example, if a site contains a column of 'I-K' (1 isoleucines, 1 gap, and 1 lysine), the outputted file will contain 'ATA---AAA' (1 codon for isoleucine, 1 gap, and 1 codon for lysine) at that site. The correct codon for each amino acid will be extracted from the original nucleotide MSA (`nuc_seq_file` in the script).

Author: Dariya K. Sydykova
'''

# load packages required to run this script
import argparse
import sys
from Bio import AlignIO
from Bio import SeqIO
from Bio.Align import Seq
from Bio.Align import MultipleSeqAlignment
from Bio.SeqRecord import SeqRecord
import os

# dictionary that stores codons and their respective amino acids
gencode = {
    'ATA':'I', 'ATC':'I', 'ATT':'I', 'ATG':'M',
    'ACA':'T', 'ACC':'T', 'ACG':'T', 'ACT':'T',
    'AAC':'N', 'AAT':'N', 'AAA':'K', 'AAG':'K',
    'AGC':'S', 'AGT':'S', 'AGA':'R', 'AGG':'R',
    'CTA':'L', 'CTC':'L', 'CTG':'L', 'CTT':'L',
    'CCA':'P', 'CCC':'P', 'CCG':'P', 'CCT':'P',
    'CAC':'H', 'CAT':'H', 'CAA':'Q', 'CAG':'Q',
    'CGA':'R', 'CGC':'R', 'CGG':'R', 'CGT':'R',
    'GTA':'V', 'GTC':'V', 'GTG':'V', 'GTT':'V',
    'GCA':'A', 'GCC':'A', 'GCG':'A', 'GCT':'A',
    'GAC':'D', 'GAT':'D', 'GAA':'E', 'GAG':'E',
    'GGA':'G', 'GGC':'G', 'GGG':'G', 'GGT':'G',
    'TCA':'S', 'TCC':'S', 'TCG':'S', 'TCT':'S',
    'TTC':'F', 'TTT':'F', 'TTA':'L', 'TTG':'L',
    'TAC':'Y', 'TAT':'Y', 'TAA':'_', 'TAG':'_',
    'TGC':'C', 'TGT':'C', 'TGA':'_', 'TGG':'W'} # RTT is found from the code seq

# this function translates an amino acid alignment into a nucleotide alignment while preserving an alignment of amino acids at each site
def back_translate(aa_aln, codon_dict, out_aln_file, gencode):
    new_codon_aln = [] # create an empty list to store new sequences
    for aa_seq in aa_aln: # iterate over sequences in the amino acid alignment
        new_codon_seq = "" # initialize an empty string to store the new back translated sequence

        # check if sequence ID from amino acid alignment is present in the codon sequence file
        if aa_seq.id in codon_dict:
            old_codon_rec=codon_dict[aa_seq.id] # if it is, get the codon sequence 
        else:
            print("Amino acid alignment sequence IDs do not match codon sequence IDs")
            sys.exit()
        
        # turn the codon sequence object into a string
        old_codon_seq=str(old_codon_rec.seq)
        # the followed line code is added by hongzhong as some seq could contain the lowcase letter
        old_codon_seq = old_codon_seq.upper()
        if "-" in old_codon_seq: # remove gaps if there are any
            old_codon_seq = old_codon_seq.replace("-","")
                    
        # set up a variable to count nucleotide position
        i = 0

        # loop over amino acids in a sequence
        for aa in aa_seq.seq: 
            # if there is a gap, change an amino acid gap to match a codon gap
            if aa == "-":
                new_codon_seq += "---"
            # else, get a codon that corresponds to the amino acid
            else: 
                codon = old_codon_seq[i:i+3]
                
                # use the genetic code to check that a given codon belongs to its amino acid
                if gencode[codon] != aa:
                    print('codon does not match the aa')
                    sys.exit()
                # add the codon to the back translated sequence if it belongs to the correct amino acid
                else:
                    new_codon_seq += codon
                
                # increment the counter by 3
                i+=3
        
        # add back translated sequence to a new nucleotide MSA
        codon_seq=Seq(new_codon_seq) # turn back translate sequence string into a Seq object
        codon_seq_rec = SeqRecord(codon_seq) # create a SeqRecord object from Seq
        codon_seq_rec.id = aa_seq.id # set SeqRecord.id to be printed in the new fasta file
        codon_seq_rec.description = '' # set SeqRecord.description to an empty string to avoid <unknown description> being printed in the new fasta file 
        new_codon_aln.append(codon_seq_rec) # add a new codon sequence to the list
    
    new_codon_msa = MultipleSeqAlignment(new_codon_aln) # create an MSA object
    AlignIO.write(new_codon_msa, out_aln_file, "fasta") # write a new alignment

def main():
    '''
    Back translate aligned amino acid sequences to nucleotide sequences while maintaining the alignment
    '''
    #creating a parser
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Translate amino acid sequences into nucleotide sequences while maintaining the amino acid alignment and the order of sequences.')
    #adding arguments 
    
    parser.add_argument('-n', metavar = '<nuc_aln.fasta>', type = str, help = 'input unaligned/aligned nucleotide/codon sequence file')
    parser.add_argument('-a', metavar = '<aa_aln.fasta>', type = str, help = 'input amino acid alignment file')
    parser.add_argument('-o', metavar = '<codon_aln.fasta>', type = str, help = 'output codon alignment file') 
    args = parser.parse_args()
    
    #set up output file name if none is given
    if args.o is None:
        out_file = "data/"
    else:
        out_file = args.o
    

    # store inputted arguments as variables
    nuc_seq_file = args.n
    aa_aln_file = args.a
    all_ortholog = os.listdir(nuc_seq_file)
    for i in all_ortholog:
        print(i)
        if "OG" in i:
            #infile = nuc_seq_file + i
            infile_code = aa_aln_file  + i.split("_")[0] + "_code_remove_stop.fasta"
            infile_aa =  aa_aln_file  + i.split("_")[0] + ".aligned.fasta"
            outfile = out_file + i.split("_")[0] + "_aligned_codon.fasta"
            # read in the amino acid alignment file
            aa_aln = AlignIO.read(infile_aa, "fasta") 
            nuc_seq = open(infile_code) #read in codon file
            codon_dict = SeqIO.to_dict(SeqIO.parse(nuc_seq, "fasta")) #read in codon sequence file as a dictionary, key=sequence ID, value=sequence itself
            back_translate(aa_aln, codon_dict, outfile, gencode)
        else:
            pass

if __name__ == "__main__":
    main()




