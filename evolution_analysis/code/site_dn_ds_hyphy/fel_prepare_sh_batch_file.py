# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# note: the script is updated on MAC
import os

data_dir = "/home/luhongzhong/ortholog_343/cds_align_unify"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]


outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_hyphy/fel_cluster.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/fel_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_unify"
template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_unify/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree_unify/OG2049_aa_unroot.tre --srv No --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
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
"rm -rf /c3se/NOBACKUP/users/luho/fel_result\n" \
"mkdir /c3se/NOBACKUP/users/luho/fel_result\n" \
"cd /c3se/NOBACKUP/users/luho/cds_align_unify\n"

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







# produce the sh file on mac for all cds files
data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]

# divide files into three part
all_file1 = all_file[0:1130]
all_file2 = all_file[1130:2260]
all_file3 = all_file[2260:]

# batch1
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/fel_cluster_1.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/fel_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code"
template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
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

# batch2
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/fel_cluster_2.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/fel_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code"
template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
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


# batch3
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/fel_cluster_3.sh"
cluster_result = "/c3se/NOBACKUP/users/luho/fel_result"
cluster_input ="/c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code"
template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
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









# 02-18
# produce the sh file on mac for all cds files
data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code"
result_file = "/Users/luho/Documents/fel_result"

all_file0 = os.listdir(data_dir)
all_file0 = [x for x in all_file0 if "_code" in x]
all_result = os.listdir(result_file)
all_result = [x.replace(".FEL.json","_code.fasta") for x in all_result]
all_file = list(set(all_file0)-set(all_result))

# divide files into three part
all_file1 = all_file[0:501]
all_file2 = all_file[501:1001]
all_file3 = all_file[1001:]

def produceFel_batch(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
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
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
        result_id = cds.replace("_code.fasta", ".FEL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id).replace(
            'OG2049.FEL.json', result_id) + " & \n"
        print(out1)
        if (i + 1) % 20 == 0:
            newfile.write(out1)
            newfile.write("wait" + "\n")
        else:
            newfile.write(out1)
    newfile.write("wait" + "\n")
    newfile.close()

# divide all the file into part
import numpy
l = numpy.array_split(numpy.array(all_file),10)
file_name = ["fel_cluster_batch" + str(i) + ".sh" for i in range(10)]
for row, out in zip(l,file_name):
    print(row, out)
    s0 = row
    s1= [x.replace("\n","") for x in s0]
    produceFel_batch(OG_list=s1, out_sh_file=out)