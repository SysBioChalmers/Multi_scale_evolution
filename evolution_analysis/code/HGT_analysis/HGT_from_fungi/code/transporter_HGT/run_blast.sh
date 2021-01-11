#!/usr/bin/env bash

diamond blastp --db /Users/leyu/Documents/Le/Databases/nr -q ./transporter_OG.fasta -o ./blastfile.txt -k 300 --outfmt 6 qseqid sseqid pident length evalue bitscore
