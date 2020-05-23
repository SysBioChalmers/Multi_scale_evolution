# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

# This script is updated on MAC.
# The tutorial could be found in https://github.com/sjspielman/phyphy#parsing-hyphy-output-json
import os
import pandas as pd
import phyphy

# some functions
def singleMapping (description, item1, item2, dataframe=True):
    """get the single description of from item1 for item2 based on mapping"""
    #description = w
    #item1 = v
    #item2 = testData
    # used for the list data
    if dataframe:
        description = description.tolist()
        item1 = item1.tolist()
        item2 = item2.tolist()
    else:
        pass
    index = [None]*len(item2)
    result = [None]*len(item2)
    tt = [None]*len(item2)
    for i in range(len(item2)):
        if item2[i] in item1:
            index[i] = item1.index(item2[i])
            result[i] = description[index[i]]
        else:
            index[i] = None
            result[i] = None
    return result


#################################################################################
# absrel - crabtree condition
os.system("mkdir /Users/luho/Documents/branch_site_crabtree/absrel_csv")
os.system("mkdir /Users/luho/Documents/branch_site_crabtree/absrel_tree")

all_OG = os.listdir("/Users/luho/Documents/branch_site_crabtree/absrel_result/")
input = "/Users/luho/Documents/branch_site_crabtree/absrel_result/"
output = "/Users/luho/Documents/branch_site_crabtree/absrel_csv/"
output_tree = "/Users/luho/Documents/branch_site_crabtree/absrel_tree/"

# it can be found some times there are files with zero size
branches_selected = []
branches_number_selected = []
og_need_check = []
for x in all_OG:
    print(x)
    # test
    infile0 = input + x
    outfile0 = output + x.replace(".ABSREL.json", ".csv")
    if os.stat(infile0).st_size > 0:
        # more test
        e = phyphy.Extractor(infile0)
        e.reveal_branch_attributes()
        s0 = e.branch_attributes
        s1 = s0[0]
        # then we can change the dict into a dataframe
        s2 = pd.DataFrame.from_dict(s1, orient='index')
        # remove the node or branches not being tested

        s2.to_csv(outfile0)
        s2_selected = s2[s2["Corrected P-value"] <=0.05]
        branch0 = list(s2_selected.index)
        num_branch = len(branch0)

    else:
        og_need_check.append(x)
        branch0 = []
        num_branch = 0
    branches_selected.append(branch0)
    branches_number_selected.append(num_branch)


# output the tree file with p value to visualize the result using ggtree
og_need_check = []
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace(".ABSREL.json", ".csv")
    outfile1 = output_tree + x.replace(".ABSREL.json", ".tre")

    if os.stat(infile0).st_size > 0:
        # more test
        e = phyphy.Extractor(infile0)
        e.reveal_branch_attributes()
        s0 = e.branch_attributes
        s1 = s0[0]
        # further update s1 and change the None in the "Corrected P-value" into 1
        for key in s1.keys():
            print(key)
            result0 = s1[key]
            if result0["Corrected P-value"] is None:
                result0["Corrected P-value"] = 1
                s1[key] = result0
        #update branch_attributes
        e.branch_attributes[0] = s1
        # extract the tree
        tree = e.extract_absrel_tree(update_branch_lengths="Full adaptive model")
        out0 = open(outfile1,"w")
        out0.writelines(tree)
        out0.close()

    else:
        og_need_check.append(x)




# result initial summary
all_OG = [x.replace(".ABSREL.json","") for x in all_OG]
result_df = pd.DataFrame({"OG":all_OG,
                           "branch_select":branches_selected,
                           "number_select": branches_number_selected})
# merge it with the sce gene annotation
OG_interest = pd.read_csv("/Users/luho/Documents/branch_site_crabtree/enzyme_need_analysis_for_crabtree.csv")
OG_interest["number_select"] = singleMapping(result_df["number_select"],result_df["OG"],OG_interest["OG"])
OG_interest["branch_select"] = singleMapping(result_df["branch_select"],result_df["OG"],OG_interest["OG"])
OG_interest.to_csv("/Users/luho/Documents/branch_site_crabtree/enzyme_need_analysis_for_crabtree_with_result.csv")





