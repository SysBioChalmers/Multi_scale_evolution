# The script is an example to show how to the lable the branch with the interesting species
library(ape)
library(treeio)
## more test
#step 1 read data
tr <- "(((Hylobates_EDN , (Orang_EDN , (Gorilla_EDN , (Chimp_EDN , Human_EDN )))), (Macaq_EDN , (Cercopith_EDN , (Macaq2_EDN , Papio_EDN )))), (Orang_ECP, ((Macaq_ECP, Macaq2_ECP), (Goril_ECP, Chimp_ECP, Human_ECP))));"
interest_set0 <- c("Macaq_ECP", "Macaq2_ECP", "Goril_ECP", "Chimp_ECP", "Human_ECP")

#step2 add special label for target species
interest_set <- paste(interest_set0, "{Foreground}", sep="")

tr1 <- tr
for(i in 1:length(interest_set)){
  print(i)
  tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
}

#add the node
tr0 <- read.tree(text = tr)
plot(tr0, show.node.label = TRUE)
tr10 <- read.tree(text = tr1)
plot(tr10, show.node.label = TRUE)
#save the tree
write.tree(tr10, file = "/Users/luho/Documents/pan_genome/test_for_label/test2_hyphy.tre")






