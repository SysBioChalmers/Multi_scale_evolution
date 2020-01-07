# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import os

data_dir = "/home/luhongzhong/ortholog_sce/protein_refine"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_aa" in x]
all_file = [x for x in all_file if "json" not in x]

outfile = "/home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/leisr_cluster_new.sh"
#cluster_input ="/cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/leisr_bf/"
template0 = "hyphy /cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/leisr_bf/"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"

newfile.writelines(start_part)

for i, cds in enumerate(all_file):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

newfile.write("wait" + "\n")
newfile.close()






# for the second batch
# first check which fasta file did not have the result
leisr_result_file = "/home/luhongzhong/Documents/cluster_result/protein_all_refine_align_sce/"
all_file0 = os.listdir(leisr_result_file)
data_file = [x for x in all_file0 if "LEISR" not in x]
result_file = [x for x in all_file0 if "LEISR" in x]
data_element = [x.split("_aa_")[0] for x in data_file]
result_element = [x.split("_aa_")[0] for x in result_file]
fasta_without_result = list(set(data_element)-set(result_element))
fasta_without_result = [x for x in fasta_without_result if "OG" in x]
fasta_without_result0 = [x+"_aa_aligned.fasta" for x in fasta_without_result]
fasta_without_result0 =[x for x in fasta_without_result0 if "errors" not in x]

# the followed code will be changed into a function
# produce a new sh file
all_file = fasta_without_result0
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/leisr_cluster_new1.sh"
#cluster_input ="/cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/leisr_bf/"
template0 = "hyphy /cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/leisr_bf/"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"

newfile.writelines(start_part)

for i, cds in enumerate(all_file):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

newfile.write("wait" + "\n")
newfile.close()