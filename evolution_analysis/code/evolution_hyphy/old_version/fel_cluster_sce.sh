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
rm -rf /c3se/NOBACKUP/users/luho/sce_gene_fel_result
mkdir /c3se/NOBACKUP/users/luho/sce_gene_fel_result
cd /c3se/NOBACKUP/users/luho/cds_all_refine_align_sce


for i in *_code.fasta
do
	hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_all_refine_align_sce/$i --tree /c3se/NOBACKUP/users/luho/protein_all_align_tree/${i%_code.fasta}_aa_unroot.tre --srv No --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/sce_gene_fel_result/${i%_code.fasta}.FEL.json

done

