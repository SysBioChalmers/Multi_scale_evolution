#!/bin/bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 50:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end

chmod u+x step1_protein_align.sh
./step1_protein_align.sh

chmod u+x step2_conservation_score_jds.sh
./step2_conservation_score_jds.sh
