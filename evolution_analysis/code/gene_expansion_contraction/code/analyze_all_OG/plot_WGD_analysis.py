#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2020-08-23

import xlrd
import seaborn as sns
import matplotlib.pyplot as plt


x = ['WGD', 'Non-WGD']

y = [27,3]

plt.figure(figsize=(3.,2.4))

plt.bar(x,y,width=0.35,color='#7570b3',)

plt.ylim([0,30])
plt.ylabel('Expanded gene families')

plt.tight_layout()

plt.savefig("./WGD_barplot.png", dpi=400, bbox_inches = 'tight')
