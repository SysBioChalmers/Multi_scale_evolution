#!/usr/bin/python

# Note
# This script is used to remove the stop codon and the sequence contains letter "Y"
# In the initial method, we just remove the sequence contains letter "Y"
# This may be not the best option to handle it.
# For the example of "OG5327", one seq contains letter "Y", so we remove it.
# The script will be changed as a function.

import os
import argparse
import pandas as pd
from Bio import Phylo



def prepareTreePAML(tree_input, id_mapping, tree_out):
    '''
    All three files are the directories to input and output file
    :param tree_input:
    :param id_mapping:
    :param tree_out:
    :return:
    '''
    import re
    tree0 = open(tree_input).readlines()
    tree1 = tree0[0]

    # produce a small dict to do the id mapping
    sequences_ID = []  # Setup an empty list
    tree0 = Phylo.read(tree_input, 'newick')
    for leaf in tree0.get_terminals():
        print(leaf.name)
        sequences_ID.append(leaf.name)
    id_mapping1 = {x:id_mapping[x] for x in sequences_ID}
    #id_mapping2 = {x:y for y,x in id_mapping1.items()}

    rep = dict((re.escape(k), v) for k, v in id_mapping1.items())
    pattern = re.compile("|".join(rep.keys()))
    # print(pattern)
    my_str = pattern.sub(lambda m: rep[re.escape(m.group(0))], tree1)
    newfile4 = open(tree_out, "w")
    newfile4.writelines(my_str)
    newfile4.close()

'''
# an example
## update the tree file based the above id mapping
tree_file = "/Users/luho/Documents/pan_genome/protein_test/OG5328_aa_unroot.tre"
id_mapping_file = "/Users/luho/Documents/pan_genome/protein_test/orthomcl_SeqIDs_index.txt"
outfile4 = "/Users/luho/Documents/pan_genome/protein_test/" + "OG5328_aa_unroot" + "unify.tre"
id_input = pd.read_csv(id_mapping_file, sep=": ", header=None)
id_mapping0 = {v: k for k, v in zip(id_input.iloc[:, 0].tolist(), id_input.iloc[:, 1].tolist())}
prepareTreePAML(tree_input=tree_file, id_mapping=id_mapping0, tree_out=outfile4)
'''

# for the batch process
# the code file is stored in the document file
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Prepare the control for the site model of PAML')
    #adding arguments
    parser.add_argument('-t', metavar = 'input_file', type = str, help = 'input the codon sequence file')
    parser.add_argument('-id', metavar = 'input_file', type = str, help = 'input the tree file')
    parser.add_argument('-o', metavar='output_file', type=str, help='output file to store the result')

    args = parser.parse_args()
    treefile = args.t
    id_mapping_in = args.id
    resultfile = args.o  # store the result

    # for the test
    # treefile = "/Users/luho/Documents/protein_test/"
    # id_mapping_in = "/Users/luho/Documents/protein_test/orthomcl_SeqIDs_index.txt"
    # resultfile = "/Users/luho/Documents/protein_test/"  # store the result

    id_input = pd.read_csv(id_mapping_in, sep=": ", header=None)
    id_mapping0 = {v: k for k, v in zip(id_input.iloc[:, 0].tolist(), id_input.iloc[:, 1].tolist())}

    all_file = os.listdir(treefile)
    tree_file_all = [x for x in all_file if "unroot.tre" in x]
    for i in tree_file_all:
        print(i)
        tree_file =os.path.join(treefile, i)
        outfile4 = os.path.join(resultfile, i.split(".")[0] + "_unify.tre")
        prepareTreePAML(tree_input=tree_file, id_mapping= id_mapping0, tree_out=outfile4)
if __name__ == "__main__":
    main()

# an example
# python B4_unify_geneID_name.py -t /Users/luho/Documents/pan_genome/protein_test/ -id /Users/luho/Documents/pan_genome/orthomcl_SeqIDs_index.txt -o /Users/luho/Documents/pan_genome/protein_test/

# python B4_unify_geneID_name.py -t /home/luhongzhong/protein_all_align_tree/ -id /home/luhongzhong/Documents/evolution_analysis/data/orthomcl_SeqIDs_index.txt -o /home/luhongzhong/protein_all_align_tree_unify/


