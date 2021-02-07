#! /usr/bin/env python
"""
Take a file full of accessions and one or more NCBI 'accession2taxid' files
and create a CSV named 'acc_file.taxid' that contains the accessions
and their associated taxids.
"""

# Download database: ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid
# Run command line: python make-acc-taxid-mapping_all.py accession_all.txt /Users/leyu/Downloads/prot.accession2taxid20200824.gz
# read 865000000 lines of /Users/leyu/Downloads/prot.accession2taxid20200824.gz; found 191589 of 195035, failed to find 3446 acc
# found 6511 out of 6515 acc by Biopython.
# ['pir|JC5413|', 'pir|S71741|', 'pir|S69074|', '6GSM_j', 'pir|S69992|', 'pir|S69991|', 'pir|S51493|']
# Accession to taxid not found by Biopython: 7

from __future__ import print_function
import argparse
import gzip
from Bio import SeqIO
from Bio import Entrez

def extract_accession() :
    with open("blastfile.txt", "r") as infile :
        lines = infile.readlines()

    outfile = open("accession_all.txt", "w")
    for line in lines :
        accession = line.strip('\n').split('\t')[1]
        print(accession)
        outfile.write(accession+'\n')
    outfile.close()

def getTaxid(accession):
    # Retrieving data in the GenBank using only the GenBank code accession in biopython
    # https://www.ncbi.nlm.nih.gov/books/NBK25497/table/chapter2.T._entrez_unique_identifiers_ui/?report=objectonly
    # https://www.ncbi.nlm.nih.gov/books/NBK25499/#chapter4.EFetch
    # https://biopython.org/DIST/docs/api/Bio.Entrez-module.html
    Entrez.email = "leyu@example.org"

    # https://www.biostars.org/p/304175/
    # get tax id using only the GenBank code accession in biopython
    # handle = Entrez.efetch(db='protein', id="NP_012706.1", rettype='gb')
    handle = Entrez.efetch(db='protein', id=accession, rettype='gb')
    record = SeqIO.read(handle,'genbank')
    # print(record.features[0].qualifiers)
    if record.features[0].qualifiers['db_xref'][0].split(":")[0] == 'taxon':
        taxid = record.features[0].qualifiers['db_xref'][0].split(":")[1] # the type is a string
        # organism = record.features[0].qualifiers['organism'][0]
    # seq = record.seq
    # print(taxid,organism)

    # return taxid,organism
    # return seq
    return taxid

def get_taxid_by_biopython() :
    with open("acc_not_found.txt", "r") as infile :
        lines = infile.readlines()

    i = 0    
    acc_notfound = list()
    outfile = open("accession_notfound.txt.taxid", "w")
    for line in lines :
        i += 1
        print("This is %s" %i, "----------------")
        acc = line.strip()
        try :
            taxid = getTaxid(acc)
            # print(acc)
            print(taxid)
            outfile.write('{},{}\n'.format(acc, taxid))
        except :
            acc_notfound.append(acc)
    print(acc_notfound)
    print("Accession to taxid not found by Biopython:", len(acc_notfound))
    # ['pir|S67133|', 'pir|S39953|', '5OQM_l', 'pir|JC7966|']
    # Accession to taxid not found by Biopython: 4
    outfile.close()

def integrate_acc2taxid() :
    outfile = open("acc2taxid_final.txt", "w")
    with open("accession_all.txt.taxid", "r") as infile1 :
        lines = infile1.readlines()
        for line in lines :
            outfile.writelines(line)

    with open("accession_notfound.txt.taxid", "r") as infile2 :
        lines = infile2.readlines()
        for line in lines :
            outfile.writelines(line)

    outfile.close()

def main():
    p = argparse.ArgumentParser()
    p.add_argument('acc_file')
    p.add_argument('acc2taxid_files', nargs='+')
    args = p.parse_args()

    with open(args.acc_file) as fp:
        # acc_set = set([ x.strip().split('.')[0] for x in fp ])
        acc_set = set([ x.strip() for x in fp ])

    outfp = open(args.acc_file + '.taxid', 'w')

    m = 0
    for filename in args.acc2taxid_files:
        if not acc_set: break

        xopen = open
        if filename.endswith('.gz'):
            xopen = gzip.open

        with xopen(filename, 'rt') as fp:
            next(fp)                #  skip headers
            for n, line in enumerate(fp):
                # print(line)
                if not acc_set: break

                if n and n % 1000000 == 0:
                    print(u'\r\033[K', end=u'')
                    print('... read {} lines of {}; found {} of {}'.format(n, filename, m, m + len(acc_set)), end='\r')

                try:
                    # acc, _, taxid, _ = line.split()
                    _, acc, taxid, _ = line.split()
                except ValueError:
                    print('ignoring line', (line,))
                    continue

                if acc in acc_set:
                    m += 1
                    outfp.write('{},{}\n'.format(acc, taxid))
                    acc_set.remove(acc)

                    if not acc_set:
                        break

    print("\n")

    if acc_set:
        print('failed to find {} acc'.format(len(acc_set)))
    else:
        print('found all {} accessions!'.format(m))

    print('output taxid file is in', args.acc_file + '.taxid')

    outfp.close()

    with open("acc_not_found.txt", "w") as file :
        print(len(acc_set))
        for acc in acc_set :
            file.write(acc+'\n')


if __name__ == '__main__':
    # main()
    # extract_accession()
    # get_taxid_by_biopython()
    integrate_acc2taxid()
