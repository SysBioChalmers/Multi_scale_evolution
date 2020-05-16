# this script is used to build the whole pipeline to calculate the dN/dS based on paml
import os
import pandas as pd
# clade information:
template0 = open("/home/luhongzhong/Documents/evolution_analysis/code/integrated_analysis_flow/Evolution_gene_dN_dS_template.py").readlines()

# input information
clade_inf = pd.read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/343taxa_speicies-name_clade-name_color-code.xlsx")
clade_inf = clade_inf[["old_speceis_names","Major clade"]]
clade_inf.columns = ["speciesID","clade"]
all_clade = list(clade_inf["clade"].unique())
clade_exclude = ["Alloascoideaceae", "Sporopachydermia clade", "outgroup", "Saccharomycetaceae"]
clade_need = list(set(all_clade)-set(clade_exclude))
# establish a replace dict
for x in clade_need:
    print(x)
    original = "Saccharomycetaceae"
    new_one = x
    gene_dN_dS = []
    for row0 in template0:
        if original in row0:
            new_row = row0.replace(original, new_one)
            gene_dN_dS.append(new_row)
        else:
            gene_dN_dS.append(row0)
    with open("/home/luhongzhong/Documents/evolution_analysis/code/integrated_analysis_flow/Evolution_gene_dN_dS.py", "w") as out:
        out.writelines(gene_dN_dS)
    out.close()
    exec(open("/home/luhongzhong/Documents/evolution_analysis/code/integrated_analysis_flow/Evolution_gene_dN_dS.py").read())