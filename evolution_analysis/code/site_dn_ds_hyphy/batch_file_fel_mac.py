# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# note: the script is updated on MAC


#data_dir = "/home/luhongzhong/ortholog_343/cds_align_unify"
#all_file = os.listdir(data_dir)
#all_file = [x for x in all_file if "_code" in x]

# 03-07
# produce the sh file on mac for all cds files
from Bio import SeqIO
import os

data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code/"
result_file = "/Users/luho/Documents/fel_result"

all_file0 = os.listdir(data_dir)
all_file0 = [x for x in all_file0 if "_code" in x]
all_result = os.listdir(result_file)
all_result = [x.replace(".FEL.json","_code.fasta") for x in all_result]
all_file = list(set(all_file0)-set(all_result))

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




def produceFel_batch(OG_list, out_sh_file, parallel=20):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "hyphy fel --alignment /c3se/NOBACKUP/users/luho/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/NOBACKUP/users/luho/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/NOBACKUP/users/luho/fel_result/OG2049.FEL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n" \
                 "#SBATCH -A C3SE2020-1-8\n" \
                 "#SBATCH -N 1\n#SBATCH -n 20\n" \
                 "#SBATCH -o out.txt\n" \
                 "#SBATCH -t 4-00:00:00\n" \
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
        if (i + 1) % parallel == 0:
            newfile.write(out1)
            newfile.write("wait" + "\n")
        else:
            newfile.write(out1)
    newfile.write("wait" + "\n")
    newfile.close()


