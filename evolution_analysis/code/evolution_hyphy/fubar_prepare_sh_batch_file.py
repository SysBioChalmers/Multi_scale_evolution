# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import os

# on mac
data_dir = "/home/luhongzhong/ortholog_343/cds_align_unify/"
tree_dir = "/home/luhongzhong/ortholog_343/unroot_tree_unify/"

all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x and "FUBAR" not in x]

# test on the cluster
cluster_result = "/c3se/NOBACKUP/users/luho/fubar_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy fubar --alignment /c3se/NOBACKUP/users/luho/cds_align_unify/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree_unify/OG2049_aa_unroot.tre"
# remove unused file and compress the useful file
template1 = "rm OG2049_code.fasta.FUBAR.cache"


# prepare sh file0
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/fubar_cluster.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n" \
"" \
"cd /c3se/NOBACKUP/users/luho/cds_align_unify/\n"

newfile.writelines(start_part)

for i, cds in enumerate(all_file):
    print(i)
    tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
    #result_id = cds.replace("_code.fasta", ".FEL.json")
    out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id) + " \n" + \
           template1.replace("OG2049_code.fasta", cds) + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

newfile.write("wait" + "\n")
newfile.close()
