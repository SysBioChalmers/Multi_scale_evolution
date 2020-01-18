# this is script to mv files using python

'''
file0 = "/home/luhongzhong/ortholog_sce/protein_refine_align_sce/"
file1 = "/home/luhongzhong/cds_refine/"
file2 = "/home/luhongzhong/ortholog_sce/cds_refine_sce/"
all_sce_ORG = os.listdir(file0)
import shutil
for i in all_sce_ORG:
    shutil.copy(file1 + i.replace("_aa_aligned.fasta", "_code.fasta"), file2)
'''