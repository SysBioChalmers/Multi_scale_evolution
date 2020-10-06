#!/usr/bin/python

# Note
# The script is used to extract species from specific clade or with specific traits for the systematic branch site model analysis.

import os
import argparse
import pandas as pd
import numpy as np
from Bio import SeqIO

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

def randome_choose_n_species(species_list, num_species):
    """
    This function is randomly choose n species from one big clade
    :param species_list:
    :param num_species:
    :return:
    """
    if len(species_list) > num_species: # so good!
        list_r = np.random.choice(species_list, num_species, replace=False)
    else:
        list_r = np.array(species_list)
    return list_r

def output_seq_base_speciesID(pro_dir, species_input, all_species=False):
    """
    This function is used to output the protein sequences based on the selected species; if all_species = True, then all the protein seq
    will be selected!

    :param pro_dir:
    :param species_input:
    :param all_species:
    :return:
    """

    # pro_dir = pro_dir0
    OG_test0 = list(SeqIO.parse(pro_dir, "fasta"))
    if all_species:
        return OG_test0
    else:
        OG_input1 = []
        # OG_input2 = []
        for record in OG_test0:
            #print(record.id)
            # get the species id of seq
            speciesID = record.id.split("@")[0]
            if speciesID in species_input:
                OG_input1.append(record)
            else:
                pass
        return OG_input1

def get_Reduced_SpeciesID(pro_seq, clade_df, num_random_species=10):
    """
    This function is used to produce the reduced species list
    :param pro_dir:
    :param clade_df:
    :return:
    """

    # pro_input = "/home/luhongzhong/ortholog_343/protein_align_s2_R/OG1587_aa_aligned.fasta"
    # OG_test = list(SeqIO.parse(pro_dir, "fasta"))
    OG_test = pro_seq
    all_OG_ID = []
    for record in OG_test:
        # print(record.id)
        all_OG_ID.append(record.id)
    OG_df = pd.DataFrame({"OG": all_OG_ID})
    OG_df[["OG", "id"]] = OG_df.OG.str.split("@", expand=True, )
    # get clade information for each species
    OG_df["clade"] = singleMapping(clade_df["clade"], clade_df["speciesID"], OG_df["OG"])
    # establish six list
    list1 = []  # Phaffomycetaceae
    list2 = []  # Dipodascaceae-Trichomonascaceae
    list3 = []  # Pichiaceae
    list4 = []  # Saccharomycetaceae
    list5 = []  # CUG-Ser1
    list6 = []  # Saccharomycodaceae
    list7 = []  # Lipomycetaceae
    list_o = []  # others
    for i, x in OG_df.iterrows():
        # print(i, x["clade"])
        s0 = x["clade"]
        if s0 == "Phaffomycetaceae":
            list1.append(x["OG"])
        elif s0 == "Dipodascaceae-Trichomonascaceae":
            list2.append(x["OG"])
        elif s0 == "Pichiaceae":
            list3.append(x["OG"])
        elif s0 == "Saccharomycetaceae":
            list4.append(x["OG"])
        elif s0 == "CUG-Ser1":
            list5.append(x["OG"])

        elif s0 == "Saccharomycodaceae":  # newly added
            list6.append(x["OG"])
        elif s0 == "Lipomycetaceae":  # newly added
            list7.append(x["OG"])

        else:
            list_o.append(x["OG"])
    # randomely choose then species from each dict
    list_1r = randome_choose_n_species(species_list=list1, num_species=num_random_species)
    list_2r = randome_choose_n_species(species_list=list2, num_species=num_random_species)
    list_3r = randome_choose_n_species(species_list=list3, num_species=num_random_species)
    list_4r = randome_choose_n_species(species_list=list4, num_species=num_random_species)
    list_5r = randome_choose_n_species(species_list=list5, num_species=num_random_species)

    list_6r = randome_choose_n_species(species_list=list6, num_species=num_random_species)
    list_7r = randome_choose_n_species(species_list=list7, num_species=num_random_species)
    # next choose seq id for each species
    # firstly combine the choosed species id
    all_species_id = list(list_1r) + list(list_2r) + list(list_3r) + list(list_4r) + list(list_5r) + list(
        list_6r) + list(list_7r) + list_o
    # filter OG id based on the choosed species id
    OG_ID_filter1 = [x for x in all_OG_ID if x.split("@")[0] in all_species_id]
    # check the paralog number
    ratio_seq_per_species = len(set(OG_ID_filter1)) / len(set(all_species_id))
    # print(pro_dir, "===>", ratio_seq_per_species)
    return OG_ID_filter1, ratio_seq_per_species

