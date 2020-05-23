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

data_dir = "/Users/luho/Documents/site_model_heat/cds_align_macse_remove_stop_code/"
result_file = "/Users/luho/Documents/site_model_heat/fel_result"

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


def produceFel_cluster_parallel(OG_list, out_sh_file, parallel=6):
    outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/" + out_sh_file
    template0 = "mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_macse_remove_stop_code/OG2049_code.fasta --tree /cephyr/users/luho/Hebbe/unroot_tree_label/OG2049_aa_unroot_LABEL.tre --branches Foreground --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2049.FEL.json"
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
        result_id = cds.replace("_code.fasta", ".FEL.json")
        out1 = template0.replace("OG2049_code.fasta", cds).replace('OG2049_aa_unroot_LABEL.tre', tree_id).replace(
            'OG2049.FEL.json', result_id) + " & \n"
        print(out1)
        if (i + 1) % parallel == 0:
            newfile.write(out1)
            newfile.write("wait" + "\n")
        else:
            newfile.write(out1)
    newfile.write("wait" + "\n")
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


all_file2 = [x for x, y in zip(all_file, seq_num) if y >= 20 and y < 40]
all_file3 = [x for x, y in zip(all_file, seq_num) if y >= 40 and y < 60]
all_file4 = [x for x, y in zip(all_file, seq_num) if y >= 60 and y < 80]

all_file5 = [x for x, y in zip(all_file, seq_num) if y >= 80 and y < 100]
all_file6 = [x for x, y in zip(all_file, seq_num) if y >= 100 and y < 150]





# using the parallel calculation on the cluster
produceFel_cluster_parallel(OG_list=all_file2, out_sh_file="fel_04_24_2.sh")
produceFel_cluster_parallel(OG_list=all_file3, out_sh_file="fel_04_24_3.sh")
produceFel_cluster_parallel(OG_list=all_file5, out_sh_file="fel_04_24_5.sh")
produceFel_cluster_parallel(OG_list=all_file6, out_sh_file="fel_04_24_6.sh")


# split file 4 into 10 small files
# produceFel_cluster_parallel(OG_list=all_file4, out_sh_file="fel_04_24_4.sh")


import numpy
l = numpy.array_split(numpy.array(all_file4), 9)
file_name = ["fel_04_24_4_" + str(i) + ".sh" for i in range(9)]
for row, out in zip(l,file_name):
    print(row, out)
    s0 = row
    s1= [x.replace("\n","") for x in s0]
    produceFel_cluster_parallel(OG_list=s1, out_sh_file=out)


# length
#all_file2 1
#all_file3 4
#all_file4 173

#all_file5 18
#all_file6 4


print(len(all_file2))
print(len(all_file3))
print(len(all_file4))
print(len(all_file5))
print(len(all_file6))
