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







# produce the sh file on mac for all cds files
data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code"

all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]
# divide files into three part
all_file1 = all_file[0:1130]
all_file2 = all_file[1130:2260]
all_file3 = all_file[2260:]

#batch1
outfile = "/Users/luho/Documents/evolution_analysis/code/evolution_hyphy/meme_cluster_1.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/meme_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy meme --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --pvalue 0.1"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 2-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"

newfile.writelines(start_part)
for i, cds in enumerate(all_file1):
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



#batch2
outfile = "/Users/luho/Documents/evolution_analysis/code/evolution_hyphy/meme_cluster_2.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/meme_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy meme --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --pvalue 0.1"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 2-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"

newfile.writelines(start_part)
for i, cds in enumerate(all_file2):
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



#batch3
outfile = "/Users/luho/Documents/evolution_analysis/code/evolution_hyphy/meme_cluster_3.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/meme_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy meme --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --pvalue 0.1"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 2-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"

newfile.writelines(start_part)
for i, cds in enumerate(all_file3):
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