# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import os

data_dir = "/home/luhongzhong/ortholog_343/cds_align_unify"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]


outfile = "/home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/meme_cluster_new.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/meme_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy meme --alignment /c3se/NOBACKUP/users/luho/cds_align_unify/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree_unify/OG2049_aa_unroot.tre --pvalue 0.1"
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
"rm -rf /c3se/NOBACKUP/users/luho/meme_result\n" \
"mkdir /c3se/NOBACKUP/users/luho/meme_result\n" \
"cd /c3se/NOBACKUP/users/luho/cds_align_unify\n"

newfile.writelines(start_part)
for i, cds in enumerate(all_file):
    print(i)
    tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
    out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id) + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)
newfile.write("wait" + "\n")
newfile.close()