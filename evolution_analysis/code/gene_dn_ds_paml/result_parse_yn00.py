#!/usr/bin/python

# Note

import os
import argparse
import statistics
import pandas as pd
import numpy as np

# test
# result dir
# prepare a function to summarize the dN_dS
#dnds1= dn_ds0
def Export_dn_ds(dnds1, output_file):
    new_dnds = []
    colname1 = None
    for i, x in enumerate(dnds1):
        print(i)
        if i == 0:
            colname = x.split("  ")
            colname0 = [n.strip(" ").strip("\n") for n in colname if n != ""]
            c1 = ["seq1", "seq2"]
            colname1 = c1 + colname0[1:]
        else:
            x1 = x.split(" ")
            x1 = [n.strip(" ").strip("\n") for n in x1 if n != ""]
            n1 = " ".join(x1[10:])
            n2 = " ".join(x1[7:10])
            x1_new = x1[0:7] + [n2] + [n1]
            x2 = "@".join(x1_new)
            new_dnds.append(x2)
    df = pd.DataFrame({"ID": new_dnds})
    df1 = df['ID'].str.split('@', expand=True)
    df1.columns = colname1
    df1.to_csv(output_file)
    return df1

def calMean_dN_dS(paml_gene_dn_ds_file, output_dir, id0, method="median"):
    result_file = open(paml_gene_dn_ds_file).readlines()
    index0 = [i for i, x in enumerate(result_file) if "seq. seq." in x]
    index1 = [i for i, x in enumerate(result_file) if "(C) LWL85, LPB93 & LWLm methods" in x]
    dn_ds = result_file[index0[0]:index1[0]]
    # further remove the line with only "\n"
    dn_ds0 = [x for x in dn_ds if x != "\n"]
    # save the dn_ds
    Export_dn_ds(dnds1=dn_ds0, output_file=output_dir)
    all_dn_ds_inf = []
    omega_all = []
    for i in dn_ds0:
        print(i)
        if "seq. seq." not in i:
            s = i.split(" ")
            s1 = [x for x in s if x != '']
            seq_comp = tuple(s1[0:2])
            omega = float(s1[6])
            all_dn_ds_inf.append({seq_comp: omega})
            omega_all.append(omega)

    result_dict = {id0: all_dn_ds_inf}
    # here we use np
    #median_dn_ds = statistics.median(omega_all)
    #average_dn_ds = statistics.mean(omega_all)
    #max_dn_ds = max(omega_all)
    new = np.array(omega_all)
    # here should we filter out omega > 50
    new = new[new < 50]
    median_dn_ds = np.median(new[np.isfinite(new)])
    average_dn_ds = np.mean(new[np.isfinite(new)])
    max_dn_ds = np.nanmax(new)
    if method == "mean":
        return average_dn_ds
    elif method == "median":
        return median_dn_ds
    elif method == "max":
        return max_dn_ds
    else:
        return result_dict




# for all the orthologs subset
result_dir = "/home/luhongzhong/ortholog_343/result/"
# output file
output_dir ="/home/luhongzhong/ortholog_343/result_paml/"
method0 = "median"


def main():
    parser = argparse.ArgumentParser(
            formatter_class = argparse.RawDescriptionHelpFormatter,
            description = 'Unify the protein id name for 1011 sce proteins')
    #adding arguments
    parser.add_argument('-i', metavar = 'input_file', type = str, help = 'result file')
    parser.add_argument('-o', metavar = 'output_file', type = str, help = 'output file to store the result')
    parser.add_argument('-m', metavar='parameter', type=str, help='method to calculate dN/dS')
    args = parser.parse_args()

    result_dir = args.i
    #set up output file name if none is given
    if args.o is None:
        output_dir = "data/"
    else:
        output_dir = args.o
    try:
        os.mkdir(output_dir)
    except: pass

    method0 = args.m
    # for the batch process
    all_id = os.listdir(result_dir)
    dn_ds = []
    for i in all_id:
        print(i)
        out0 = output_dir + i.replace(".out_yn00", "_yn00.csv")
        inputfile = result_dir + i
        try:
            w0 = calMean_dN_dS(paml_gene_dn_ds_file=inputfile, output_dir=out0, id0=i, method=method0)
            dn_ds.append(w0)
        except:
            w0 = None
            dn_ds.append(w0)

    dn_ds_result = pd.DataFrame({"OG": all_id, "dN_dS": dn_ds})
    dn_ds_result.to_csv(output_dir + "gene_dn_ds.csv")

if __name__ == "__main__":
    main()

# note:
# The script should be redesigned so that it can be ran from the commond line
# python /home/luhongzhong/Documents/evolution_analysis/code/gene_dn_ds_paml/result_parse_yn00.py -i /home/luhongzhong/ortholog_343/result/ -o /home/luhongzhong/ortholog_343/result_paml/ -m median
