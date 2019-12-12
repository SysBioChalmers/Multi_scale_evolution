#!/bin/bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 50:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end

cd /c3se/users/luho/Hebbe/protein_all
for i in *_aa.fasta
do
    mafft --quiet $i > ${i%_aa.fasta}_aa_aligned.fasta
done