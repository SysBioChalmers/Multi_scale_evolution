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
import numpy as np

data_dir = "/Users/luho/Documents/branch_site_methanol/cds_align_macse_remove_stop_code_methanol/"
result_file = "/Users/luho/Documents/branch_site_methanol/absrel_methanol_result"
tree_dir ="/Users/luho/Documents/branch_site_methanol/unroot_tree_label_methanol"

all_file0 = os.listdir(data_dir)
all_file0 = [x for x in all_file0 if "_code" in x]
tree_file = os.listdir(tree_dir)
tree_file = [x.replace("_aa_unroot_LABEL.tre","_code.fasta") for x in tree_file]
# remove code fast file without tree file
all_file0 = [x for x in all_file0 if x in tree_file]


all_result = os.listdir(result_file)
all_result = [x.replace(".ABSREL.json","_code.fasta") for x in all_result]
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


def produceaBSREL_linux_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/branch_site_hyphy/" + out_sh_file
    template0 = "mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /home/luhongzhong/ortholog_343/cds_align_macse_remove_stop_code_methanol/OG2049_code.fasta --tree /home/luhongzhong/ortholog_343/unroot_tree_label_methanol/OG2049_aa_unroot_LABEL.tre --branches Foreground --output /home/luhongzhong/ortholog_343/absrel_methanol_result/OG2049.ABSREL.json"
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
        tree_id = cds.replace("_code.fasta", "_aa_unroot_LABEL.tre")
        result_id = cds.replace("_code.fasta", "ABSREL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace(
            'OG2049.aBSREL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()


def produceaBSREL_cluster_parallel(OG_list, out_sh_file):
    outfile = "/Users/luho/Documents/evolution_analysis/code/branch_site_hyphy/" + out_sh_file
    template0 = "mpirun -np 20 HYPHYMPI LIBPATH=/c3se/users/leyu/Vera/hyphy/res/ /c3se/users/leyu/Vera/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /c3se/users/leyu/Vera/cds_align_macse_remove_stop_code_methanol/OG2049_code.fasta --tree /c3se/users/leyu/Vera/unroot_tree_label_methanol/OG2049_aa_unroot_LABEL.tre --branches Foreground --output /c3se/users/leyu/Vera/absrel_methanol_result/OG2049.ABSREL.json"
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
        tree_id = cds.replace("_code.fasta", "_aa_unroot_LABEL.tre")
        result_id = cds.replace("_code.fasta", "ABSREL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace(
            'OG2049.ABSREL.json', result_id) + "\n"
        print(out1)
        newfile.write(out1)
    newfile.close()

# divide all the file into 10 parts automatically
"""
import numpy
l = numpy.array_split(numpy.array(all_file),10)
file_name = ["aBSREL_cluster_batch" + str(i) + ".sh" for i in range(10)]
for row, out in zip(l,file_name):
    print(row, out)
    s0 = row
    s1= [x.replace("\n","") for x in s0]
    produceaBSREL_batch(OG_list=s1, out_sh_file=out)"""

# as test i will randomly choose 100 code sequences
test_file1 = list(np.random.choice(all_file, 100, replace=False))
produceaBSREL_cluster_parallel(OG_list=test_file1, out_sh_file="aBSREL_03_10_test1.sh")




"""
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
"""

# test on the linux computer
#os.system(" mpirun -np 4 HYPHYMPI LIBPATH=/home/luhongzhong/hyphy/res/ /home/luhongzhong/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /home/luhongzhong/ortholog_343_methanol/cds_align_macse_remove_stop_code_methanol/OG2520_code.fasta --tree /home/luhongzhong/ortholog_343_methanol/unroot_tree_label_methanol/OG2520_aa_unroot_LABEL.tre --branches Foreground --output /home/luhongzhong/ortholog_343_methanol/absrel_methanol_result/OG2520ABSREL.json")