#!/usr/bin/env python
# The function were mainly used to find the common residues for a group of species with the same trait
# Hongzhong
# 2020-04-23


from Bio import SeqIO
import os
import pandas as pd
import argparse

## part1
## calculate the gap ratio from the multiple sequence alignment
def calculateSiteRatio(df_input, pi_cutoff=0.95):
    # df_input['gap_ratio'] = [None] * df_input.shape[0]
    # df_input['site_ratio'] = [None] * df_input.shape[0]
    gap_sum = []
    site_sum = []
    all_site_ratio = []
    # calculate the element frequency
    # be careful using the row index in the loop
    for i, x in df_input.iterrows():
        print(i)
        # i= 601
        # print(df_input.iloc[i,])
        s = x
        result = s.value_counts().to_dict()
        print(result)
        all_number = sum(result.values())
        site_ratio = {}
        for key, value in result.items():
            ratio = result[key] / all_number
            print(key, ratio)
            if key != "-" and ratio >= pi_cutoff:
                site_ratio[key] = ratio

        all_site_ratio.append(site_ratio)



        if '-' in result.keys():
            gap_value = result['-'] / all_number
        else:
            gap_value = 0

        site_sum.append(result)
        gap_sum.append(gap_value)
    # df_input['gap_ratio'] = gap_sum
    # df_input['site_ratio'] = site_sum
    return site_sum, all_site_ratio


def connect_site_data_with_seq(fasta_file, outfile, sce_as_ref=False):
    '''
    This function is used to calculate the mean or median conservation score based on the protein
    mutiple sequence alignment result.
    :param fasta_file:
    :param outfile:
    :sce_as_ref

    :return:
    '''
    # test
    # fasta_file = "/Users/luho/Documents/branch_site_heat/protein_align/OG3865_aa_aligned.fasta"
    # sce_as_ref = True
    # outfile = "/Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/OG3865.csv"

    # input the aligned protein sequences
    OG_original = list(SeqIO.parse(fasta_file, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    df_site = pd.DataFrame()
    geneID = []
    seq_legnth_no_gap = []
    for x in OG_original:
        print(x.id, '==> length=', len(x.seq))
        print(x.seq._data)
        seq0 = x.seq._data
        seq1 = seq0.replace("-", "")
        seq1_length = len(seq1)
        seq_legnth_no_gap.append(seq1_length)
        geneID.append(x.id)
        df_site[x.id] = list(x.seq._data)
    # fistly remove species which we are not sure about their detail trait information
    # here as an example, we mainly focus on the heat tolerance


    #species_trait = pd.read_csv("/Users/luho/Documents/branch_site_heat/genome_summary_332_yeasts_heat.csv")
    #species_trait1 = species_trait[(species_trait["heat_tolerance"]=="Yes") | ( species_trait["heat_tolerance"]=="No")]


    trait_inf =  pd.read_csv("/Users/luho/Documents/branch_site_heat/genome_summary_332_yeasts_heat.csv")
    trait_inf = trait_inf[(trait_inf["heat_tolerance"] == "Yes") | (trait_inf["heat_tolerance"] == "No")]
    # further remove one species species
    # trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

    # in this step, we need firstly remove the species not in above table,
    # next we need remove the species with no traits but in the clade with interesting traits
    trait_inf0 = trait_inf[["old_species_id", "heat_tolerance", "Major clade"]]
    trait_inf0.columns = ["species", "trait", "clade"]

    # firstly choose the species with the interest traits and its clade information
    trait_yes = trait_inf0[(trait_inf0["trait"] == "+") | (trait_inf0["trait"] == "Yes")]

    # next choose the species without the interest traits but share the same clade information with the target species
    trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

    trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])]  # with no interesting trait but share the clade information with the interesting species
    trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))]  # with no interesting trait and not share the clade information with the interesting species

    # here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
    # because possible we need conduct the evolution analysis for two groups:
    # group1: trait_yes {test}, trait_none_type2{reference};
    # group2: trait_none_type1 {test}, trait_none_type2{reference};

    # combine the trait_yes with trait_none_type2
    species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
    species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist()  # which can be used for the more test in the future




    #be careful about this step!!!!!!!!!
    #species_trait_with_ref = species_trait1["old_species_id"].tolist()
    #here we use the new species list
    species_trait_with_ref = species_combine1
    species_trait_with_ref.append("Saccharomyces_cerevisiae")
    # next we classify all the species into two types
    species_heat_tolerance = trait_yes["species"].tolist()
    species_heat_no_tolerance = trait_none_type2["species"].tolist()
    species_heat_no_tolerance.append("Saccharomyces_cerevisiae")





    # get the new df_site based on the geneID_filter
    geneID_filter = [x for x in geneID if x.split("@")[0] in species_trait_with_ref]
    df_site_new = df_site[geneID_filter]
    df_site_new['gap_ratio'] = [None] * df_site_new.shape[0]
    df_site_new['site_ratio'] = [None] * df_site_new.shape[0]


    # set the reference seq to enable map the common sites onto the protein 3D structures
    # be careful to choose the reference seq from sce as in a ortholog group, there may be several paralogs
    if sce_as_ref:
        # type 2
        # choose s288c seq as the reference seq automatically
        # here we have two datasets, one for 343 species genomes and another for 1011 sce genomes
        # the gene id of reference sce 288c can be different between the two projects.
        index_general = [i for i, x in enumerate(geneID) if "Saccharomyces_cerevisiae@" in x or "SACE_288c_" in x]
    else:
        # type 1
        # choose the longest seq as the reference
        index_general = [i for i,x in enumerate(seq_legnth_no_gap) if x == max(seq_legnth_no_gap)]

    if len(index_general) >=1:
        refseq = OG_original[index_general[0]].seq._data
        refseq0 = list(refseq)
        df_site_new['refsite'] = refseq0
        df_site_new_no_gap = df_site_new[df_site_new["refsite"] !="-"]
    else:
        df_site_new['refsite'] = [None]*df_site_new.shape[0]
        df_site_new_no_gap = df_site_new[df_site_new["refsite"] != "-"]

    # rearrange the column order
    geneID_test = [x for x in geneID if x.split("@")[0] in species_heat_tolerance]
    geneID_ref = [x for x in geneID if x.split("@")[0] in species_heat_no_tolerance]
    new_column = geneID_test + geneID_ref
    new_column.append('refsite')
    df_site_new_no_gap = df_site_new_no_gap[new_column]
    df_site_test = df_site_new_no_gap[geneID_test]
    df_site_ref = df_site_new_no_gap[geneID_ref]
    # then try to calculate the highly conserved sites from two groups
    # here we can use pidentity =90% as the cut-off
    # so for example, in the test, residue at PI=90% is E; in the reference, residue at PI=90% is F. Then
    # we can say that the residue could be unique for the test group
    a, b = calculateSiteRatio(df_input=df_site_test, pi_cutoff=0.8)
    c, d = calculateSiteRatio(df_input=df_site_ref, pi_cutoff=0.2)
    df_site_new_no_gap["site_test"] = a
    df_site_new_no_gap["conserved_test"] = b
    df_site_new_no_gap["site_ref"] = c
    df_site_new_no_gap["conserved_ref"] = d


    # check whether the mutation is unique from test group
    unique_sign = []
    for x, y in zip(b, d):
        if not x:
            unique_sign.append("NO")

        else:
            residue_test = list(x.keys())[0]
            residue_ref = list(y.keys())
            if residue_test not in residue_ref:
                unique_sign.append("Yes")
                print("Yes")
            else:
                unique_sign.append("NO")

    df_site_new_no_gap["unique_mutation"] = unique_sign
    # only output the result with the unique mutation from the test group
    if "Yes" in unique_sign:
        df_site_new_no_gap.to_csv(outfile)






