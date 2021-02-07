#!/usr/bin/python
# coding: utf-8

# Author: LE YUAN

import os
import time


def main() :

    myCmd = "blastp -db nr -query ./YNR058W.fasta -max_target_seqs 250 -num_threads 8 -task 'blastp-fast' -outfmt '7 qacc sacc evalue length pident' -out ./YNR058W.txt"

    os.system(myCmd)

    print("Finished------------------")



if __name__ == "__main__" :
    main()