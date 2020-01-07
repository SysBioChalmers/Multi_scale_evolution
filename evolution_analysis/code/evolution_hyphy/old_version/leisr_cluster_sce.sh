#!/bin/bash
#SBATCH -A C3SE2019-1-18
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 50:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end

module load intel/2016b Python/3.5.2
module load Biopython/1.68-Python-3.5.2
module load Java/11.0.2

cd /c3se/NOBACKUP/users/luho/protein_all_refine_align_sce
for i in *_aa_aligned.fasta
do
	python /c3se/users/luho/Hebbe/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -p /c3se/NOBACKUP/users/luho/protein_all_refine_align_sce/$i -t /c3se/NOBACKUP/users/luho/protein_all_align_tree/${i%_aa_aligned.fasta}_aa_unroot.tre -c  /c3se/users/luho/Hebbe/evolution_analysis/hyphy_model/
	hyphy /c3se/users/luho/Hebbe/evolution_analysis/hyphy_model/runLEISR0_test.bf
done

# test
# python /c3se/users/luho/Hebbe/evolution_analysis/code/evolution_hyphy/leisr_produce_control_file.py -n /c3se/NOBACKUP/users/luho/protein_all_refine_align_sce/OG5327_aa_aligned.fasta -t /c3se/NOBACKUP/users/luho/protein_all_align_tree/OG5327_aa.tre -c  /c3se/users/luho/Hebbe/evolution_analysis/hyphy_model/