def calculateSiteLength(fastinput):
    OG_trim = list(SeqIO.parse(fastinput, "fasta"))
    # build a dataframe to calculate the gap ratio in each site
    # check the ID
    length = {}
    for x in OG_trim:
        #print(x.id, '==> length=', len(x.seq))
        #print(x.seq._data)
        aligned_protein = list(x.seq._data)
        gap0 = [x for x in aligned_protein if x == "-"]
        site_length = len(aligned_protein) - len(gap0)
        length[x.id] = site_length
    return length

def ReduceGeneIDofSpecies(pro_dir, geneID_list):
    """
    This function is used to further refine the gene id list for each species. As whole, the gene with the max length
    after the aliggment will be choose as the the representative id of each species

    :param pro_dir:
    :param geneID_list:
    :return:
    """
    # i = "OG5076_aa_aligned.fasta"
    # pro_dir0 = pro_all_dir + i
    # geneID, ratio = get_Redueced_SpeciesID(pro_dir=pro_dir0, clade_df= clade_inf)
    species_id_df = pd.DataFrame({"species_id": geneID_list})
    species_id_df[["species", "gene_id"]] = species_id_df.species_id.str.split("@", expand=True, )
    species_summary = dict()
    for i, x in species_id_df.iterrows():
        #print(x["species"], x["species_id"])
        if x["species"] in species_summary.keys():
            species_summary[x["species"]].append(x["species_id"])
        else:
            species_summary[x["species"]] = [x["species_id"]]
    # then we can decide how to choose which gene id could be used in the followed analysis
    # here the gene id with longest length after the protein alignment will be choosed? NOT SURE IN THIS STEP
    # firstly we obtain the longest
    length_analysis = calculateSiteLength(fastinput=pro_dir)
    # find gene id with the longest
    for key, value in species_summary.items():
        #print(key, value)
        if len(value) == 1:
            pass
        else:
            s0 = value
            length0 = []
            for ss in s0:
                #print(ss)
                length0.append(length_analysis[ss])
            max_length_index = length0.index(max(length0))
            new_value = s0[max_length_index]
            species_summary[key] = [new_value]
    # get the new species gene id list
    geneID_reduced2 = [value for value in species_summary.values()]
    geneID_reduced2 = sum(geneID_reduced2, [])
    return geneID_reduced2

# input information
clade_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/343taxa_speicies-name_clade-name_color-code.xlsx")
clade_inf = clade_inf[["old_speceis_names","Major clade"]]
clade_inf.columns = ["speciesID","clade"]
pro_all_dir = "/home/luhongzhong/ortholog_343/protein_align_s2_R/"
cds_all_dir = "/home/luhongzhong/ortholog_343/cds/"




# branch site model for different clade information
# here as a whole, we extract 6 species randomly from each clade.
# in the branch model based on the clade information, we need to label the related clade as the foreground.
# output directory
out_dir = "/home/luhongzhong/ortholog_343_simplify2/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_simplify2/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_simplify2/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_simplify2/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    print(i)
    #i = "OG16659_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=None, all_species=True)
    # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
    geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df= clade_inf, num_random_species=6)
    # next we can further choose the representative id from each species to reduce paralog genes
    geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
    # next extract the reduced the protein fasta file based on the
    # transfer the aligned protein fasta file and the original cds file into a new folder

    # transfer protein file
    fasta_output = out_dir + i
    OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
    OG_simple = []
    for record in OG_original:
        #print(record.id)
        if record.id in geneID_new:
            OG_simple.append(record)
    SeqIO.write(OG_simple, fasta_output, "fasta")

    # transfer cds file
    cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
    cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
    OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
    OG_simple_cds = []
    for record in OG_original_cds:
        #print(record.id)
        if record.id in geneID_new:
            OG_simple_cds.append(record)
    SeqIO.write(OG_simple_cds, cds_output, "fasta")






