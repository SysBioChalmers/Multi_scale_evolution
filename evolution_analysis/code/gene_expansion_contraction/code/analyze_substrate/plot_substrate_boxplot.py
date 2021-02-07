#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN


import xlrd
import csv
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

worksheet = xlrd.open_workbook(u"./yeast_clade.xlsx")
sheet_names = worksheet.sheet_names()
# print(sheet_names)
sheet = worksheet.sheet_by_name(sheet_names[0])
rows = sheet.nrows
# print(rows)
species_cell = list()
clade_cell = list()
for i in range(1,rows) :
    cell_1 = sheet.cell_value(i,1)
    species_cell.append(cell_1.lower())
    clade_4 = sheet.cell_value(i,4)
    clade_cell.append(clade_4)

species = species_cell[1:]
clade = clade_cell[1:]

# print(species[-3:])
# print(clade[-3:])

# print(len(species))  # 332
# print(len(clade))    # 332

species_clade = dict(zip(species,clade))
# print(species_clade)

outfile = open("./substrate_boxplot.csv", "w")
csv_writer = csv.writer(outfile)
csv_writer.writerow(["species", "expansion", "contraction", "rapidly_evolving"])

with open('substrate_results.tsv', 'r') as file :
    lines = file.readlines()[1:]

for line in lines :
    data = line.strip().split('\t')
    csv_writer.writerow([species_clade[data[0].lower()], int(data[1]), int(data[2]), int(data[3])])

outfile.close()


alldata = pd.read_csv("./substrate_boxplot.csv")
print(alldata.head(3))

fig=plt.figure(figsize=(8,6))

hue_order = ['Lipomycetaceae', 'Trigonopsidaceae', 'Dipodascaceae/Trichomonascaceae', 'Alloascoideaceae', 'Sporopachydermia clade', 
                'CUG-Ala', 'Pichiaceae', 'CUG-Ser1', 'CUG-Ser2', 'Phaffomycetaceae', 'Saccharomycodaceae', 'Saccharomycetaceae']

ax = sns.boxplot(data=alldata, x="species", y="rapidly_evolving", order=hue_order,
        showfliers=False, linewidth=1)

# ax = sns.stripplot(data=alldata, x="organism", y="species", hue="type", palette=palette, 
#           dodge=True, size=2, linewidth=0.5, alpha=0.3)

# https://stackoverflow.com/questions/58476654/how-to-remove-or-hide-x-axis-label-from-seaborn-boxplot
# plt.xlabel(None) will remove the Label, but not the ticks.
ax.set(xlabel=None)
# plt.xlabel("Organism")

for tick in ax.get_xticklabels() :
    tick.set_rotation(60)

# plt.ylabel("Gene family contraction")
plt.ylabel("Rapidly evolving")

plt.xticks(fontsize=8)

plt.tight_layout()

# plt.ylim(0,450)

# plt.yticks([0,150,300,450])
# # ax.legend(ax.get_legend_handles_labels()[0], ["E", "NE"])

# handles,labels = ax.get_legend_handles_labels()
# # # specify just one legend
# l = plt.legend(handles[0:2], labels[0:2], loc=0)

# https://blog.csdn.net/weixin_38314865/article/details/88633880
plt.savefig("./rapidly_evolving_boxplot.png", dpi=400, bbox_inches='tight')
