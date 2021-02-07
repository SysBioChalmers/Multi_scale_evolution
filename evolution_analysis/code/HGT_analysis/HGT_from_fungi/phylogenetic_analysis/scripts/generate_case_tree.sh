#!/bin/bash


echo 'Begin to run!!!'

Rscript midpoint_tree.R yHMPu5000034675_Blastobotrys_mokoenaii@Seq_4841
perl create_iTOL_config.pl ../fasta/yHMPu5000034675_Blastobotrys_mokoenaii@Seq_4841/yHMPu5000034675_Blastobotrys_mokoenaii@Seq_4841_midpoint.tree

Rscript midpoint_tree.R yHMPu5000034681_Blastobotrys_americana@Seq_154
perl create_iTOL_config.pl ../fasta/yHMPu5000034681_Blastobotrys_americana@Seq_154/yHMPu5000034681_Blastobotrys_americana@Seq_154_midpoint.tree

echo 'Yep, finish!!!'
