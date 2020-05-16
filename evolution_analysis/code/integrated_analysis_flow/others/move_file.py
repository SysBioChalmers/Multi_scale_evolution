#!/usr/bin/python
# Remove file not used in the GUIDANCE alignment


'''
file0 = "/home/luhongzhong/ortholog_sce/protein_refine_align_sce/"
file1 = "/home/luhongzhong/cds_refine/"
file2 = "/home/luhongzhong/ortholog_sce/cds_refine_sce/"
all_sce_ORG = os.listdir(file0)
import shutil
for i in all_sce_ORG:
    shutil.copy(file1 + i.replace("_aa_aligned.fasta", "_code.fasta"), file2)
'''


# small tasks
import os
# import argparse
import shutil
#file1 = "/Users/luho/Documents/cds_align_guidance/OG10001_result/"
#def moveFilesForSave(result_file_guidance):
source_file = "/home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/"
current_result_dir = "/home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new/"
save_dir = "/home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree_for_save/"
all_file = os.listdir(source_file)
result_file = os.listdir(current_result_dir)
#result_file = [x.replace("_result", "") for x in result_file]
file_need_save = [x for x in all_file if x not in result_file]
for i in file_need_save:
     shutil.move(source_file + i, save_dir)
# an example