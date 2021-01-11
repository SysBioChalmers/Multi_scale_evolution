#!/usr/bin/env python
# -*- coding: utf-8 -*-

Step1 : Run NCBI BLAST (BLASTp) against the NCBI's non-redundant (nr) protein sequences database 
for a specific protein of interest or a whole set of protein sequences

Basic database:
# https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins

We can set how many hits we want to find, default value is 100

Resuts:
a text file, including subject number, identity, alignment length, mismatches, gap opens, 
q. start, q. end, s. start, s. end, evalue, bit score, % positives