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

cd /c3se/users/luho/Hebbe/
rm -rf cds_all0
mkdir cds_all0
cd /c3se/users/luho/Hebbe/gene_dn_ds

python A5_remove_stop_codon_commond_line.py  -n /c3se/users/luho/Hebbe/cds_all_test/ -o /c3se/users/luho/Hebbe/cds_all0/

python A2_translate_aln_codon_to_aa.py  -n /c3se/users/luho/Hebbe/cds_all0/ -o /c3se/users/luho/Hebbe/cds_all0/

chmod u+x A3_mafft_batch_cluster.sh
./A3_mafft_batch_cluster.sh

cd /c3se/users/luho/Hebbe/gene_dn_ds

chmod u+x A4_code_align_cluster.sh
./A4_code_align_cluster.sh

cd /c3se/users/luho/Hebbe/gene_dn_ds
python A5_prepare_code_in_phy.py  -n /c3se/users/luho/Hebbe/cds_all0/ -o /c3se/users/luho/Hebbe/cds_all0/