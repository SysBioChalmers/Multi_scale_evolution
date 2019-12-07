#---------------------------------
# unroot() in ape
# This is used to unroot tree
# and remove the bootstrap values
#---------------------------------
library(ape)
tree_dir <- "/Users/luho/Documents/protein_test"
allfile<- list.files(tree_dir)
allfile <- allfile[grepl(".*\\.tre", allfile)]
allfile <- allfile[!grepl(".*\\_unroot.tre", allfile)]
for (i in allfile){
  print(i)
  treefile <- file.path(tree_dir, i)
  s0 <- read.tree(file = treefile, text = NULL, tree.names = NULL, skip = 0,
                  comment.char = "", keep.multi = FALSE)
  plot(s0)
  s1 <- unroot(s0)
  plot(s1)
  s1$node.label <- NULL # Erase the bootstrap values from the phylo object
  plot(s1)
  i_out <- gsub("_aa", "_aa_unroot", i)
  output_dir <- file.path(tree_dir, i_out)
  write.tree(s1, file = output_dir)
}































