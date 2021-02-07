# Usage: run command line Rscript midpoint_tree.R gene
# For example: Rscript midpoint_tree.R yHMPu5000034681_Blastobotrys_americana@Seq_154


# Midpoint root a phylogeny with R:
library(ape)
library(phangorn)

setwd("~/Documents/Le/HGT/trees")

args = commandArgs(T)

print(args[1])

treefile <- paste("./fasta/",args[1],"/",args[1],".treefile",sep="")
mytree <- read.tree(treefile)
midponit_mytree <- ladderize (midpoint(mytree))
write.tree (midponit_mytree, paste("./fasta/",args[1],"/",args[1],"_midpoint.tree",sep=""))

# # And then generate the font and color for iTOL
# perl create_iTOL_config.pl ../fasta/yHMPu5000034681_Blastobotrys_americana@Seq_154/yHMPu5000034681_Blastobotrys_americana@Seq_154_midpoint.tree