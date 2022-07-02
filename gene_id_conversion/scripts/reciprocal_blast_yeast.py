#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2019-02-19


import os
import json
import numpy as np
import pandas as pd
# Import Biopython tools for running local BLASTX
from Bio.Blast.Applications import NcbiblastpCommandline


def create_blast_command(strain) :

    file1 = os.path.join("../fasta/", "%s_query.fasta" % strain)
    file2 = os.path.join("../fasta/", "%s_ref.fasta" % strain)

    fwd_out = os.path.join("../blast/", "%s_fwd.tab" % strain)
    rev_out = os.path.join("../blast/", "%s_rev.tab" % strain)

    # file1 = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_query.fasta")
    # file2 = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_ref.fasta")

    # fwd_out = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_fwd.tab")
    # rev_out = os.path.join("../Data/reciprocal_blast/", "Candida_albicans_rev.tab")

    # Create BLAST command-lines for forward and reverse BLAST searches
    # blastp -out ../Data/reciprocal_blast/Candida_albicans_fwd.tab -outfmt "6 qseqid sseqid pident qcovs qlen slen length bitscore evalue" 
    # -query ../Data/reciprocal_blast/Candida_albicans_query.fasta -max_target_seqs 1 -subject ../Data/reciprocal_blast/Candida_albicans_ref.fasta
    fwd_blastp = NcbiblastpCommandline(query=file1, subject=file2, out=fwd_out,
                                       outfmt="6 qseqid sseqid pident qcovs qlen slen length bitscore evalue",
                                       max_target_seqs=3)

    rev_blastp = NcbiblastpCommandline(query=file2, subject=file1, out=rev_out,
                                       outfmt="6 qseqid sseqid pident qcovs qlen slen length bitscore evalue",
                                       max_target_seqs=3)

    # Inspect command-lines
    print("FORWARD: %s" % fwd_blastp)
    print("REVERSE: %s" % rev_blastp)
    os.system(str(fwd_blastp))
    os.system(str(rev_blastp))

    return fwd_blastp, rev_blastp


if __name__ == "__main__" :
    filenames = os.listdir('../fasta')
    for filename in filenames :
        if filename.endswith('ref.fasta') :
            strain = filename[:-10]
            # print(strain)
            create_blast_command(strain)


