#!/bin/bash
cd /home/luhongzhong/Documents/cluster_result/fubar/fubar_result_tar
for i in *_code.fasta.FUBAR.json.tar
  do
    tar -xvf $i -C /home/luhongzhong/Documents/cluster_result/fubar/fubar_result/
  done
echo "the files have been uncompressed!"