# absrel - heat condition
os.system("mkdir /Users/luho/Documents/branch_site_heat/absrel_csv")
os.system("mkdir /Users/luho/Documents/branch_site_heat/absrel_tree")
os.system("mkdir /Users/luho/Documents/branch_site_heat/absrel_tree_original")


all_OG = os.listdir("/Users/luho/Documents/branch_site_heat/absrel_result/")
all_OG = [x for x in all_OG if "DS_Store" not in x]
input = "/Users/luho/Documents/branch_site_heat/absrel_result/"
output = "/Users/luho/Documents/branch_site_heat/absrel_csv/"
output_tree = "/Users/luho/Documents/branch_site_heat/absrel_tree/"
output_tree_original = "/Users/luho/Documents/branch_site_heat/absrel_tree_original/"

# it can be found some times there are files with zero size
branches_selected = []
branches_number_selected = []
og_need_check = []
for x in all_OG:
    print(x)
    # test
    infile0 = input + x
    outfile0 = output + x.replace(".ABSREL.json", ".csv")
    if os.stat(infile0).st_size > 0:
        # more test
        e = phyphy.Extractor(infile0)
        e.reveal_branch_attributes()
        s0 = e.branch_attributes
        s1 = s0[0]
        # then we can change the dict into a dataframe
        s2 = pd.DataFrame.from_dict(s1, orient='index')
        # remove the node or branches not being tested

        s2.to_csv(outfile0)
        s2_selected = s2[s2["Corrected P-value"] <=0.05]
        branch0 = list(s2_selected.index)
        num_branch = len(branch0)

    else:
        og_need_check.append(x)
        branch0 = []
        num_branch = 0
    branches_selected.append(branch0)
    branches_number_selected.append(num_branch)


# output the tree file with p value to visualize the result using ggtree
og_need_check = []
for x in all_OG:
    print(x)
    infile0 = input + x
    outfile0 = output + x.replace(".ABSREL.json", ".csv")
    outfile1 = output_tree + x.replace(".ABSREL.json", ".tre")
    outfile2 = output_tree_original + x.replace(".ABSREL.json", ".tre")
    if os.stat(infile0).st_size > 0:
        # more test
        e = phyphy.Extractor(infile0)

        # output the input tree for the hyphy analysis
        original_tree = e.input_tree[0]
        out1 = open(outfile2,"w")
        out1.writelines(original_tree)
        out1.close()

        # output tree with selection information
        e.reveal_branch_attributes()
        s0 = e.branch_attributes
        s1 = s0[0]
        # further update s1 and change the None in the "Corrected P-value" into 1
        for key in s1.keys():
            print(key)
            result0 = s1[key]
            if result0["Corrected P-value"] is None:
                result0["Corrected P-value"] = 1
                s1[key] = result0
        #update branch_attributes
        e.branch_attributes[0] = s1
        # extract the tree
        tree = e.extract_absrel_tree(update_branch_lengths="Full adaptive model")
        out0 = open(outfile1,"w")
        out0.writelines(tree)
        out0.close()

    else:
        og_need_check.append(x)




# result initial summary
all_OG = [x.replace(".ABSREL.json","") for x in all_OG]
result_df = pd.DataFrame({"OG":all_OG,
                           "branch_select":branches_selected,
                           "number_select": branches_number_selected})

OG_sce_mapping0 = pd.read_csv("/Users/luho/Documents/evolution_analysis/data/sce_gene_summary_update.csv")
result_df["sce"] = singleMapping(OG_sce_mapping0["sce"],OG_sce_mapping0["OG"],result_df["OG"])
result_df.to_csv("/Users/luho/Documents/branch_site_heat/heat_result_all.csv")



# merge it with the sce gene annotation
OG_interest = pd.read_csv("/Users/luho/Documents/branch_site_heat/enzyme_need_analysis_for_heat.csv")
OG_interest["number_select"] = singleMapping(result_df["number_select"],result_df["OG"],OG_interest["OG"])
OG_interest["branch_select"] = singleMapping(result_df["branch_select"],result_df["OG"],OG_interest["OG"])
OG_interest.to_csv("/Users/luho/Documents/branch_site_heat/enzyme_need_analysis_for_heat_with_result.csv")




