#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN

import os
import time


def main() :
    start_time = time.time()
    i = 0
    for filename in os.listdir("./fasta") :
        # print(filename)
        i += 1
        print("This is %d------------------" %(i))
        gene = filename[:-6]
        print(gene)
        # Execute shell commands in Python
        myCmd = "blastp -db nr -query ./fasta/%s.fasta -max_target_seqs 250 -num_threads 8 -task 'blastp-fast' -outfmt '7 qacc sacc evalue length pident' -out ./blastp/%s.txt" %(gene, gene)

        os.system(myCmd)

    elapsed = (time.time() - start_time)
    print("Finished------------------")
    print("Running these proteins uses: %ss" %(elapsed))


if __name__ == "__main__" :
    main()