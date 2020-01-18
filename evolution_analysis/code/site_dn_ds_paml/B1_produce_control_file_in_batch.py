#!/usr/bin/python

# Note
# This script is used to produce the control files in batch process.

import os
import argparse
import shutil

## part1
#fast_input = "/Users/luho/Documents/PAML/data/Example2.pml"
#tree_input = "/Users/luho/Documents/PAML/data/Example2.tree"
#site_model = "/Users/luho/Documents/PAML/site_model/"
#result_out = "/Users/luho/Documents/paml_result/Example2_out"

def prepareSiteFile(OG, fast_input, tree_input, template_model, new_model_dir, result_out):
    template0 = template_model + "test/" # this file is used to store the test code
    model0 = new_model_dir + OG + "/"# this file is used to store the produced code
    try:
        shutil.rmtree(model0)
    except: pass
    os.mkdir(model0)

    model_type = os.listdir(template0)
    # here we choose model types
    #model_type = [x for x in model_type if "_" not in x]
    model_type = ["M7","M8","M8a"]
    for x in model_type:
        print(x)
        # test
        # x = "M3"
        model_dir = template0 + x + "/" + "codeml.ctl0"
        model_inf = open(model_dir).readlines()
        model_inf[0] = "      seqfile = " + fast_input + "\n"
        model_inf[1] = "     treefile = " + tree_input + "\n"
        model_inf[2] = "      outfile = " + result_out + "_" + x + "\n"
        try:
            os.remove(template0 + x + "/" + "codeml_test.ctl") # remove the old files
        except: pass
        os.mkdir(model0 + x)
        new_codefile = open(model0 + x + "/" + "codeml_test.ctl", "w")
        new_codefile.writelines(model_inf)
        new_codefile.close()

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-n', metavar = 'input_file', type = str, help = 'input the codon sequence fold file')
    parser.add_argument('-t', metavar = 'input_file', type = str, help = 'input the tree fold file')
    parser.add_argument('-c', metavar = 'template_file', type = str, help = 'test file to store the template control model')
    parser.add_argument('-mo', metavar='site model directory', type=str, help='output file to store the control model')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    cdsfile = args.n  # store the cds in phy format
    treefile = args.t
    codefile = args.c # store the code
    model_dir = args.mo
    resultfile = args.o  # store the result

    # for the test
    # cdsfile = "/home/luhongzhong/ortholog_343/cds_align_unify/"
    # treefile = "/home/luhongzhong/ortholog_343/unroot_tree_unify/"
    # codefile =  "/home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/"
    # model_dir = "/home/luhongzhong/ortholog_343/site_model/"
    # resultfile = "/home/luhongzhong/ortholog_343/paml_site_result1/"

    # build the new file
    try:
        os.mkdir(resultfile)
    except: pass

    try:
        os.mkdir(model_dir)
    except:
        pass

    all_org = os.listdir(cdsfile)
    all_org = [x for x in all_org if "_code" in x]
    all_org = [x for x in all_org if "json" not in x]
    for id in all_org:
        print(id)
        OG0 = id.split("_")[0]
        cdsfile0 = cdsfile + id
        treefile0 = treefile + id.replace("_code.phy", "_aa_unroot_unify.tre")
        resultfile0 = resultfile + id.split(".")[0] + "_out"
        prepareSiteFile(OG= OG0, fast_input=cdsfile0, tree_input=treefile0, template_model=codefile, new_model_dir= model_dir, result_out=resultfile0)

if __name__ == "__main__":
    main()

# an example
# test on mac
# python B1_produce_control_file_in_batch.py -n /home/luhongzhong/ortholog_343/cds_align_unify/ -t /home/luhongzhong/ortholog_343/unroot_tree_unify/ -c /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/ -mo /home/luhongzhong/ortholog_343/site_model/ -o /home/luhongzhong/ortholog_343/paml_site_result1/

# test on cluster
# python B1_produce_control_file_in_batch.py -n /c3se/NOBACKUP/users/luho/cds_align_unify/ -t /c3se/NOBACKUP/users/luho/unroot_tree_unify/ -c /cephyr/users/luho/Hebbe/evolution_analysis/paml_model/site_model/ -mo /c3se/NOBACKUP/users/luho/site_model/ -o /c3se/NOBACKUP/users/luho/paml_site_result1/