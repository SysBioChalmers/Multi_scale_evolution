# -*- coding: utf-8 -*-
# -*- python 3 -*-
# -*- hongzhong Lu -*-

from Bio import SeqIO
import os
import pandas as pd
# set the directory
os.chdir('/Users/luho/Documents/GitHub/proteinER/src')

## part1 
## calculate the gap ratio from the multiple sequence alignment
source = '/Users/luho/Documents/GitHub/proteinER/measuring_dNdS/'
file1 = source + 'OG5327_aa_aligned.fasta'

OG_original = list(SeqIO.parse(file1, "fasta"))

# check the length
len(OG_original)

# build a dataframe to calculate the gap ratio in each site
# check the ID
df_site = pd.DataFrame()
for x in OG_original:
    print(x.id, '==> length=',len(x.seq))
    print(x.seq._data)
    df_site[x.id] = list(x.seq._data)

df_site['gap_ratio'] = [None]*df_site.shape[0]
df_site['site_ratio'] = [None]*df_site.shape[0]

gap_sum = []
site_sum = []
# calculate the element frequency
for i,x in df_site.iterrows():
    #i= 1
    # print(df_site.iloc[i,])
    s = df_site.iloc[i,]
    result =s.value_counts().to_dict()
    print(result)
    all_number = sum(result.values())
    if '-' in result.keys():
        gap_value = result['-']/all_number
    else:
        gap_value = 0
    site_sum.append(result)
    gap_sum.append(gap_value)

df_site['gap_ratio'] = gap_sum
df_site['site_ratio'] = site_sum





## part2
## merge the above data with rate data
# choose sce s288c seq
refseq =  OG_original[107].seq._data
refseq0 = list(refseq)

# for the site specific dN/dS from commond line
dnds = pd.read_csv('/Users/luho/Documents/GitHub/proteinER/result/extracted_OG5327_dNdS.csv', sep=",")
dnds['gap_ratio'] = df_site['gap_ratio']
dnds['refsite'] = refseq0
# remove the gaps
dnds1 = dnds[dnds['refsite'] !='-']
coordinate = list(range(1, (dnds1.shape[0]+1)))
dnds1['coordinate'] = coordinate
dnds1['direction'] = dnds1['beta'] > dnds1['alpha']

# for the site specific dN/dS from datamonkey
# read csv file
dnds_monkey = pd.read_csv('/Users/luho/Documents/GitHub/proteinER/result/datamonkey_OG5327_dNdS.csv')
dnds_monkey['gap_ratio'] = df_site['gap_ratio']
dnds_monkey['refsite'] = refseq0
# remove the gaps
dnds_monkey1 = dnds_monkey[dnds_monkey['refsite'] !='-']
coordinate = list(range(1, (dnds_monkey1.shape[0]+1)))
dnds_monkey1['coordinate'] = coordinate
dnds_monkey1['direction'] = dnds_monkey1['beta'] > dnds_monkey1['alpha']

# save the result
dnds1.to_excel('../result/extracted_OG5327_dNdS_YPR001W.xlsx')
dnds_monkey1.to_excel('../result/datamonkey_OG5327_dNdS_YPR001W.xlsx')


# for the relative rate from commond line
relative_rate = pd.read_csv('/Users/luho/Documents/GitHub/proteinER/result/OG5327_relative_site_rates.csv')
relative_rate['gap_ratio'] = df_site['gap_ratio']
relative_rate['refsite'] = refseq0
# remove the gaps
relative_rate = relative_rate[relative_rate['refsite'] !='-']
coordinate = list(range(1, (relative_rate.shape[0]+1)))
relative_rate['coordinate'] = coordinate
relative_rate.to_excel('../result/OG5327_relative_rate_YPR001W.xlsx')





# for the conservation score calculated by the JSD method
conservation_score_jds = open("/Users/luho/Documents/GitHub/proteinER/result/OG5327_conservation_score_jsd").readlines()
conservation_score_jds = conservation_score_jds[2:]
column_inf = []
score_inf = []
for line in conservation_score_jds:
    print(line)
    colum_num = line.split("\t")[0].strip(" ")
    score_num = line.split("\t")[1].strip(" ")
    column_inf.append(colum_num)
    score_inf.append(score_num)

conservation_jds_df = pd.DataFrame({"site": column_inf,
                                    "score": score_inf})

conservation_jds_df['gap_ratio'] = df_site['gap_ratio']
conservation_jds_df['refsite'] = refseq0
# remove the gaps
conservation_jds_df = conservation_jds_df[conservation_jds_df['refsite'] !='-']
coordinate = list(range(1, (conservation_jds_df.shape[0]+1)))
conservation_jds_df['coordinate'] = coordinate
conservation_jds_df.to_excel('../result/OG5327_conservation_score_YPR001W_jsd.xlsx')

