# branch site model for the interesting traits


# trait 1 - methanol utilization
# in this case we need update the functions - get_Redueced_SpeciesID
# here based on the module principle, we need more two functions
# one function is to estimate which species should be kept or removed based on the traits or clade information
# then we need reduce the protein fasta file based on the above function
# last we need further randomly choose the interest species
# here methanol utilization will be as an example

# data-preprocess for each phenotype
# read the traits classification data
trait_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name="methonal_utilization")
trait_inf = trait_inf[(trait_inf["Methanol"]=="+") | (trait_inf["Methanol"]=="-")]
# further remove one species species
trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

# in this step, we need firstly remove the species not in above table,
# next we need remove the species with no traits but in the clade with interesting traits
trait_inf0 = trait_inf[["old_species_id","Methanol", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]

# next choose the species without the interest traits but share the same clade information with the target species
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])] # with no interesting trait but share the clade information with the interesting species
trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))] # with no interesting trait and not share the clade information with the interesting species

# here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
# because possible we need conduct the evolution analysis for two groups:
# group1: trait_yes {test}, trait_none_type2{reference};
# group2: trait_none_type1 {test}, trait_none_type2{reference};

# combine the trait_yes with trait_none_type2
species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist() # which can be used for the more test in the future


# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir = "/home/luhongzhong/ortholog_343_methanol/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_methanol/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_methanol/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_methanol/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=species_combine1, all_species=False)
    print(i, "==>", len(OG_filter1))
    if len(OG_filter1)>=1:
        # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
        geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
        # next we can further choose the representative id from each species to reduce paralog genes
        geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
        # next extract the reduced the protein fasta file based on the
        # transfer the aligned protein fasta file and the original cds file into a new folder

        # transfer protein file
        fasta_output = out_dir + i
        OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
        OG_simple = []
        for record in OG_original:
            print(record.id)
            if record.id in geneID_new:
                OG_simple.append(record)
        SeqIO.write(OG_simple, fasta_output, "fasta")

        # transfer cds file
        cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
        cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
        OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
        OG_simple_cds = []
        for record in OG_original_cds:
            print(record.id)
            if record.id in geneID_new:
                OG_simple_cds.append(record)
        SeqIO.write(OG_simple_cds, cds_output, "fasta")
    else:
        pass




# trait 2 - heat tolerance

# data-preprocess for each phenotype
# read the traits classification data
trait_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name="heat")
trait_inf = trait_inf[(trait_inf["heat_tolerance"]=="Yes") | (trait_inf["heat_tolerance"]=="No")]
# further remove one species species
# trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

# in this step, we need firstly remove the species not in above table,
# next we need remove the species with no traits but in the clade with interesting traits
trait_inf0 = trait_inf[["old_species_id","heat_tolerance", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]

# next choose the species without the interest traits but share the same clade information with the target species
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])] # with no interesting trait but share the clade information with the interesting species
trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))] # with no interesting trait and not share the clade information with the interesting species

# here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
# because possible we need conduct the evolution analysis for two groups:
# group1: trait_yes {test}, trait_none_type2{reference};
# group2: trait_none_type1 {test}, trait_none_type2{reference};

# combine the trait_yes with trait_none_type2
species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist() # which can be used for the more test in the future


# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir = "/home/luhongzhong/ortholog_343_heat_tolerance/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_heat_tolerance/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_heat_tolerance/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_heat_tolerance/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=species_combine1, all_species=False)
    print(i, "==>", len(OG_filter1))
    if len(OG_filter1)>=1:
        # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
        geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
        # next we can further choose the representative id from each species to reduce paralog genes
        geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
        # next extract the reduced the protein fasta file based on the
        # transfer the aligned protein fasta file and the original cds file into a new folder

        # transfer protein file
        fasta_output = out_dir + i
        OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
        OG_simple = []
        for record in OG_original:
            print(record.id)
            if record.id in geneID_new:
                OG_simple.append(record)
        SeqIO.write(OG_simple, fasta_output, "fasta")

        # transfer cds file
        cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
        cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
        OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
        OG_simple_cds = []
        for record in OG_original_cds:
            print(record.id)
            if record.id in geneID_new:
                OG_simple_cds.append(record)
        SeqIO.write(OG_simple_cds, cds_output, "fasta")
    else:
        pass




