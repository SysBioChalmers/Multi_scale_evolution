# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

import os

# prepare the OG id for calculate leisr
data_dir = "/home/luhongzhong/ortholog_343/protein_refine"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_aa" in x]
all_file = [x for x in all_file if "json" not in x]
# here I divide this file into three batch
all_batch1 = all_file[0:5000]
all_batch2 = all_file[5000:10000]
all_batch3 = all_file[10000:]

# write the sh file for the calculation
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch1.sh"
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
for i, cds in enumerate(all_batch1):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()


# write the sh file for the calculation
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch2.sh"
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
for i, cds in enumerate(all_batch2):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()


# write the sh file for the calculation
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch3.sh"
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
for i, cds in enumerate(all_batch3):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()









"""
## this update is on MAC
## second time to run leisr analysis for all OGs
## this time we run the code in mac
# prepare the OG id for calculate leisr
data_dir = "/Users/luho/Documents/protein_refine"
all_file = os.listdir(data_dir)
all_file1 = [x for x in all_file if "_aa" in x]
all_file1 = [x for x in all_file1 if "json" not in x]

# which OG has the result
all_file2 = [x for x in all_file if "LEISR.json" in x]
all_file2 = [x.split(".LEISR")[0] for x in all_file2]

# obtain the OG which was not calculated
all_file3 = list(set(all_file1)-set(all_file2))

# here I divide this file into three batch
all_batch1 = all_file3[0:401]
all_batch2 = all_file3[401:802]
all_batch3 = all_file3[802:]

# write the sh file for the calculation
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch_3_1.sh"
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
for i, cds in enumerate(all_batch1):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()


# write the sh file for the calculation
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch_3_2.sh"
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
for i, cds in enumerate(all_batch2):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()


# write the sh file for the calculation
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_hyphy/leisr_cluster_batch_3_3.sh"
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
for i, cds in enumerate(all_batch3):
    print(i)
    control_file0 = cds.replace("aa_aligned.fasta", "aa_aligned_test.bf")
    out1 = template0 + control_file0 + " & \n"
    print(out1)
    if (i+1) % 20 == 0:
        newfile.write(out1)
        newfile.write("wait" + "\n")
    else:
        newfile.write(out1)

# reduce the end wait
if (i+1) % 20 == 0:
    pass
else:
    newfile.write("wait" + "\n")
newfile.close()
"""