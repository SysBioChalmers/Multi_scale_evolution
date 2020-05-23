#!/usr/bin/python

# Note
# This script is used to produce the control file for the leisr function in batch

import os
import argparse


def prepareSiteFile(fast_input,tree_input,template_model, out_dir):
    '''
        # for the test
        OG_id = "OG5327_aa_aligned.fasta"
        fast_input = "/home/luhongzhong/protein_all_refine_align_sce/OG5327_aa_aligned.fasta"
        tree_input = "/home/luhongzhong/protein_all_align_tree/OG5327_aa_unroot.tre"
        template_model = "/home/luhongzhong/Documents/evolution_analysis/hyphy_model/"
        out_dir = "/home/luhongzhong/Documents/evolution_analysis/hyphy_model/leisr_bf/OG5327_aa_aligned_test.bf"
    '''
    model_type = os.listdir(template_model)
    model_type = [x for x in model_type if "runLEISR0.bf" in x]
    for x in model_type:
        print(x)
        # test
        # x = "M2a"
        if x =="runLEISR0.bf":  # there is another file "._runLEISR0.bf" in the directory
            model_dir = template_model + x
            model_inf = open(model_dir).readlines()
            model_inf[13] = model_inf[13].replace("fasta", fast_input)
            model_inf[14] = model_inf[14].replace("tree", tree_input)
            try:
                os.remove(template_model + x.split(".")[0] + "_test.bf")  # remove the old files
            except:
                pass
            new_codefile = open(out_dir, "w")
            new_codefile.writelines(model_inf)
            new_codefile.close()

# for the batch process
# the code file is stored in the document file

def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-p', metavar = 'input_file', type = str, help = 'input the protein sequence file')
    parser.add_argument('-t', metavar = 'input_file', type = str, help = 'input the tree file')
    parser.add_argument('-c', metavar = 'template_file', type = str, help = 'test file directory')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file directory')

    args = parser.parse_args()
    profile = args.p  # store the aligned protein fasta file
    treefile = args.t
    codefile = args.c # store the code
    outputfile = args.o
    #resultfile = args.o  # store the result
    all_org = os.listdir(profile)
    all_org = [x for x in all_org if "_aa_aligned" in x]
    all_org = [x for x in all_org if "json" not in x]
    for id in all_org:
        profile0 = profile + id
        treefile0 = treefile + id.replace("aa_aligned.fasta", "aa_unroot.tre")
        outputfile0 = outputfile + id.split(".")[0] + "_test.bf"
        prepareSiteFile(fast_input=profile0,tree_input=treefile0,template_model=codefile,out_dir=outputfile0)
if __name__ == "__main__":
    main()

# an example
# on the mac
# python leisr_produce_control_file_batch.py -p /home/luhongzhong/ortholog_343/protein_refine/ -t /home/luhongzhong/ortholog_343/unroot_tree/ -c /home/luhongzhong/Documents/evolution_analysis/hyphy_model/ -o /home/luhongzhong/Documents/evolution_analysis/hyphy_model/leisr_bf/

# on the new cluster
# python leisr_produce_control_file_batch.py -p /c3se/NOBACKUP/users/luho/protein_refine/ -t /c3se/NOBACKUP/users/luho/unroot_tree/ -c /cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/ -o /cephyr/users/luho/Hebbe/evolution_analysis/hyphy_model/leisr_bf/