# trait 3 - crabtree effect
# data-preprocess for each phenotype
# read the traits classification data
trait_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name="crabtree_effect")
trait_inf = trait_inf[(trait_inf["crabtree_effect"]=="Yes") | (trait_inf["crabtree_effect"]=="No")]
# further remove one species species
# trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

# in this step, we need firstly remove the species not in above table,
# next we need remove the species with no traits but in the clade with interesting traits
trait_inf0 = trait_inf[["old_species_id","crabtree_effect", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]

# next choose the species without the interest traits but share the same clade information with the target species
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])] # with no interesting trait but share the clade information with the interesting species
trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))] # with no interesting trait and not share the clade information with the interesting species

# here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
# because possible we need conduct the evolution analysis for two groups:
# group1: trait_yes {test}, trait_none_type2{reference};
# group2: trait_none_type1 {test}, trait_none_type2{reference};

# combine the trait_yes with trait_none_type2
species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist() # which can be used for the more test in the future


# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir = "/home/luhongzhong/ortholog_343_crabtree/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_crabtree/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_crabtree/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_crabtree/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=species_combine1, all_species=False)
    print(i, "==>", len(OG_filter1))
    if len(OG_filter1)>=1:
        # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
        geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
        # next we can further choose the representative id from each species to reduce paralog genes
        geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
        # next extract the reduced the protein fasta file based on the
        # transfer the aligned protein fasta file and the original cds file into a new folder

        # transfer protein file
        fasta_output = out_dir + i
        OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
        OG_simple = []
        for record in OG_original:
            print(record.id)
            if record.id in geneID_new:
                OG_simple.append(record)
        SeqIO.write(OG_simple, fasta_output, "fasta")

        # transfer cds file
        cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
        cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
        OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
        OG_simple_cds = []
        for record in OG_original_cds:
            print(record.id)
            if record.id in geneID_new:
                OG_simple_cds.append(record)
        SeqIO.write(OG_simple_cds, cds_output, "fasta")
    else:
        pass





######################################################################################################################
# just for the repeat calculation to check whether the result is similar
# trait 2 - heat tolerance

# data-preprocess for each phenotype
# read the traits classification data
trait_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name="heat")
trait_inf = trait_inf[(trait_inf["heat_tolerance"]=="Yes") | (trait_inf["heat_tolerance"]=="No")]
# further remove one species species
# trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

# in this step, we need firstly remove the species not in above table,
# next we need remove the species with no traits but in the clade with interesting traits
trait_inf0 = trait_inf[["old_species_id","heat_tolerance", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]

# next choose the species without the interest traits but share the same clade information with the target species
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])] # with no interesting trait but share the clade information with the interesting species
trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))] # with no interesting trait and not share the clade information with the interesting species

# here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
# because possible we need conduct the evolution analysis for two groups:
# group1: trait_yes {test}, trait_none_type2{reference};
# group2: trait_none_type1 {test}, trait_none_type2{reference};

# combine the trait_yes with trait_none_type2
species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist() # which can be used for the more test in the future


# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir = "/home/luhongzhong/ortholog_343_heat_tolerance_2/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_heat_tolerance_2/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_heat_tolerance_2/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_heat_tolerance_2/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=species_combine1, all_species=False)
    print(i, "==>", len(OG_filter1))
    if len(OG_filter1)>=1:
        # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
        geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
        # next we can further choose the representative id from each species to reduce paralog genes
        geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
        # next extract the reduced the protein fasta file based on the
        # transfer the aligned protein fasta file and the original cds file into a new folder

        # transfer protein file
        fasta_output = out_dir + i
        OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
        OG_simple = []
        for record in OG_original:
            print(record.id)
            if record.id in geneID_new:
                OG_simple.append(record)
        SeqIO.write(OG_simple, fasta_output, "fasta")

        # transfer cds file
        cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
        cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
        OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
        OG_simple_cds = []
        for record in OG_original_cds:
            print(record.id)
            if record.id in geneID_new:
                OG_simple_cds.append(record)
        SeqIO.write(OG_simple_cds, cds_output, "fasta")
    else:
        pass




