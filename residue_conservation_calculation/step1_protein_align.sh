#!/usr/bin/env bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1 
#SBATCH -n 20
#SBATCH -o domain.log
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=luho@chalmers.se

module load Anaconda3/2019.07

cd  /c3se/users/luho/Hebbe/protein_all/
for i in *_aa.fasta
do
    mafft --quiet $i > ${i%_aa.fasta}_aa_aligned.fasta &
done;
wait