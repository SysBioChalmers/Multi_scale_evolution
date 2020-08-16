#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-04-02

import json
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
# https://zhuanlan.zhihu.com/p/72534851


with open("./878HGTs.json", "r") as outfile :
    geneAll = json.load(outfile)

geneoccurance = [int(geneOne['species']) for geneOne in geneAll]

cluster1_1 = len([gene for gene in geneoccurance if gene>0 and gene<=10])
cluster1_2 = len([gene for gene in geneoccurance if gene>10 and gene<=20])
cluster1_3 = len([gene for gene in geneoccurance if gene>20 and gene<=30])
cluster1_4 = len([gene for gene in geneoccurance if gene>30 and gene<=40])
cluster1_5 = len([gene for gene in geneoccurance if gene>40 and gene<=50])
cluster2 = len([gene for gene in geneoccurance if gene>50 and gene<=100])
cluster3 = len([gene for gene in geneoccurance if gene>100 and gene<=150])
cluster4 = len([gene for gene in geneoccurance if gene>150 and gene<=200])
cluster5 = len([gene for gene in geneoccurance if gene>200 and gene<=250])
cluster6 = len([gene for gene in geneoccurance if gene>250 and gene<=300])
cluster7 = len([gene for gene in geneoccurance if gene>300])

print(cluster1_1)
print(cluster2)
print(cluster3)
print(cluster4)
print(cluster5)
print(cluster6)
print(cluster7)

geneNumber = dict()
geneNumber['1-10'] = cluster1_1/878
geneNumber['10-20'] = cluster1_2/878
geneNumber['20-30'] = cluster1_3/878
geneNumber['30-40'] = cluster1_4/878
geneNumber['40-50'] = cluster1_5/878
# geneNumber['50-100'] = cluster2/878
# geneNumber['100-150'] = cluster3/878
# geneNumber['150-200'] = cluster4/878
# geneNumber['200-250'] = cluster5/878
# geneNumber['250-300'] = cluster6/878
# geneNumber['300-343'] = cluster7/878

geneNumber['50-200'] = (cluster2+cluster3+cluster4)/878
geneNumber['200-343'] = (cluster5+cluster6+cluster7)/878


# print(geneNumber)

data = pd.Series(geneNumber)

# myfont=FontProperties(size=14)
# sns.set(font=myfont.get_name())

plt.rcParams['figure.figsize'] = (8.0, 6.0)

lbs= data.index
explodes=[0.1 if i=='1-10' else 0 for i in lbs]
plt.pie(data, explode=explodes,labels=lbs, autopct="%1.1f%%",
                                colors=sns.color_palette("muted"),startangle = 90,pctdistance = 0.6,
          textprops={'fontsize':14,'color':'black'})


plt.axis('equal')  

plt.savefig("./878HGT_pie_1_50.png", dpi=400)







