# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# The script is updated on mac
import os

# prepare the OG id for calculate leisr
data_dir = "/home/luhongzhong/ortholog_343/cds_align_macse"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]
all_file = [x for x in all_file if "json" not in x]
# here I divide this file into three batch
all_batch1 = all_file[0:5000]
all_batch2 = all_file[5000:10000]
all_batch3 = all_file[10000:]

# write the sh file for the calculation

"""
template0 = "codeml /home/luhongzhong/ortholog_343/site_model/OG123/M7/codeml_test.ctl\n" \
            "codeml /home/luhongzhong/ortholog_343/site_model/OG123/M8/codeml_test.ctl\n" \
            "codeml /home/luhongzhong/ortholog_343/site_model/OG123/M8a/codeml_test.ctl" """

template0 = "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M7/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M8/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M8a/codeml_test.ctl"

# batch 1
outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch1.sh"
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
for i, cds in enumerate(all_batch1):
    print(i)
    newid = cds.split("_code")[0]
    template1 = template0.replace("OG123", newid)
    out1 = template1+ " & \n"
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




# prepare the sh file on mac
# prepare the OG id for calculate leisr
data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]
all_file = [x for x in all_file if "json" not in x]
# here I divide this file into three batch
# divide files into three part
all_file1 = all_file[0:1130]
all_file2 = all_file[1130:2260]
all_file3 = all_file[2260:]

template0 = "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M1a/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M2a/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M7/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M8/codeml_test.ctl"


# batch 1
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch1.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 3-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"
newfile.writelines(start_part)
for i, cds in enumerate(all_file1):
    print(i)
    newid = cds.split("_code")[0]
    template1 = template0.replace("OG123", newid)
    out1 = template1+ " & \n"
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




# batch 2
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch2.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 3-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"
newfile.writelines(start_part)
for i, cds in enumerate(all_file2):
    print(i)
    newid = cds.split("_code")[0]
    template1 = template0.replace("OG123", newid)
    out1 = template1+ " & \n"
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




# batch 3
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch3.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 3-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"
newfile.writelines(start_part)
for i, cds in enumerate(all_file3):
    print(i)
    newid = cds.split("_code")[0]
    template1 = template0.replace("OG123", newid)
    out1 = template1+ " & \n"
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



# we need check which OG can't be calculated!!!!!
# from the calculation we found the above calculation is quite slow
# the followed sh file remove the parallel calculation
# prepare the sh file on mac
# prepare the OG id for calculate leisr
data_dir = "/Users/luho/Documents/cds_align_macse_remove_stop_code"
all_file = os.listdir(data_dir)
all_file = [x for x in all_file if "_code" in x]
all_file = [x for x in all_file if "json" not in x]
# here I divide this file into three batch
# divide files into three part
all_file1 = all_file[0:1130]
all_file2 = all_file[1130:2260]
all_file3 = all_file[2260:]

template0 = "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M1a/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M2a/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M7/codeml_test.ctl\n" \
            "codeml /c3se/NOBACKUP/users/luho/site_model/OG123/M8/codeml_test.ctl"
# batch 1
outfile = "/Users/luho/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch1_for_test.sh"
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
    newid = cds.split("_code")[0]
    template1 = template0.replace("OG123", newid)
    out1 = template1+ "\n"
    newfile.write(out1)
newfile.close()

