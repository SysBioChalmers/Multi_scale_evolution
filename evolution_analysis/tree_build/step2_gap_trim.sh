#!/usr/bin/env bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1 
#SBATCH -n 20
#SBATCH -o domain.log
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=luho@chalmers.se

module load Anaconda3/2019.07

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5324_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5324_aa_aligned_trim2.fasta -automated1 &

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5323_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5323_aa_aligned_trim2.fasta -automated1 &

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5322_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5322_aa_aligned_trim2.fasta -automated1 &

wait

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5327_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5327_aa_aligned_trim2.fasta -automated1 &

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5326_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5326_aa_aligned_trim2.fasta -automated1 &

trimal -in /c3se/users/luho/Hebbe/protein_align/OG5325_aa_aligned.fasta -out /c3se/users/luho/Hebbe/protein_align/OG5325_aa_aligned_trim2.fasta -automated1 &

wait