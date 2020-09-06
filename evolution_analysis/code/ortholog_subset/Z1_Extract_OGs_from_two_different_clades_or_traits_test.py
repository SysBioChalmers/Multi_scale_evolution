#!/usr/bin/python
# Note
import os
from Bio import SeqIO
import pandas as pd
import shutil

#####################################################################################
# The script is used to species from two different clades to the method test!
#####################################################################################

def filterPairedCDS(pro_input, cds_input, pro_output, cds_output, species_choose):
    """
    This function is used to choose species from two test clades.
    This function is just used for the test!
    :param pro_input:
    :param cds_input:
    :param pro_output:
    :param cds_output:
    :param species_choose:
    :return:
    """

    #species_choose = ["Saccharomyces_cerevisiae", "Yarrowia_lipolytica"]
    OG_trim = list(SeqIO.parse(pro_input, "fasta"))
    paired_pro = []
    pro_id = []
    for record in OG_trim:
        print(record.id, len(list(record.seq)))
        s0 = record.id
        s1 = s0.split("@")[0]
        if s1 in species_choose:
            paired_pro.append(record)
            pro_id.append(s1)
        else:
            pass

    OG_trim2 = list(SeqIO.parse(cds_input, "fasta"))
    paired_cds = []
    for record in OG_trim2:
        print(record.id, len(list(record.seq)))
        c0 = record.id
        c1 = c0.split("@")[0]
        if c1 in species_choose:
            paired_cds.append(record)
        else:
            pass

    species_in_choose = list(set(pro_id))
    branch1 = ["Saccharomyces_cerevisiae", "Saccharomyces_paradoxus"]
    branch2 = ["Candida_albicans"]
    # check whether the specific branch has the related species
    check1 = list(set(branch1) & set(species_in_choose))
    check2 = list(set(branch2) & set(species_in_choose))

    if check1 and check2:
        SeqIO.write(paired_pro, pro_output, "fasta")
        SeqIO.write(paired_cds, cds_output, "fasta")
    else:
        print(" The number of seq from one ortholog is smaller than 2!")







##################################################################################
# anaerobic condition
# filter cds based on species number in the foreground and reference group
##################################################################################
cdssource1 = "/home/luhongzhong/ortholog_343_anaerobic/cds_refine/"
cds_out = "/home/luhongzhong/ortholog_343_anaerobic/cds_refine_filter/"
os.system("mkdir /home/luhongzhong/ortholog_343_anaerobic/cds_refine_filter/")

trait_inf = pd.read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet_name = "anaerobic")
trait_inf = trait_inf[(trait_inf["anaerobic"] =="Yes") | (trait_inf["anaerobic"] =="No")]

trait_inf0 = trait_inf[["old_species_id","anaerobic", "Major clade"]]
trait_inf0.columns = ["species","trait", "clade"]

# firstly choose the species with the interest traits and its clade information
trait_yes = trait_inf0[(trait_inf0["trait"]=="+") | (trait_inf0["trait"]=="Yes")]
trait_none = trait_inf0[(trait_inf0["trait"] != "+") & (trait_inf0["trait"] != "Yes")]
species_foreground = trait_yes["species"].tolist()
species_background = trait_none["species"].tolist()

og_initial = os.listdir(cdssource1)
for og in og_initial:
    print(og)
    #og ="OG1006_code.fasta" # test
    input_dir = cdssource1 + og
    OG_trim = list(SeqIO.parse(input_dir, "fasta"))
    pro_id = []
    species_foreground1 = 0
    species_background1 = 0
    for record in OG_trim:
        print(record.id, len(list(record.seq)))
        s0 = record.id
        s1 = s0.split("@")[0]
        pro_id.append(s1)
        # calucate the intersection of species with the trait_yes and trait_none
        species_foreground1 = len(set(pro_id) & set(species_foreground))
        species_background1 = len(set(pro_id) & set(species_background))
    if species_foreground1 >=3 and species_background1 >=3:
        shutil.copy(input_dir, cds_out)