######################################################################################################################
# just for the repeat calculation to check whether the result is similar
# trait 3 - crabtree effect
# data-preprocess for each phenotype
# read the traits classification data
trait_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name="crabtree_effect")
trait_inf = trait_inf[(trait_inf["crabtree_effect"]=="Yes") | (trait_inf["crabtree_effect"]=="No")]
# further remove one species species
# trait_inf = trait_inf[trait_inf["old_species_id"]!="yHAB159_Kazachstania_solicola"]

# in this step, we need firstly remove the species not in above table,
# next we need remove the species with no traits but in the clade with interesting traits
trait_inf0 = trait_inf[["old_species_id","crabtree_effect", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]

# next choose the species without the interest traits but share the same clade information with the target species
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]

trait_none_type1 = trait_none[trait_none["clade"].isin(trait_yes["clade"])] # with no interesting trait but share the clade information with the interesting species
trait_none_type2 = trait_none[~(trait_none["clade"].isin(trait_yes["clade"]))] # with no interesting trait and not share the clade information with the interesting species

# here i think that "trait_yes", "trait_none_type1", "trait_none_type2" are important
# because possible we need conduct the evolution analysis for two groups:
# group1: trait_yes {test}, trait_none_type2{reference};
# group2: trait_none_type1 {test}, trait_none_type2{reference};

# combine the trait_yes with trait_none_type2
species_combine1 = trait_yes["species"].tolist() + trait_none_type2["species"].tolist()
species_combine2 = trait_none_type1["species"].tolist() + trait_none_type2["species"].tolist() # which can be used for the more test in the future


# prepare the protein seq and cds seq for the choosed species with and without the related traits
out_dir = "/home/luhongzhong/ortholog_343_crabtree_2/protein_align_s2_R/"
os.system("mkdir /home/luhongzhong/ortholog_343_crabtree_2/")
os.system("mkdir /home/luhongzhong/ortholog_343_crabtree_2/protein_align_s2_R/")
out_dir_cds = "/home/luhongzhong/ortholog_343_crabtree_2/cds_refine/"
os.system("mkdir /home/luhongzhong/ortholog_343_crabtree_2/cds_refine/")
og_list = os.listdir(pro_all_dir)
id_check = []
for i in og_list:
    # i = "OG1351_aa_aligned.fasta"
    pro_dir0 = pro_all_dir + i
    OG_filter1 = output_seq_base_speciesID(pro_dir= pro_dir0, species_input=species_combine1, all_species=False)
    print(i, "==>", len(OG_filter1))
    if len(OG_filter1)>=1:
        # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number
        geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
        # next we can further choose the representative id from each species to reduce paralog genes
        geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
        # next extract the reduced the protein fasta file based on the
        # transfer the aligned protein fasta file and the original cds file into a new folder

        # transfer protein file
        fasta_output = out_dir + i
        OG_original = list(SeqIO.parse(pro_dir0, "fasta"))
        OG_simple = []
        for record in OG_original:
            print(record.id)
            if record.id in geneID_new:
                OG_simple.append(record)
        SeqIO.write(OG_simple, fasta_output, "fasta")

        # transfer cds file
        cds_output = out_dir_cds + i.replace("_aa_aligned.fasta", "_code.fasta")
        cds_dir0 = cds_all_dir + i.replace("_aa_aligned.fasta", "_code.fasta")
        OG_original_cds = list(SeqIO.parse(cds_dir0, "fasta"))
        OG_simple_cds = []
        for record in OG_original_cds:
            print(record.id)
            if record.id in geneID_new:
                OG_simple_cds.append(record)
        SeqIO.write(OG_simple_cds, cds_output, "fasta")
    else:
        pass
