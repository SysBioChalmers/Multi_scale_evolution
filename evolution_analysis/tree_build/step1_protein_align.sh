#!/usr/bin/env bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1 
#SBATCH -n 20
#SBATCH -o domain.log
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=luho@chalmers.se

module load Anaconda3/2019.07

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5324_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5324_aa_aligned.fasta &

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5323_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5323_aa_aligned.fasta &

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5322_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5322_aa_aligned.fasta &

wait

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5327_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5327_aa_aligned.fasta &

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5326_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5326_aa_aligned.fasta&

mafft --auto --inputorder /c3se/users/luho/Hebbe/protein_all/OG5325_aa.fasta > /c3se/users/luho/Hebbe/protein_align/OG5325_aa_aligned.fasta &

wait