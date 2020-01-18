# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

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

outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch1.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
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


outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch2.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"
newfile.writelines(start_part)
for i, cds in enumerate(all_batch2):
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


outfile = "/home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/site_paml_cluster_batch3.sh"
newfile = open(outfile, "w")
# write in the start file
start_part = "#!/bin/bash\n" \
"#SBATCH -A C3SE2020-1-8\n" \
"#SBATCH -C MEM128\n" \
"#SBATCH -N 1\n#SBATCH -n 20\n" \
"#SBATCH -o out.txt\n" \
"#SBATCH -t 7-00:00:00\n" \
"#SBATCH --mail-user=luho@chalmers.se\n" \
"#SBATCH --mail-type=end\n"
newfile.writelines(start_part)
for i, cds in enumerate(all_batch3):
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