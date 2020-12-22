#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN


import xlrd
import csv
import json
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from scipy.stats import ranksums  # P-value

# worksheet = xlrd.open_workbook(u"./genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx")
# sheet_names = worksheet.sheet_names()
# # print(sheet_names)
# sheet = worksheet.sheet_by_name(sheet_names[6])
# rows = sheet.nrows
# # print(rows)
# species_cell = list()
# crabtree_cell = list()
# for i in range(1,rows) :
#     cell_1 = sheet.cell_value(i,1)
#     species_cell.append(cell_1)
#     crabtree_4 = sheet.cell_value(i,4)
#     crabtree_cell.append(crabtree_4)

# species = species_cell
# crabtree = crabtree_cell

# # print(species[:3])
# # print(clade[:3])

# # print(len(species))  # 343
# # print(len(crabtree))    # 343

# species_crabtree = dict(zip(species,crabtree))
# print(species_crabtree)

# crabtree_species = [species for species,crabtree in species_crabtree.items() if crabtree =='Yes']  # 26

# nocrabtree_species = [species for species,crabtree in species_crabtree.items() if crabtree =='No']  # 76

# print(len(crabtree_species))

# with open("./expansion_all_species_analysis.json", "r") as file :
#     expansion_contraction_data = json.load(file)

# outfile = open("./crabtree_expansion_boxplot.csv", "w")
# csv_writer = csv.writer(outfile)
# csv_writer.writerow(["Crabtree_type", "expansion"])

# for crabtree in crabtree_species :
#     # print(crabtree)
#     for expansion_data in expansion_contraction_data : 
#         if expansion_data['organism']==crabtree :
#             expansion = len(expansion_data['expansion'])  # Schizosaccharomyces_pombe is not include, no expansion data
#             csv_writer.writerow(['Crabtree Effect', int(expansion)])
#             # print(expansion)

# for nocrabtree in nocrabtree_species :
#     # print(crabtree)
#     for expansion_data in expansion_contraction_data : 
#         if expansion_data['organism']==nocrabtree :
#             expansion = len(expansion_data['expansion'])  # Schizosaccharomyces_pombe is not included
#             csv_writer.writerow(['No Crabtree Effect', int(expansion)])

# outfile.close()


alldata = pd.read_csv("./crabtree_expansion_boxplot.csv")
print(alldata.head(3))

# print(alldata.loc[alldata['Crabtree_type']=='Crabtree Effect'])
crabtree_data = alldata.loc[alldata['Crabtree_type']=='Crabtree Effect']
crabtree_expansion = list(crabtree_data['expansion'])

nocrabtree_data = alldata.loc[alldata['Crabtree_type']=='No Crabtree Effect']
nocrabtree_expansion = list(nocrabtree_data['expansion'])

print(len(crabtree_expansion))
print(len(nocrabtree_expansion))

print(ranksums(crabtree_expansion,nocrabtree_expansion))  # pvalue=0.1532330351801178

fig=plt.figure(figsize=(4,4))

hue_order = ['Crabtree Effect', 'No Crabtree Effect']

ax = sns.boxplot(data=alldata, x="Crabtree_type", y="expansion", order=hue_order,
        showfliers=False, linewidth=1)

# ax = sns.stripplot(data=alldata, x="organism", y="species", hue="type", palette=palette, 
#           dodge=True, size=2, linewidth=0.5, alpha=0.3)

# https://stackoverflow.com/questions/58476654/how-to-remove-or-hide-x-axis-label-from-seaborn-boxplot
# plt.xlabel(None) will remove the Label, but not the ticks.
ax.set(xlabel=None)
# plt.xlabel("Organism")

for tick in ax.get_xticklabels() :
    tick.set_rotation(45)

plt.ylabel("Gene family expansion")

plt.xticks(fontsize=8)

plt.tight_layout()

# plt.ylim(0,1000)

# plt.yticks([0,150,300,450])
# # ax.legend(ax.get_legend_handles_labels()[0], ["E", "NE"])

# handles,labels = ax.get_legend_handles_labels()
# # # specify just one legend
# l = plt.legend(handles[0:2], labels[0:2], loc=0)

# https://blog.csdn.net/weixin_38314865/article/details/88633880
plt.savefig("./crabtree_nocrabtree_boxplot.png", dpi=400, bbox_inches ='tight')





# import json
# import csv
# import numpy as np
# import pandas as pd
# import seaborn as sns
# import matplotlib.pyplot as plt


# organisms = ["Candida_glabrata", "Candida_dubliniensis", "Candida_parapsilosis", "Candida_tropicalis", "Candida_albicans", "Yarrowia_lipolytica", "Schizosaccharomyces_pombe", "Saccharomyces_cerevisiae"]

# # # with open("../Data/essential.csv", "w") as outfile :
# outfile = open("../complementaryData/boxplot_data/occurance.csv", "w")
# csv_writer = csv.writer(outfile)
# csv_writer.writerow(["type", "organism", "species"])

# for organism in organisms :
#     # allEssential = set()
#     print("This organism is: %s" % organism.replace("_", " "))
#     with open("../complementaryData/newjson/%s.json" % organism, "r") as f :
#         data = json.load(f)

#     # for complexdata in data :
#     #     allcomplexdata.add((complexdata["id"]))
#     # # csv_writer.writerow(list(data))
#     for complexdata in data :
#         csv_writer.writerow([list(complexdata.values())[0], organism.split('_')[0][0]+'. '+organism.split('_')[1] , complexdata['species']])

# outfile.close()

# alldata = pd.read_csv("../complementaryData/boxplot_data/occurance.csv")
# print(alldata.head(3))


# # rectangular box plot
# palette = {"Complex": '#ed7e17', "Non-complex": '#1ba055'}

# for ind in alldata.index:
#     alldata.loc[ind,'organism'] = '${0}$'.format(alldata.loc[ind,'organism'])

# ax = sns.boxplot(data=alldata, x="organism", y="species", hue="type",
#         palette=palette, showfliers=False, linewidth=1)

# # ax = sns.stripplot(data=alldata, x="organism", y="species", hue="type", palette=palette, 
# #           dodge=True, size=2, linewidth=0.5, alpha=0.3)

# # https://stackoverflow.com/questions/58476654/how-to-remove-or-hide-x-axis-label-from-seaborn-boxplot
# # plt.xlabel(None) will remove the Label, but not the ticks. 
# ax.set(xlabel=None)
# # plt.xlabel("Organism")

# for tick in ax.get_xticklabels() :
#     tick.set_rotation(30)

# plt.ylabel("Number of gene occurance")

# plt.ylim(0,450)

# plt.yticks([0,150,300,450])
# # # ax.legend(ax.get_legend_handles_labels()[0], ["E", "NE"])

# handles,labels = ax.get_legend_handles_labels()
# # # specify just one legend
# l = plt.legend(handles[0:2], labels[0:2], loc=0)

# # https://blog.csdn.net/weixin_38314865/article/details/88633880
# plt.savefig("../complementaryData/figure/occurance_boxplot_italic.png", dpi=400, bbox_inches = 'tight')


# # Results :
