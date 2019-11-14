# --------------------------------------------------------------------------------------
# This script is used to collect the protein and code sequence data
# --------------------------------------------------------------------------------------
import os  ##for directory
import pandas as pd
import sys

def changeComputer(computer_name):
    """
    The function is used to define the work directory in the different computer
    :param computer_name:
    :return:
    """
    if computer_name == "linux":
        # for lab top
        sys.path.append(r"/media/hongzhong/newdisk/yeast_species/code")
        os.chdir(r'/media/hongzhong/newdisk/yeast_species/code')
    else:
    # for mac
        sys.path.append(r"/Volumes/newdisk/yeast_species/code")
        os.chdir(r'/Volumes/newdisk/yeast_species/code')


changeComputer(computer_name="MAC")

# here we establish the connection between the ortholog ID and the number order in each ortholog ID
infile = '../orthomcl_output/orthomcl_clusters.txt'
all_id = open(infile, "r").readlines()
len(all_id)
# here we just change it into a dict
all_id_dict = {}
for element in all_id:
    s1 = element.split(': ')
    file_name = s1[0]
    a_id = s1[1]
    a_id0 = a_id.split(' ')
    all_id_dict[file_name] = a_id0


# here we connect the number order (connect with ortholog ID) with the protein ID
infile2 = '../orthomcl_output/orthomcl_SeqIDs_index.txt'
id_mapping1 = open(infile2, "r").readlines()
len(id_mapping1)
id_map_dict1 = dict()
for id in id_mapping1:
    print(id)
    id = id.strip('\n')
    id0 = id.split(': ')
    id_map_dict1[id0[0]] = id0[1]


# part one
# collect the protein seq from a gene cluster together
from Bio import SeqIO
infile3 = '../orthomcl_output/343taxa_proteins.fasta'
records = SeqIO.index(infile3, 'fasta')

def findProteinSeq(id_simple, id_map1= id_map_dict1, record0=records):
    '''
    Find the protein seq based on the proteinID
    :param id_simple:
    :param record0:
    :return:
    '''
    #id_simple = all_id0
    id_new = []
    for i in id_simple:
        print(i)
        i = i.strip('\n')
        new1 = id_map1[i]
        id_new.append(new1)

    gene_ko_keep = []
    for j in id_new:
        gene_ko_keep.append(record0[j].format('fasta'))
    return gene_ko_keep

# collect the protein sequence under a cluster together
# As there are so many files, we can't save them. We can use them based on the function usage

def collectProteinSeq(orthoID, all_id_dict0 = all_id_dict, save=True):
    '''
    Collect the proteins belong to a gene cluster into a list
    :param orthoID:
    :param save:
    :return:
    '''
    outfile = '../result/' + orthoID + '_aa.fasta'
    a_id0 = all_id_dict0[orthoID]
    # then find the gene id based on the id mapping
    protein_list = findProteinSeq(id_simple=a_id0)
    if save:
        # save the sequence
        out1 = open(outfile, 'w')
        for seq in protein_list:
            out1.write(seq)
        out1.close()
    return protein_list

# two example
# OG1011 with only one sce gene
# OG1012 with two sce genes
# here we should get the seq of gene and protein based on the OG id
protein0 = collectProteinSeq(orthoID='OG1011', save=True)
protein1 = collectProteinSeq(orthoID='OG1012', save=True)
# batch
for (k,v) in ortho_with_sce_seq.items(): # ortho_with_sce_seq is from code 1
    print(k, v)
    protein_all = collectProteinSeq(orthoID=k, save=True)





#############################################
# part two
# collect the code sequence from a gene cluster together
# note: it seems take a very long time to run the followed steps. The code should be optimized!!
#############################################


# here we define the id mapping between the gene and protein ids
infile4 = '../orthomcl_output/343taxa_protein_IDs_index.txt'
gene_protein_file = open(infile4, "r").readlines()
protein_mRNA = dict()
protein_gene = dict()
for x in gene_protein_file:
    print(x)
    x= x.strip('\n')
    x0 = x.split('\t')
    protein_gene[x0[1]] = x0[2]
    protein_mRNA[x0[1]] = x0[0]
gene_protein = {y:x for x,y in protein_gene.items()}



# find the code seq based on the above id mapping
def findGeneIDofEachStrain(id_simple, id_map1= id_map_dict1, id_map2 = protein_gene):
    '''
    Find the protein seq based on the proteinID
    :param id_simple:
    :param record0:
    :return:
    '''
    # id_simple = a_id0

    # protein id
    id_new = []
    for i in id_simple:
        print(i)
        i = i.strip('\n')
        new1 = id_map1[i]
        id_new.append(new1)

    # gene id
    id_new2 = []
    strain_name =[]
    for j in id_new:
        print(j)
        strain = j.split('@')
        strain0 = strain[0]
        id_new2.append(id_map2[j])
        strain_name.append(strain0)
    return id_new2, strain_name


