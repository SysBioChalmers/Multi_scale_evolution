# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# note: the script is updated on MAC

# 03-07
# produce the sh file on mac for all cds files

from Bio import SeqIO
import os
import numpy as np
import pandas as pd

data_dir = "/Users/luho/Documents/branch_site_heat_2nd/cds_align_guidance_new/"
result_file = "/Users/luho/Documents/branch_site_heat_2nd/absrel_result"
tree_dir ="/Users/luho/Documents/branch_site_heat_2nd/cds_align_guidance_new_tree_unroot_label/"

all_file0 = os.listdir(data_dir)
all_file0 = [x for x in all_file0 if "_code" in x]
tree_file = os.listdir(tree_dir)
tree_file = [x.replace("_aa_unroot_LABEL.tre","_code.fasta") for x in tree_file]
# remove code fast file without tree file
all_file0 = [x for x in all_file0 if x in tree_file]


all_result = os.listdir(result_file)
all_result = [x.replace(".ABSREL.json","_code.fasta") for x in all_result]
all_file = list(set(all_file0)-set(all_result))


"""
# here we will only choose some key OGs which related to heat
# the OG is choosed based on sce
OG_interest = pd.read_csv("/Users/luho/Documents/branch_site_heat_2nd/enzyme_need_analysis_for_heat.csv")
OG_interest0 = OG_interest["OG"].tolist()
OG_interest1 = [x+"_code.fasta" for x in OG_interest0 if x is not np.nan]
# update all_file
all_file = list(set(all_file) - set(OG_interest1))"""


# here we will calculate the seq number from each ortholog group
seq_num = []
for file in all_file:
    print(file)
    input_og = data_dir + file
    ID_list = []
    records = list(SeqIO.parse(input_og, "fasta"))
    for seq in records:
        print(seq.id)
        ID_list.append(seq.id)
    seq_num.append(len(ID_list))


