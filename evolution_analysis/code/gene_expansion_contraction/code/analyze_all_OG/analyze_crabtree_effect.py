#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN


import xlrd
import csv
import json
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

worksheet = xlrd.open_workbook(u"./genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx")
sheet_names = worksheet.sheet_names()
# print(sheet_names)
sheet = worksheet.sheet_by_name(sheet_names[6])
rows = sheet.nrows
# print(rows)
species_cell = list()
crabtree_cell = list()
for i in range(1,rows) :
    cell_1 = sheet.cell_value(i,1)
    species_cell.append(cell_1)
    crabtree_4 = sheet.cell_value(i,4)
    crabtree_cell.append(crabtree_4)

species = species_cell
crabtree = crabtree_cell

# print(species[:3])
# print(clade[:3])

# print(len(species))  # 343
# print(len(crabtree))    # 343

species_crabtree = dict(zip(species,crabtree))
print(species_crabtree)

crabtree_species = [species for species,crabtree in species_crabtree.items() if crabtree =='Yes']  # 26

nocrabtree_species = [species for species,crabtree in species_crabtree.items() if crabtree =='No']  # 76

print(len(crabtree_species))

with open("./expansion_all_species_analysis.json", "r") as file :
    expansion_contraction_data = json.load(file)

# outfile = open("./crabtree_expansion_boxplot.csv", "w")
# csv_writer = csv.writer(outfile)
# csv_writer.writerow(["species", "expansion"])

i = 0
for crabtree in crabtree_species :
    print(crabtree)
    i += 1
    for expansion_data in expansion_contraction_data : 
        if expansion_data['organism']==crabtree :
            expansion = expansion_data['expansion']  # Schizosaccharomyces_pombe is not included
            print(len(expansion))

    if i == 1 :
        intersection = set(expansion)
    else :
        intersection = intersection.intersection(set(expansion))

print(len(intersection))  # 396

print(intersection)




# alldata = pd.read_csv("./crabtree_expansion_boxplot.csv")
# print(alldata.head(3))

# fig=plt.figure(figsize=(8,6))

# hue_order = ['Lipomycetaceae', 'Trigonopsidaceae', 'Dipodascaceae/Trichomonascaceae', 'Alloascoideaceae', 'Sporopachydermia clade', 
#                 'CUG-Ala', 'Pichiaceae', 'CUG-Ser1', 'CUG-Ser2', 'Phaffomycetaceae', 'Saccharomycodaceae', 'Saccharomycetaceae']

# ax = sns.boxplot(data=alldata, x="species", y="expansion", order=hue_order,
#         showfliers=False, linewidth=1)

# # ax = sns.stripplot(data=alldata, x="organism", y="species", hue="type", palette=palette, 
# #           dodge=True, size=2, linewidth=0.5, alpha=0.3)

# # https://stackoverflow.com/questions/58476654/how-to-remove-or-hide-x-axis-label-from-seaborn-boxplot
# # plt.xlabel(None) will remove the Label, but not the ticks.
# ax.set(xlabel=None)
# # plt.xlabel("Organism")

# for tick in ax.get_xticklabels() :
#     tick.set_rotation(60)

# plt.ylabel("Gene family contraction")

# plt.xticks(fontsize=8)

# plt.tight_layout()

# # plt.ylim(0,450)

# # plt.yticks([0,150,300,450])
# # # ax.legend(ax.get_legend_handles_labels()[0], ["E", "NE"])

# # handles,labels = ax.get_legend_handles_labels()
# # # # specify just one legend
# # l = plt.legend(handles[0:2], labels[0:2], loc=0)

# # https://blog.csdn.net/weixin_38314865/article/details/88633880
# plt.savefig("./contraction_boxplot.png", dpi=400, bbox_inches = 'tight')

