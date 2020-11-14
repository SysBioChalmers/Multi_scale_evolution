# The script is an example to show how to the lable the branch with the interesting species
library(ape)
library(treeio) # v1.11.2
library(stringr) # v1.4.0

# for the batch process
# read tre
input <- "/home/luhongzhong/ortholog_subset/unroot_tree_unify/"
output <-  "/home/luhongzhong/ortholog_subset/tree_label/"
allfile <- list.files(input)
for (t in allfile){
  print(t)

  #t <- "OG1002_aa_unroot_unify.tre"
  tr <- scan(file = paste(input,t, sep=""), what = "complex")
  interest_sign <- "12_"
  #step2 add special label for target species
  tr0 <- read.tree(text = tr)
  plot(tr0)
  tip_inf <- tr0$tip.label
  index <- str_detect(tip_inf, "12_")
  interest_set0 <- tip_inf[index]
  if (length(interest_set0)>=1){
  interest_set <- paste(interest_set0, "#1", sep="")

  tr1 <- tr
  for(i in 1:length(interest_set)){
    print(i)
    tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
  }

  #add the node
  tr10 <- read.tree(text = tr1)
  plot(tr10, show.node.label = TRUE)

  #save the tree
  write.tree(tr10, file = paste(output, t, sep = ""))
  }
}
