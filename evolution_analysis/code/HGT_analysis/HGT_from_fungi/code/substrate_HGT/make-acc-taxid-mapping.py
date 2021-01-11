#! /usr/bin/env python
"""
Take a file full of accessions and one or more NCBI 'accession2taxid' files
and create a CSV named 'acc_file.taxid' that contains the accessions
and their associated taxids.
"""

# Download database: ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid
# Run command line: python make-acc-taxid-mapping.py accession.txt /Users/leyu/Downloads/nucl_gb.accession2taxid.gz  (1.8G) Result: found 0 of 17
# Run command line: python make-acc-taxid-mapping.py accession.txt /Users/leyu/Downloads/nucl_wgs.accession2taxid.gz (3.4G) Result: found 0 of 17
# Run command line: python make-acc-taxid-mapping.py accession.txt /Users/leyu/Downloads/prot.accession2taxid.gz (5.8G) Result: found all 17 accessions!

from __future__ import print_function
import argparse
import gzip

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
                if not acc_set: break

                if n and n % 1000000 == 0:
                    print(u'\r\033[K', end=u'')
                    print('... read {} lines of {}; found {} of {}'.format(n, filename, m, m + len(acc_set)), end='\r')

                try:
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


if __name__ == '__main__':
    main()
