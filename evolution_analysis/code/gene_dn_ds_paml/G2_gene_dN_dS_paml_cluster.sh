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

cd /c3se/NOBACKUP/users/luho/cds_align
for i in *_code.phy
do
	python /c3se/users/luho/Hebbe/evolution_analysis/code/gene_dn_ds_paml/G1_produce_control_file.py -n /c3se/NOBACKUP/users/luho/cds_align/$i -c /c3se/users/luho/Hebbe/evolution_analysis/paml_model/yn00_model/ -o /c3se/NOBACKUP/users/luho/gene_dN_dS_result/${i%_code.phy}.out
	yn00 /c3se/users/luho/Hebbe/evolution_analysis/paml_model/yn00_model/yn00/codeml_test.ctl
done
