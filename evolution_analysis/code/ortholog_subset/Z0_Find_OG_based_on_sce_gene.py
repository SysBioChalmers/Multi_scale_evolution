#--------------------------------------------------------------------------------------
# This script will be integrated with the evolution analysis pipeline!!
# The data directory is based on the mac, should be updated in the future.
# Hongzhong Lu
# 2020-04-07
#--------------------------------------------------------------------------------------
import os    ##for directory
import pandas as pd

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

def splitAndCombine(gene, rxn, sep0, moveDuplicate=False):
    ## one rxn has several genes, this function was used to splite the genes
    ## used for the dataframe data

    gene = gene.fillna('NA')  # fill the NaN with 'NA'
    gene0 = gene.tolist()
    rxn0 = rxn.tolist()
    s1 = list()
    s2 = list()
    for i in range(len(gene0)):
        s1 = s1 + [rxn0[i]] * len(gene0[i].split(sep0))
        s2 = s2 + gene0[i].split(sep0)
    df0 = pd.DataFrame({'V1': s1,
                        'V2': s2}
                       )
    if moveDuplicate == True:
        df00 = df0.drop_duplicates()
    else:
        df00 = df0
    return df00


# build the sce gene and ortholog id
OG_sce_mapping = pd.read_excel("/Users/luho/Documents/evolution_analysis/data/sce_gene_summary.xlsx")
OG_sce_mapping["sce_gene"] = OG_sce_mapping["sce_gene"].str.replace("[", "").str.replace("]","").str.replace("Saccharomyces_cerevisiae@","").str.replace("'","")

OG_sce_mapping0 = splitAndCombine(gene=OG_sce_mapping["sce_gene"], rxn=OG_sce_mapping["OrthologID"], sep0=",")


# for the heat
enzyme_need_analysis = pd.read_excel("/Users/luho/Documents/branch_site_heat/enzyme_need_heat.xlsx")
enzyme_need_analysis["OG"] = singleMapping(description=OG_sce_mapping0["V1"], item1=OG_sce_mapping0["V2"], item2=enzyme_need_analysis["loucs"])
enzyme_need_analysis.to_csv("/Users/luho/Documents/branch_site_heat/enzyme_need_analysis_for_heat.csv")


# for the crabtree
enzyme_need_analysis = pd.read_excel("/Users/luho/Documents/branch_site_crabtree/enzyme_need_crabtree.xlsx")
enzyme_need_analysis["OG"] = singleMapping(description=OG_sce_mapping0["V1"], item1=OG_sce_mapping0["V2"], item2=enzyme_need_analysis["locus"])
enzyme_need_analysis.to_csv("/Users/luho/Documents/branch_site_crabtree/enzyme_need_analysis_for_crabtree.csv")