"""
# test
fasta_file0 = "/Users/luho/Documents/branch_site_heat/protein_align/OG1145_aa_aligned.fasta"
sce_as_ref = False
outfile0 = "/Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/OG1145.csv"
connect_site_data_with_seq(fasta_file=fasta_file0, outfile=outfile0, sce_as_ref=False)
"""




# main
def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Parse the dN/dS data calculated by Hyphy')
    
    #adding arguments
    parser.add_argument('-p0', metavar='input_file', type=str, help='input the protein seq alignment')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')

    # input
    args = parser.parse_args()
    source = args.p0
    out_dir = args.o

    # test code
    # source = '/Users/luho/Documents/branch_site_heat/protein_align/'
    # out_dir = '/Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/'

    all_ID = os.listdir(source)
    for i in all_ID:
        print(i)
        # TEST
        # i = "YAL030W_aa_aligned.fasta"
        fasta_file0 = source + i
        outfile0 = out_dir + i.replace("_aa_aligned.fasta", ".csv")
        connect_site_data_with_seq(fasta_file=fasta_file0, outfile=outfile0, sce_as_ref=True)


    # data summary
    all_target_OG = os.listdir(out_dir)
    unique_mutation_sum = []
    site_all = []
    for ss in all_target_OG:
        print(ss)
        #ss = "OG2701.csv"
        og_inf = pd.read_csv(out_dir + ss)
        # if with sce as the reference, first give the coordinate, then return the the related unique mutation information
        og_inf["coordinate"] = list(range(1, og_inf.shape[0]+1)) # give the coordinates
        # filter the unique mutation
        og_inf1 = og_inf[og_inf["unique_mutation"]=="Yes"]
        # get the coordinate and unique_mutation
        site_summary =[]
        for i, x in og_inf1.iterrows():
            print(x["conserved_test"], x["coordinate"])
            site_test0 = list(x["conserved_test"])[2]
            coordinate0 = x["coordinate"]
            site_inf = site_test0 + str(coordinate0)
            site_summary.append(site_inf)

        unique_mutation_sum.append(og_inf1.shape[0])
        site_all.append(site_summary)

    unique_site_df = pd.DataFrame({"OG":all_target_OG, "num":unique_mutation_sum, "site_inf":site_all})
    unique_site_df.to_csv('/Users/luho/Documents/branch_site_heat/unique_mutation_analaysis_result.csv')

if __name__ == "__main__":
    main()

# example code

# for all OGs
# os.system("mkdir /Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/")
# os.system("python /Users/luho/Documents/evolution_analysis/code/convergent_analysis/1_common_residue_site_analysis.py -p0 /Users/luho/Documents/branch_site_heat/protein_align/   -o /Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/")