def produceFel_linux_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /home/luhongzhong/ortholog_343/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /home/luhongzhong/ortholog_343/fel_result/OG2049.FEL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n" \
                 "#SBATCH -A C3SE2020-1-8\n" \
                 "#SBATCH -N 1\n#SBATCH -n 20\n" \
                 "#SBATCH -o out.txt\n" \
                 "#SBATCH -t 4-00:00:00\n" \
                 "#SBATCH --mail-user=luho@chalmers.se\n" \
                 "#SBATCH --mail-type=end\n"
    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
        result_id = cds.replace("_code.fasta", ".FEL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id).replace(
            'OG2049.FEL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()


def produceFel_cluster_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "mpirun -np 20 HYPHYMPI LIBPATH=/c3se/users/leyu/Vera/hyphy/res/ /c3se/users/leyu/Vera/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /c3se/users/leyu/Vera/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /c3se/users/leyu/Vera/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /c3se/users/leyu/Vera/fel_result/OG2049.FEL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n" \
                 "#SBATCH -A C3SE2020-1-16\n" \
                 "#SBATCH -N 1\n#SBATCH -n 20\n" \
                 "#SBATCH -o out.txt\n" \
                 "#SBATCH -t 3-00:00:00\n" \
                 "#SBATCH --mail-user=leyu@chalmers.se\n" \
                 "#SBATCH --mail-type=end\n" \
                 "module load GCC/8.3.0\n" \
                 "module load CUDA/10.1.243\n" \
                 "module load OpenMPI/3.1.4\n"

    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
        result_id = cds.replace("_code.fasta", ".FEL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id).replace(
            'OG2049.FEL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()


def produceFel_mac_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "mpirun -np 2 HYPHYMPI LIBPATH=/Users/luho/Documents/hyphy/res /Users/luho/Documents/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /Users/luho/Documents/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /Users/luho/Documents/unroot_tree/OG2049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /Users/luho/Documents/fel_result_mac/OG2049.FEL.json"
    newfile = open(outfile, "w")
    # write in the start file
    start_part = "#!/bin/bash\n"
    newfile.writelines(start_part)
    for i, cds in enumerate(OG_list):
        print(i)
        tree_id = cds.replace("_code.fasta", "_aa_unroot.tre")
        result_id = cds.replace("_code.fasta", ".FEL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot.tre', tree_id).replace(
            'OG2049.FEL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()


# divide all the file into 10 parts automatically
"""
import numpy
l = numpy.array_split(numpy.array(all_file),10)
file_name = ["fel_cluster_batch" + str(i) + ".sh" for i in range(10)]
for row, out in zip(l,file_name):
    print(row, out)
    s0 = row
    s1= [x.replace("\n","") for x in s0]
    produceFel_batch(OG_list=s1, out_sh_file=out)"""


# divide files manually into three part
all_file0 = [x for x, y in zip(all_file, seq_num) if y < 10]
all_file1 = [x for x, y in zip(all_file, seq_num) if y >= 10 and y < 20]

all_file2 = [x for x, y in zip(all_file, seq_num) if y >= 20 and y < 40]
all_file3 = [x for x, y in zip(all_file, seq_num) if y >= 40 and y < 60]
all_file4 = [x for x, y in zip(all_file, seq_num) if y >= 60 and y < 80]

all_file5 = [x for x, y in zip(all_file, seq_num) if y >= 80 and y < 100]
all_file6 = [x for x, y in zip(all_file, seq_num) if y >= 100 and y < 150]
all_file7 = [x for x, y in zip(all_file, seq_num) if y >= 150 and y < 200]

all_file8 = [x for x, y in zip(all_file, seq_num) if y >= 200 and y < 250]
all_file9 = [x for x, y in zip(all_file, seq_num) if y >= 250 and y < 300]
all_file10 = [x for x, y in zip(all_file, seq_num) if y >= 300 and y < 350]


# using the batch calculation on the cluster, now it is stoped
#produceFel_batch(OG_list=all_file0, out_sh_file="fel_03_01_0.sh")
#produceFel_batch(OG_list=all_file1, out_sh_file="fel_03_01_1.sh")
#produceFel_batch(OG_list=all_file2, out_sh_file="fel_03_01_2.sh")
#produceFel_batch(OG_list=all_file3, out_sh_file="fel_03_01_3.sh")
#produceFel_batch(OG_list=all_file4, out_sh_file="fel_03_01_4.sh")

# using the parallel calculation on the mac
# produceFel_batch(OG_list=all_file1, out_sh_file="fel_03_01_m1.sh")
#produceFel_mac_parallel(OG_list=all_file2, out_sh_file="fel_03_01_m2.sh")
#produceFel_mac_parallel(OG_list=all_file3, out_sh_file="fel_03_01_m3.sh")
#produceFel_mac_parallel(OG_list=all_file4, out_sh_file="fel_03_01_m4.sh")

# using the parallel calculation on the cluster
produceFel_cluster_parallel(OG_list=all_file2, out_sh_file="fel_03_01_c2.sh")
produceFel_cluster_parallel(OG_list=all_file3, out_sh_file="fel_03_01_c3.sh")
produceFel_cluster_parallel(OG_list=all_file4, out_sh_file="fel_03_01_c4.sh")



# using the parallel calculation on the linux
produceFel_linux_parallel(OG_list=all_file5, out_sh_file="fel_03_01_5.sh")
produceFel_linux_parallel(OG_list=all_file6, out_sh_file="fel_03_01_6.sh")
produceFel_linux_parallel(OG_list=all_file7, out_sh_file="fel_03_01_7.sh")
#produceFel_linux_parallel(OG_list=all_file8, out_sh_file="fel_03_01_8.sh")
#produceFel_linux_parallel(OG_list=all_file9, out_sh_file="fel_03_01_9.sh")
#produceFel_linux_parallel(OG_list=all_file10, out_sh_file="fel_03_01_10.sh")


# using the parallel calculation on the cluster
produceFel_cluster_parallel(OG_list=all_file8, out_sh_file="fel_03_01_c8.sh")
produceFel_cluster_parallel(OG_list=all_file9, out_sh_file="fel_03_01_c9.sh")
produceFel_cluster_parallel(OG_list=all_file10, out_sh_file="fel_03_01_c10.sh")





# length
#all_file1 442 169 0
#all_file2 427 263 85 26
#all_file3 153 76 37 29
#all_file4 148 91 59 54

#all_file5 125 98 101
#all_file6 49 41 44
#all_file7 52 45 48


#all_file8 77 71 78 41 0 0
#all_file9 125 121 129 92 26 0
#all_file10 180 176 188 188 150 57

print(len(all_file1))
print(len(all_file2))
print(len(all_file3))
print(len(all_file4))
print(len(all_file5))
print(len(all_file6))
print(len(all_file7))
print(len(all_file8))
print(len(all_file9))
print(len(all_file10))