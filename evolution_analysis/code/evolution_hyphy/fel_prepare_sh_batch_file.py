# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import os

data_dir = "/home/luhongzhong/cds_all_refine_align_sce"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]

outfile = "/home/luhongzhong/Documents/evolution_analysis/code/evolution_hyphy/fel_cluster_new.sh"

cluster_result = "/c3se/NOBACKUP/users/luho/sce_gene_fel_result"

cluster_input ="/c3se/NOBACKUP/users/luho/cds_all_refine_align_sce"

template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_all_refine_align_sce/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/protein_all_align_tree/OG2049_aa_unroot.tre --srv No --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/sce_gene_fel_result/OG2049.FEL.json"

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
"rm -rf /c3se/NOBACKUP/users/luho/sce_gene_fel_result\n" \
"mkdir /c3se/NOBACKUP/users/luho/sce_gene_fel_result\n" \
"cd /c3se/NOBACKUP/users/luho/cds_all_refine_align_sce\n"

newfile.writelines(start_part)

for i, cds in enumerate(all_file):
    print(i)
    tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
    result_id = cds.replace("_code.fasta", ".FEL.json")
    out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id).replace('OG2049.FEL.json', result_id) + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

newfile.write("wait" + "\n")
newfile.close()