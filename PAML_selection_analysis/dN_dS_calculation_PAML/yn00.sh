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

rm -rf cds_all0
mkdir cds_all0
cd /c3se/users/luho/Hebbe/data_prepare_PAML

python 1_remove_stop_codon_commond_line.py  -n /c3se/users/luho/Hebbe/cds_all_test/ -o /c3se/users/luho/Hebbe/cds_all0/

python 2_translate_aln_codon_to_aa.py  -n /c3se/users/luho/Hebbe/cds_all0/ -o /c3se/users/luho/Hebbe/cds_all0/

chmod u+x 3_mafft_batch_cluster.sh
./3_mafft_batch_cluster.sh

chmod u+x 4_code_align_cluster.sh
./4_code_align_cluster.sh

python 5_prepare_code_in_phy.py  -n /c3se/users/luho/Hebbe/cds_all0/ -o /c3se/users/luho/Hebbe/cds_all0/

mkdir paml_yn00
mkdir paml_result
python 6_produce_control_file.py  -n /c3se/users/luho/Hebbe/cds_all0/ -c /c3se/users/luho/Hebbe/data_prepare_PAML/paml_yn00/ -o /c3se/users/luho/Hebbe/data_prepare_PAML/paml_result/

chmod u+x 7_yn00_batch_cluster.sh
./7_yn00_batch_cluster.sh