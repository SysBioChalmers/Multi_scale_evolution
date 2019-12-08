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


cd /c3se/users/luho/Hebbe/gene_dn_ds
rm -rf paml_yn00
rm -rf paml_result

mkdir paml_yn00
mkdir paml_result
python G1_produce_control_file.py  -n /c3se/users/luho/Hebbe/cds_all0/ -c /c3se/users/luho/Hebbe/gene_dn_ds/paml_yn00/ -o /c3se/users/luho/Hebbe/gene_dn_ds/paml_result/

chmod u+x G2_yn00_batch_cluster.sh
./G2_yn00_batch_cluster.sh