# find the cds seq based on the gene id and strain name
def findCDSseq(geneID, strainID):
    cds = []
    for s, g in zip(strainID, geneID):
        print(s, g)
        # firstly open the genome based on the strainid
        strainID_mapping = pd.read_csv('../343taxa_speicies-name_clade-name_color-code.txt', sep="\t")
        genomeID = strainID_mapping['original_genome_id']
        species_name = strainID_mapping['old_speceis_names']
        genome_choose = [genomeID[i] for i, x in enumerate(species_name) if x == s]
        genome_file_name = '../0_332yeast_genomes/332_genome_annotations/cds/' + \
                           genome_choose[0] + '.max.cds'


        # it should be careful in this step:
        # for sce we refine the format to search the related geneID
        try:
            genome = open(genome_file_name, "r").readlines()
            geneid = [x for x in genome if ">" in x]
            if s =='Saccharomyces_cerevisiae':
                g = '>' + g + ' '
                position = [i for i, x in enumerate(geneid) if g in x]
            else:
                position = [i for i, x in enumerate(geneid) if g in x]

            target = geneid[position[0]]
            target = target.split(' ')[0].replace('>', '')
            if s== 'Candida_albicans':
                target = target.replace('\n','')
            record0 = SeqIO.index(genome_file_name, 'fasta')
            print(record0[target].format('fasta'))
            cds.append(record0[target].format('fasta'))
        except:
            cds.append(None)
    return cds


# next we should make sure the protein seq id is consistent with the cds seq id
def StandardGeneNameInCDS(cds_seq, strain0, gene_protein_dict=gene_protein):
    #strain0 = ['Saccharomyces_cerevisiae'] # FOR THE TEST AIM
    cds_seq2 = []
    for i, j in zip(cds_seq, strain0):
        print(i, j)
        try:
            s0 = i.split('\n')
            id_inf = s0[0]
            seq_inf = s0[1:]
            id_inf0 = id_inf.split(' ')
            if j not in ['Saccharomyces_cerevisiae','Candida_albicans']:
                mRNA = id_inf0[0]
                gene = id_inf0[1:]
                gene = gene[0] + ' ' + gene[1]
                protein = '>' + gene_protein_dict[gene]
                new_cds = [protein] + seq_inf
                new_cds0 = '\n'.join(new_cds)
            else:
                gene = id_inf0[0]
                gene = gene.replace('>','')
                protein = '>' + gene_protein_dict[gene]
                new_cds = [protein] + seq_inf
                new_cds0 = '\n'.join(new_cds)

            cds_seq2.append(new_cds0)
        except:
            pass
    return cds_seq2


# This is the main function of the two small functions
def collectGeneSeq(orthoID, all_id_dict0 = all_id_dict, save=True):
    '''
    Collect the proteins belong to a gene cluster into a list
    :param orthoID:
    :param save:
    :return:
    '''

    outfile = '../result/' + orthoID + '_code.fasta'
    a_id0 = all_id_dict0[orthoID]
    # then find the gene id based on the id mapping
    gene_list, strain_list = findGeneIDofEachStrain(id_simple=a_id0)
    # then find the code sequence based on the gene id and strain name using a function
    cds0 = findCDSseq(geneID=gene_list, strainID=strain_list)

    print('find the protein ID for each gene cds seq!')
    # note this may be not very good
    cds1 = StandardGeneNameInCDS(cds_seq=cds0, strain0=strain_list)

    if save:
        # save the sequence
        out1 = open(outfile, 'w')
        for seq in cds1:
            if seq is not None:
                out1.write(seq)
        out1.close()

    return cds1


# two example
# OG1011 with only one sce gene
# OG1012 with two sce genes
# here we should get the seq of gene and protein based on the OG id
gene0 = collectGeneSeq(orthoID='OG1011', save=True)
gene1 = collectGeneSeq(orthoID='OG1012', save=True)
gene2 = collectGeneSeq(orthoID='OG5327', save=True)
gene3 = collectGeneSeq(orthoID='OG1000', save=True)
gene4 = collectGeneSeq(orthoID='OG14907', save=True)
# batch
# ortho_with_sce_seq is the dict from part 1
for (k,v) in ortho_with_sce_seq.items():
    print(k, v)
    gene_all = collectGeneSeq(orthoID=k, save=True)


# part3
# quality check
# further analyze the quality of the above two analysis
# initial analysis indicates that the total protein number are larger than gene number
# so we need explore why they are different
# it is due to that in the protein fasta file, it contains other fungal strain
# Saccharomyces_cerevisiae@YPR194C
# Candida_albicans@CR_02240C_A

len(protein0) > len(gene0)
id_p = [x.split('\n')[0] for x in protein0]
id_g = [x.split('\n')[0] for x in gene0]
id_need_check1 = list(set(id_p)-set(id_g)) # this id only exist in from protein seq set
id_need_check2 = list(set(id_g)-set(id_p))

# check
id_need_check1 = [x.replace('>','') for x in id_need_check1]
for id in id_need_check1:
    print(id, '  >>>>  ', protein_gene[id])