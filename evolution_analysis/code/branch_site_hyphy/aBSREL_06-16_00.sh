#!/bin/bash
#SBATCH -A C3SE2020-1-8
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 7-00:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end
module load GCC/8.3.0
module load CUDA/10.1.243
module load OpenMPI/3.1.4
wait
