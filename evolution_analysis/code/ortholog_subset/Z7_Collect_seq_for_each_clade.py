#!/usr/bin/python

# Note
# The script is used to calculate the dN/dS from each clade. Thus we need to collect the seq from each clade together.

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
    list_o = []  # other
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

def get_all_SpeciesID(pro_seq):
    """
    This function is used to get all the id from a fasta file
    :param pro_dir:
    :return:
    """

    # pro_input = "/home/luhongzhong/ortholog_343/protein_align_s2_R/OG1587_aa_aligned.fasta"
    # OG_test = list(SeqIO.parse(pro_dir, "fasta"))
    OG_test = pro_seq
    all_OG_ID = []
    for record in OG_test:
        # print(record.id)
        all_OG_ID.append(record.id)
    return all_OG_ID

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
# output directory
clade0 = "Saccharomycetaceae"

def collect_cds_pro_seq(clade00, minimum_seq_num = 3):
    os.mkdir("/home/luhongzhong/ortholog_" + clade00 + "/")
    out_dir = "/home/luhongzhong/ortholog_" + clade00 + "/protein_align_s2_R/"
    os.mkdir(out_dir)
    out_dir_cds = "/home/luhongzhong/ortholog_" + clade00 + "/cds_refine/"
    os.mkdir(out_dir_cds)
    og_list = os.listdir(pro_all_dir)
    id_check = []
    clade_inf0 = clade_inf[clade_inf["clade"] == clade00]
    species_combine1 = clade_inf0["speciesID"].tolist()
    for i in og_list:
        # i = "OG1351_aa_aligned.fasta" # for the test
        print(i)
        pro_dir0 = pro_all_dir + i
        OG_filter1 = output_seq_base_speciesID(pro_dir=pro_dir0, species_input=species_combine1, all_species=False)
        print(i, "==>", len(OG_filter1))
        if len(OG_filter1) >= 1:
            # in this step, mainly the species id is randomly selected, thus the gene ID number can be larger than the species ID number

            # geneID, ratio = get_Reduced_SpeciesID(pro_seq=OG_filter1, clade_df=clade_inf, num_random_species=6)
            geneID = get_all_SpeciesID(pro_seq=OG_filter1)
            # next we can further choose the representative id from each species to reduce paralog genes
            geneID_new = ReduceGeneIDofSpecies(pro_dir=pro_dir0, geneID_list=geneID)
            # next extract the reduced the protein fasta file based on the
            # transfer the aligned protein fasta file and the original cds file into a new folder
            if len(geneID_new) >= minimum_seq_num:
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
        else:
            pass

all_clade = list(clade_inf["clade"].unique())
clade_exclude = ["Saccharomycetaceae"]
clade_need = list(set(all_clade)-set(clade_exclude))

for x in clade_need:
        try:
            collect_cds_pro_seq(clade00=x)
        except:
            pass