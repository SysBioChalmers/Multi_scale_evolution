# The script is an example to show how to the lable the branch with the interesting species
library(ape)
library(treeio)
library(stringr)
library(tidytree)

## more test
#step 1 read data
tr <- "(((Hylobates_EDN , (Orang_EDN , (Gorilla_EDN , (Chimp_EDN , Human_EDN )))), (Macaq_EDN , (Cercopith_EDN , (Macaq2_EDN , Papio_EDN )))), (Orang_ECP, ((Macaq_ECP, Macaq2_ECP), (Goril_ECP, Chimp_ECP, Human_ECP))));"
interest_set0 <- c("Macaq_ECP", "Macaq2_ECP", "Goril_ECP", "Chimp_ECP", "Human_ECP")

#step2 add special label for target species
interest_set <- paste("branch@", interest_set0)

tr1 <- tr
for(i in 1:length(interest_set)){
  print(i)
  tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
}

#add the node
tr <- read.tree(text = tr1)
plot(tr, show.node.label = TRUE)
tr <- makeNodeLabel(tr, "u", nodeList = list(BRANCH = "branch@"))
plot(tr, show.node.label = TRUE)

# replace the label
tip_inf <- data.frame(label = tr$tip.label, stringsAsFactors = FALSE)
tip_inf$label2 <- gsub("branch@", "", tip_inf$label)
## update the lable and node name
tr2 <- rename_taxa(tr, tip_inf, label, label2)
plot(tr2, show.node.label = TRUE)
node_inf <- tr2[["node.label"]]

# here for paml
node_inf2 <- gsub("BRANCH", " #1", node_inf)
tr3 <- tr2
tr3[["node.label"]] <- node_inf2
plot(tr3, show.node.label = TRUE)
#save the tree
write.tree(tr3, file = "/home/luhongzhong/Documents/evolution_analysis/result/tree_label_test/test_paml.tre")

# here for the hyphy
tr3 <- tr2
node_inf2 <- gsub("BRANCH", "{Foreground}", node_inf)
tr3[["node.label"]] <- node_inf2
plot(tr3, show.node.label = TRUE)
#save the tree
write.tree(tr3, file = "/home/luhongzhong/Documents/evolution_analysis/result/tree_label_test/test_paml5.tre")



## more test
#step 1 read data
tr <- "(((Hylobates_EDN , (Orang_EDN , (Gorilla_EDN , (Chimp_EDN , Human_EDN )))), (Macaq_EDN , (Cercopith_EDN , (Macaq2_EDN , Papio_EDN )))), (Orang_ECP, ((Macaq_ECP, Macaq2_ECP), (Goril_ECP, Chimp_ECP, Human_ECP))));"
interest_set0 <- c("Orang_ECP", "Goril_ECP", "Chimp_ECP", "Human_ECP")

#step2 add special label for target species
interest_set <- paste("branch@", interest_set0)

tr1 <- tr
for(i in 1:length(interest_set)){
  print(i)
  tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
}

#add the node
tr <- read.tree(text = tr1)
plot(tr, show.node.label = TRUE)
tr <- makeNodeLabel(tr, "u", nodeList = list(BRANCH = "branch@"))
plot(tr, show.node.label = TRUE)

# replace the label
tip_inf <- data.frame(label = tr$tip.label, stringsAsFactors = FALSE)
tip_inf$label2 <- gsub("branch@", "", tip_inf$label)
## update the lable and node name
tr2 <- rename_taxa(tr, tip_inf, label, label2)
plot(tr2, show.node.label = TRUE)
node_inf <- tr2[["node.label"]]

# here for paml
node_inf2 <- gsub("BRANCH", " #1", node_inf)
tr3 <- tr2
tr3[["node.label"]] <- node_inf2
plot(tr3, show.node.label = TRUE)
#save the tree
write.tree(tr3, file = "/home/luhongzhong/Documents/evolution_analysis/result/tree_label_test/test_paml.tre")

# here for the hyphy
tr3 <- tr2
node_inf2 <- gsub("BRANCH", "{Foreground}", node_inf)
tr3[["node.label"]] <- node_inf2
plot(tr3, show.node.label = TRUE)
nodelabels()
#save the tree
write.tree(tr3, file = "/home/luhongzhong/Documents/evolution_analysis/result/tree_label_test/test_paml5.tre")
# further find the child node
tr_inf <- as_tibble(tr3)
# get the node id based on the label name
index_label <- tr_inf[tr_inf$label=="{Foreground}",]
# get the node id which has been labeled
node_id <- index_label$node[1]

# get all the children id
child_id <- child(tr_inf, node_id)
# then we could find all the child_id in a loop?
all_child_from_node <- offspring(tr_inf, node_id)

# get the parent id
parent(tr_inf, node_id)
ancestor(tr_inf, 28)# this is all the parent id

# get the brother or sister id
sibling(tr_inf, 28)

# access most recent common ancestor data
MRCA(tr_inf, 15, 12)


###################### test code ######################################################################
library(ape)
tree <- rtree(4)
x <- as_tibble(tree)
s0 <- child(x, 7)













