#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is to split Blast file into huge amount of files according to the specific sequence id.

with open('blastfile.txt', 'r') as infile :
    lines = infile.readlines()

# seqids = [line.strip("\n").split("\t")[0] for line in lines]
# print(seqids)

# seqids = set(seqids)
# print(len(seqids)) # 22972

# Method 1, it can work, but too slow!!!
# i = 0
# for seqid in seqids :
#     i += 1
#     print("This is", i, "---------------------")
#     file = open("./blast_file/%s.txt" % seqid, "w")
#     for line in lines :
#         line_seqid = line.strip("\n").split("\t")[0]
#         if seqid == line_seqid :
#             file.writelines(line)
#     file.close()

# Method 2, to speed up!!! 
i = 0
for line in lines :
    i += 1
    print("This is", i, "---------------------")
    if i == 1 :
        line_seqid = line.strip("\n").split("\t")[0]
        seqid = line_seqid
        file = open("./blast_file/%s.txt" % seqid, "w")
        file.writelines(line)

    else :
        line_seqid = line.strip("\n").split("\t")[0]
        if seqid == line_seqid :
            file.writelines(line)
        else :
            # When i == 301, seqid is different from line_seqid, then (1)close the previous file; (2)generate new seqid; (3)generate new file; (4)write this line to that file
            file.close()
            seqid = line.strip("\n").split("\t")[0]
            file = open("./blast_file/%s.txt" % seqid, "w")
            file.writelines(line)

file.close()