def produceaBSREL_linux_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/branch_site_hyphy/" + out_sh_file
    template0 = "mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new/OG2049_code.fasta --tree /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree_unroot_label/OG2049_aa_unroot_LABEL.tre --branches Foreground --output /home/luhongzhong/ortholog_343_methanol/absrel_result/OG2049.ABSREL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n"
    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot_LABEL.tre")
        result_id = cds.replace("_code.fasta", ".ABSREL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace(
            'OG2049.ABSREL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()


def produceaBSREL_cluster_parallel_le(OG_list, out_sh_file, parallel=5):
    outfile = "/Users/luho/Documents/evolution_analysis/code/branch_site_hyphy/" + out_sh_file
    template0 = "mpirun -np 20 HYPHYMPI LIBPATH=/c3se/users/leyu/Vera/hyphy/res/ /c3se/users/leyu/Vera/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /c3se/users/leyu/Vera/cds_align_guidance_new/OG2049_code.fasta --tree /c3se/users/leyu/Vera/cds_align_guidance_new_tree_unroot_label/OG2049_aa_unroot_LABEL.tre --branches Foreground --output /c3se/users/leyu/Vera/absrel_result/OG2049.ABSREL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n" \
                 "#SBATCH -A C3SE2020-1-16\n" \
                 "#SBATCH -N 1\n#SBATCH -n 20\n" \
                 "#SBATCH -o out.txt\n" \
                 "#SBATCH -t 7-00:00:00\n" \
                 "#SBATCH --mail-user=leyu@chalmers.se\n" \
                 "#SBATCH --mail-type=end\n" \
                 "module load GCC/8.3.0\n" \
                 "module load CUDA/10.1.243\n" \
                 "module load OpenMPI/3.1.4\n"

    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot_LABEL.tre")
        result_id = cds.replace("_code.fasta", ".ABSREL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace('OG2049.ABSREL.json', result_id) + " & \n"
        print(out1)
        if (i + 1) % parallel == 0:
            newfile.write(out1)
            newfile.write("wait" + "\n")
        else:
            newfile.write(out1)
    newfile.write("wait" + "\n")
    newfile.close()


def produceaBSREL_cluster_parallel_lu(OG_list, out_sh_file, parallel=6):
    outfile = "/Users/luho/Documents/evolution_analysis/code/branch_site_hyphy/" + out_sh_file
    template0 = "mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2049_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2049_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2049.ABSREL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n" \
                 "#SBATCH -A C3SE2020-1-8\n" \
                 "#SBATCH -N 1\n#SBATCH -n 20\n" \
                 "#SBATCH -o out.txt\n" \
                 "#SBATCH -t 3-00:00:00\n" \
                 "#SBATCH --mail-user=luho@chalmers.se\n" \
                 "#SBATCH --mail-type=end\n" \
                 "module load GCC/8.3.0\n" \
                 "module load CUDA/10.1.243\n" \
                 "module load OpenMPI/3.1.4\n"

    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot_LABEL.tre")
        result_id = cds.replace("_code.fasta", ".ABSREL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace('OG2049.ABSREL.json', result_id) + " & \n"
        print(out1)
        if (i + 1) % parallel == 0:
            newfile.write(out1)
            newfile.write("wait" + "\n")
        else:
            newfile.write(out1)
    newfile.write("wait" + "\n")
    newfile.close()


# divide all the file into 10 parts automatically
# divide files manually into three part
all_file0 = [x for x, y in zip(all_file, seq_num) if y >= 0 and y < 10]

all_file1 = [x for x, y in zip(all_file, seq_num) if y >= 10 and y < 20]
all_file2 = [x for x, y in zip(all_file, seq_num) if y >= 20 and y < 30]
all_file3 = [x for x, y in zip(all_file, seq_num) if y >= 30 and y < 40]
all_file4 = [x for x, y in zip(all_file, seq_num) if y >= 40 and y < 50]

all_file5 = [x for x, y in zip(all_file, seq_num) if y >= 50 and y < 52]
all_file6 = [x for x, y in zip(all_file, seq_num) if y >= 52 and y < 54]
all_file7 = [x for x, y in zip(all_file, seq_num) if y >= 54 and y < 56]
all_file8 = [x for x, y in zip(all_file, seq_num) if y >= 56 and y < 58]


print(len(all_file0)) # 220
print(len(all_file1)) # 690
print(len(all_file2)) # 565
print(len(all_file3)) # 922
print(len(all_file4)) # 2415


# as test i will randomly choose 100 code sequences
# test_file1 = list(np.random.choice(all_file, 100, replace=False))

"""
# linux
produceaBSREL_linux_parallel(OG_list=all_file0, out_sh_file="aBSREL_03_24_0.sh")
produceaBSREL_linux_parallel(OG_list=all_file1, out_sh_file="aBSREL_03_24_1.sh")
produceaBSREL_linux_parallel(OG_list=all_file2, out_sh_file="aBSREL_03_24_2.sh")


# cluster-le
produceaBSREL_cluster_parallel_le(OG_list=all_file3, out_sh_file="aBSREL_03_24_3.sh")
produceaBSREL_cluster_parallel_le(OG_list=all_file4, out_sh_file="aBSREL_03_24_4.sh")


# cluster-lu
produceaBSREL_cluster_parallel_lu(OG_list=all_file5, out_sh_file="aBSREL_03_24_5.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file6, out_sh_file="aBSREL_03_24_6.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file7, out_sh_file="aBSREL_03_24_7.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file8, out_sh_file="aBSREL_03_24_8.sh")
"""



# cluster-lu
produceaBSREL_cluster_parallel_lu(OG_list=all_file0, out_sh_file="aBSREL_10-13-00.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file1, out_sh_file="aBSREL_10-13-01.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file2, out_sh_file="aBSREL_10-13-02.sh")
produceaBSREL_cluster_parallel_lu(OG_list=all_file3, out_sh_file="aBSREL_10-13-03.sh")


# split file 4 into
import numpy
l = numpy.array_split(numpy.array(all_file4), 9)
file_name = ["aBSREL_10-13-04_" + str(i) + ".sh" for i in range(9)]
for row, out in zip(l,file_name):
    print(row, out)
    s0 = row
    s1= [x.replace("\n","") for x in s0]
    produceaBSREL_cluster_parallel_lu(OG_list=s1, out_sh_file=out)

# test on the linux computer
#os.system(" mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res/ /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new/OG2520_code.fasta --tree /home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree_unroot_label/OG2520_aa_unroot_LABEL.tre --branches Foreground --output /home/luhongzhong/ortholog_343_methanol/absrel_result/OG2520.ABSREL.json")