#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN
# Date: 2019-12-30

# This python script is to generate the fasta file used to implement Reciprocal BLAST Hits (RBH)

import os
import json
from Bio import SeqIO


def get_querySeq(strain) :
    # get the protein sequence accoding to protein sequence id
    with open("/Users/leyu/Documents/coding/evolution_code/orthomcl_output/343taxa_proteins.fasta", "rU") as handleGene :
        # proteinSeq = dict()

        with open("../fasta/%s_query.fasta" % strain, "w") as f :

            for record in SeqIO.parse(handleGene, "fasta") :
        # ['__add__', '__bool__', '__class__', '__contains__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__',
        # '__getattribute__', '__getitem__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__le___', '__len__', '__lt__', 
        # '__module__', '__ne__', '__new__', '__nonzero__', '__radd__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', 
        # '__subclasshook__', '__weakref__', '_per_letter_annotations', '_seq', '_set_per_letter_annotations', '_set_seq', 'annotations', 'dbxrefs', 'description', 
        # 'features', 'format', 'id', 'letter_annotations', 'lower', 'name', 'reverse_complement', 'seq', 'translate', 'upper']
                # if record.id.startswith("Candida_albicans") :
                if record.id.startswith(strain) :
                    f.write(">%s\n" % (record.id))
                    f.write("%s\n" % (record.seq))                
                    # proteinSeq[record.id] = str(record.seq)
            print('This is %s' %(strain.replace('_', ' ')))
            # print("The protein number of %s is: %d" % (strain.replace('_', ' '),len(proteinSeq)))
            print('-------------------------------------')
            # for key in proteinSeq.keys() :
            #     print(key)
            #     print(proteinSeq[key])
        # return proteinSeq

def get_tabSeq() :
    filenames = os.listdir('../original')
    for filename in filenames :
        # print(filename[:-4])
        with open('../tab_fasta/%s_ref.fasta' % filename[:-4].replace(' ','_'), 'w') as f :
            if filename.endswith('tab') :
                with open('../original/%s' % filename, 'r') as handleProtein :
                    data = handleProtein.readlines()[1:]
                    for lines in data :
                        line = lines.strip('\n').split('\t')
                        f.write('>%s' % (line[0]))
                        f.write('\n')
                        f.write(line[-1])
                        f.write('\n')
                        
def process_fastaSeq() :
    # # get the protein sequence accoding to protein sequence id
    # with open("../original/Tetrapisispora phaffii.fasta", "rU") as handleGene :
    #     proteinSeq = dict()
    #     for record in SeqIO.parse(handleGene, "fasta") :
    #         print(record.id)
    #         print(record.seq)
    path = '../original/'
    filenames = os.listdir('../original')
    for filename in filenames :
        if filename.endswith('fasta') :
            oldname = path + filename
            newname = path + filename.split('.')[0].replace(' ', '_') + '_ref.fasta'
            # print(newname)
            os.rename(oldname,newname)


def main() :
    path = '../fasta/'
    # filenames = os.listdir('../fasta')
    # for filename in filenames :
    #     strain = filename[:-10]
    #     if strain != '' :
    #         get_querySeq(strain)

    # Pichia_pastoris: Komagataella pastoris, Kluyveromyces_dobzhanskii: yHMPu5000034710_Kluyveromyces_dobzhanskii
    strains = ['Komagataella_pastoris', 'yHMPu5000034710_Kluyveromyces_dobzhanskii']

    for strain in strains :
        get_querySeq(strain)

            # with open("../output/%s_query.fasta" % strain, "w") as f :
            #     for proteinid, proteinseq in proteinAll :
            #         f.write(">%s\n" % (proteinid))
            #         f.write("%s\n" % (proteinseq))

if __name__ == "__main__" :
    # process_fastaSeq()
    # get_tabSeq()
    main()



