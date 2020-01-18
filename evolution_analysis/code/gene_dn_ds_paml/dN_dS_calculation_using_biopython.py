# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# This script is used to calculate dN/dS of the paired sequences

from Bio.Align import MultipleSeqAlignment
from Bio.SeqRecord import SeqRecord
from Bio.Alphabet import IUPAC
from Bio.Seq import Seq
from Bio.codonalign.codonseq import _get_codon_list, CodonSeq, cal_dn_ds
from Bio.Align import MultipleSeqAlignment
from Bio.codonalign import build
from Bio import SeqIO, AlignIO
from Bio import codonalign
import os


# one simple example
seq1 = SeqRecord(Seq('TCAGGGACTGCGAGAACCAAGCTACTGCTGCTGCTGGCTGCGCTCTGCGCCGCAGGTGGGGCGCTGGAG', alphabet=IUPAC.IUPACUnambiguousDNA()), id='pro1')
seq2 = SeqRecord(Seq('TCAGGGACTTCGAGAACCAAGCGCTCCTGCTGCTGGCTGCGCTCGGCGCCGCAGGTGGAGCACTGGAG', alphabet=IUPAC.IUPACUnambiguousDNA()), id='pro2')
pro1 = SeqRecord(Seq('SGTARTKLLLLLAALCAAGGALE', alphabet=IUPAC.protein),id='pro1')
pro2 = SeqRecord(Seq('SGTSRTKRLLLLAALGAAGGALE', alphabet=IUPAC.protein),id='pro2')
aln = MultipleSeqAlignment([pro1, pro2])
codon_aln = build(aln, [seq1, seq2])
print(codon_aln)
dN, dS = cal_dn_ds(codon_aln[0], codon_aln[1], method='YN00')
dN, dS = cal_dn_ds(codon_aln[0], codon_aln[1], method='NG86')
dN, dS = cal_dn_ds(codon_aln[0], codon_aln[1], method='LWL85')
dN, dS = cal_dn_ds(codon_aln[0], codon_aln[1], method='ML')
print(dN, dS)






# test use the real data
nucl = SeqIO.parse('/home/luhongzhong/Documents/evolution_analysis/data/OG11073_code_after_align.fasta', 'fasta', alphabet=IUPAC.IUPACUnambiguousDNA())
prot = AlignIO.read('/home/luhongzhong/Documents/evolution_analysis/data/OG11073_aa_after_trim.fasta', 'fasta', alphabet=IUPAC.protein)

# establish the id mapping between the gene and the protein
#len(prot)
#prot[0].id

id_corr = {prot[i].id:prot[i].id for i in range(len(prot))}
aln = build(prot, nucl, corr_dict=id_corr, alphabet=codonalign.default_codon_alphabet)

# calculate dN dS using batch mode
refID_index = 108
aa1 = aln[refID_index]
all_result = {}
all_num = len(aln)
for i in range(all_num):
    if i != refID_index:
        aa2 = aln[i]
        combine = aa1.id + '@@' + aa2.id
        try:
            dN, dS = cal_dn_ds(aln[i], aln[refID_index], method='ML')
            print(i, '==>', dN / dS)
            result1 = [dN, dS]
            all_result[combine] = result1
        except KeyError:
            pass