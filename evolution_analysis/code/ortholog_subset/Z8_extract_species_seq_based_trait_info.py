#!/usr/bin/env python
# The function were specially designed to extract protein seq for species with heat-tolerance phenotype.
# 2020-04-23


from Bio import SeqIO
import os
import pandas as pd
import argparse

## part1
## calculate the gap ratio from the multiple sequence alignment
def filterSpeciesInOGbasedTrait(fasta_file, outfile):
    '''
    This function is used to calculate the mean or median conservation score based on the protein
    mutiple sequence alignment result.
    :param fasta_file:
    :param outfile:

    :return:
    '''
    # test
    # fasta_file = "/Users/luho/Documents/branch_site_heat/protein_align/OG1145_aa_aligned.fasta"
    #outfile = "/Users/luho/Documents/branch_site_heat/protein_align_refine/OG1145_aa_aligned.fasta"

    # on mac
    #trait_inf =  pd.read_csv("/Users/luho/Documents/branch_site_heat/genome_summary_332_yeasts_heat.csv")
    # on linux
    trait_inf = pd.read_excel(
        "/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx",
        sheet_name="heat")

    trait_inf = trait_inf[(trait_inf["heat_tolerance"] == "Yes") | (trait_inf["heat_tolerance"] == "No")]

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


    species_trait_with_ref = species_combine1
    species_trait_with_ref.append("Saccharomyces_cerevisiae")
    # next we classify all the species into two types
    # species_heat_tolerance = trait_yes["species"].tolist()
    # species_heat_no_tolerance = trait_none_type2["species"].tolist()
    # species_heat_no_tolerance.append("Saccharomyces_cerevisiae")


    # input the aligned protein sequences
    original_pro= list(SeqIO.parse(fasta_file, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    proteinID = []
    for x in original_pro:
        proteinID.append(x.id)

    # update the proteinID based on the above species ID
    proteinID0 = [x for x in proteinID if x.split("@")[0] in species_trait_with_ref]

    original_pro_new = []
    for original_pro0 in original_pro:
        print(original_pro0.id)
        if original_pro0.id in proteinID0:
            original_pro_new.append(original_pro0)
    SeqIO.write(original_pro_new, outfile, "fasta")

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
    #source = '/Users/luho/Documents/branch_site_heat/protein_align/'
    #out_dir = '/Users/luho/Documents/branch_site_heat/protein_refine/'

    all_ID = os.listdir(source)
    for i in all_ID:
        print(i)
        # TEST
        # i = "YAL030W_aa_aligned.fasta"
        fasta_file0 = source + i
        outfile0 = out_dir + i
        filterSpeciesInOGbasedTrait(fasta_file=fasta_file0, outfile=outfile0)

if __name__ == "__main__":
    main()

# example code

# for all OGs
# os.system("mkdir /Users/luho/Documents/branch_site_heat/protein_refine/")
# os.system("python /Users/luho/Documents/evolution_analysis/code/convergent_analysis/Z8_extract_species_seq_based_trait_info.py -p0 /Users/luho/Documents/branch_site_heat/protein_align/ -o /Users/luho/Documents/branch_site_heat/unique_mutation_of_selected_gene/")

# on linux
# os.system("mkdir /home/luhongzhong/ortholog_select_OG_for_heat/protein_reduce_unrelated_species/")
# os.system("python /home/luhongzhong/Documents/evolution_analysis/code/ortholog_subset/Z8_extract_species_seq_based_trait_info.py -p0 /home/luhongzhong/ortholog_select_OG_for_heat/protein_align_s2_R/ -o /home/luhongzhong/ortholog_select_OG_for_heat/protein_reduce_unrelated_species/")




