# The script is an example to show how to the lable the branch with the interesting species
library(ape)
library(treeio)
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
node_inf2 <- gsub("BRANCH", " #1", node_inf)
tr2[["node.label"]] <- node_inf2
plot(tr2, show.node.label = TRUE)
#save the tree
write.tree(tr2, file = "/Users/luho/Documents/pan_genome/test_for_label/test2.tre")






