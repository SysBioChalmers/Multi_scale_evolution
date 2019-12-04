#!/usr/bin/env bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1 
#SBATCH -n 20
#SBATCH -o domain.log
#SBATCH -t 2-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=luho@chalmers.se

cd /c3se/users/luho/Hebbe/protein_all
for i in *_aa_aligned.fasta
do
	cd /c3se/users/luho/Hebbe/conservation_code/
    python2 score_conservation.py  -g 0.3 -o /c3se/users/luho/Hebbe/result/${i%_aa_aligned.fasta}_conservation_score_jsd /c3se/users/luho/Hebbe/protein_all/$i &

done;
wait