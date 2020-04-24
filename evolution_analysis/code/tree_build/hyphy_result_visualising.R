# Lable tree using an real data
# Hongzhong Lu
# 2020-02-11

library(ape)
library(treeio)
library(stringr)
library(readxl)
library(dplyr)
library(tidyr)
library(ggtree)


# Visualize tree with branches colored by `Selected` feature
# Read in annotated tree to ggtree with read.nhx(), where tree is contained in file "absrel_selection.tre"

# one example
tree <- read.nhx("/Users/luho/Documents/branch_site_heat/absrel_tree/OG1145.tre")
ggtree(tree, aes(color = Selected)) +
  geom_tiplab(size=2) +
  geom_treescale()


# one example
tree <- read.nhx("/Users/luho/Documents/branch_site_heat/absrel_tree/OG3912.tre")
ggtree(tree, aes(color = Selected)) +
  geom_tiplab(size=2) +
  geom_treescale()



# visualize the original tree
GetSelectLable <- function(tree_file_dir, select_branches) {
  tr <- scan(file = tree_file_dir, what = "complex")
  tr0 <- read.tree(text = tr)
  #plot(tr0, show.node.label = TRUE, cex = 0.4)
  tr_inf <- as_tibble(tr0)
  # extract the tips and nodes from csv file
  # an example, these are node label
  # the node number of the tree should be obtained based on the node label
  select_branches_split <- str_trim(unlist(str_split(select_branches, ",")), side = "both")
  # here the vector will be divided into tips and nodes
  select_branches_split1 <- select_branches_split[!str_detect(select_branches_split, "Node")]

  select_branches_split2 <- select_branches_split[str_detect(select_branches_split, "Node")]

  tr_inf_filter <- tr_inf[tr_inf$label %in% select_branches_split2, ]
  # then get the node number
  node_label_list <- tr_inf_filter$node
  all_select_branch <- c()
  # get all the children id
  for (i in node_label_list) {
    # print(i)
    # i <- 72
    child_id <- offspring(tr_inf, i)
    select_label <- child_id$label
    select_label <- select_label[!str_detect(select_label, "Node")]
    print(select_label)
    all_select_branch <- c(all_select_branch, select_label)
  }

  all_select_branch <- c( all_select_branch, select_branches_split1)
  return(all_select_branch)
}


# for the batch process
heat_result_file <- read.csv("/Users/luho/Documents/branch_site_heat/heat_result_all.csv", stringsAsFactors = FALSE)
heat_result_file$branch_select <- str_replace_all(heat_result_file$branch_select, "\\[", "") %>%
  str_replace_all(., "\\]", "") %>% str_replace_all(., "\\'", "")
tr_dir <- "/Users/luho/Documents/branch_site_heat/absrel_tree_original/"


select_species <- c()
for (i in 1:nrow(heat_result_file )){
  print(i)
  #i <- 1707
  og0 <- heat_result_file$OG[i]
  tree_file_dir0 <- paste(tr_dir, og0, ".tre",  sep = "")
  select_branch0 <- heat_result_file$branch_select[i]
  if (file_test("-f", tree_file_dir0)){
    all_single_branch <- GetSelectLable(tree_file_dir=tree_file_dir0, select_branches=select_branch0)
    if(length(all_single_branch)){
      all_single_branch1 <- paste0(all_single_branch, collapse = ",")
    } else{
      all_single_branch1 <- NA
    }

    } else{
      all_single_branch1 <- NA
    }
  select_species <- c(select_species, all_single_branch1)
}

heat_result_file$species_select <- select_species

write.csv(heat_result_file, "/Users/luho/Documents/branch_site_heat/heat_result_all_update.csv")




# check whether the selected species come from three clades
heat_trait <- read.csv("/Users/luho/Documents/branch_site_heat/genome_summary_332_yeasts_heat.csv", stringsAsFactors = FALSE)
heat_trait <- heat_trait[heat_trait$heat_tolerance=="Yes", ]
species_with_trait <- heat_trait[, c("old_species_id", "Major.clade")]
heat_result_update <- read.csv("/Users/luho/Documents/branch_site_heat/heat_result_all_update.csv", stringsAsFactors = FALSE)

clade_num_with_heat <- c()
species_num_with_heat <- c()
clade_select_sum <- c()
species_select_ratio <- c()


# so here we will consider both the input tree and select branch file
for (i in 1:nrow(heat_result_update)) {
  print(i)
  og0 <- heat_result_update$OG[i]
  tree_file_dir0 <- paste(tr_dir, og0, ".tre", sep = "")

  if (file_test("-f", tree_file_dir0)) {
    # get species id
    select_species0 <- heat_result_update$species_select[i]
    select_species1 <- unlist(str_split(select_species0, ","))
    select_species2 <- str_split(select_species1, "_Seq_")
    select_species3 <- c()
    for (i in seq_along(select_species2)) {
      print(select_species2[[i]][1])
      select_species3 <- c(select_species3, select_species2[[i]][1])
    }
    select_species3 <- unique(select_species3)

    # species preprocess
    tr <- scan(file = tree_file_dir0, what = "complex")
    tr0 <- read.tree(text = tr)
    # plot(tr0, show.node.label = TRUE, cex = 0.4)
    tr_inf <- as_tibble(tr0)
    all_species_of_OG <- tr_inf$label[!str_detect(tr_inf$label, "Node") & tr_inf$label != ""]
    # get species id
    all_species_of_OG1 <- str_split(all_species_of_OG, "_Seq_")
    all_species_of_OG2 <- c()
    for (i in seq_along(all_species_of_OG1)) {
      print(all_species_of_OG1[[i]][1])
      all_species_of_OG2 <- c(all_species_of_OG2, all_species_of_OG1[[i]][1])
    }


    # calculate the number of test species and select species
    species_with_trait_mapping <- species_with_trait
    species_with_trait_mapping$test <- species_with_trait_mapping$old_species_id %in% all_species_of_OG2
    species_with_trait_mapping$selection <- species_with_trait_mapping$old_species_id %in% select_species3
    species_with_trait_mapping$Major.clade <- as.factor(species_with_trait_mapping$Major.clade)
    species_with_trait_mapping1 <- species_with_trait_mapping %>%
      group_by(Major.clade) %>%
      summarise(test_all = sum(test), select_all = sum(selection))
    # then calculate how many clade have the positive selection
    species_with_trait_mapping2 <- filter(species_with_trait_mapping1, select_all >= 1)
    clade_num <- length(species_with_trait_mapping1$Major.clade)
    species_num <- sum(species_with_trait_mapping1$test_all)
    select_clade <- length(species_with_trait_mapping2$Major.clade)
    select_in_species_ratio <- sum(species_with_trait_mapping2$select_all)/sum(species_with_trait_mapping1$test_all)

  } else {
    clade_num <- NA
    species_num <- NA
    select_clade <- NA
    select_in_species_ratio <- NA

  }

  clade_num_with_heat <- c(clade_num_with_heat, clade_num)
  species_num_with_heat <- c(species_num_with_heat, species_num)
  clade_select_sum <- c(clade_select_sum, select_clade)
  species_select_ratio <- c(species_select_ratio, select_in_species_ratio)

}

heat_result_update$clade_with_trait <-  clade_num_with_heat
heat_result_update$species_with_trait <-  species_num_with_heat
heat_result_update$select_clade_all <- clade_select_sum
heat_result_update$species_select_ratio <- species_select_ratio
heat_result_update$clade_select_ratio <- clade_select_sum/clade_num_with_heat
# output result
write.csv(heat_result_update, "/Users/luho/Documents/branch_site_heat/heat_result_all_update2.csv")




# mapping the trait information and select information on the gene tree at the same time
# visualize the original tree
VisualizeSelectedBranch <- function(tree_file_dir, select_branches) {
  tr <- scan(file = tree_file_dir, what = "complex")
  tr0 <- read.tree(text = tr)
  #plot(tr0, show.node.label = TRUE, cex = 0.4)
  plot(tr0, show.node.label = FALSE, cex = 0.4)
  #ggtree(tr0) +
  #   geom_tiplab(size=2, color="black")
  tr_inf <- as_tibble(tr0)

  all_tip <- tr0$tip.label
  select_branches_split <- str_trim(unlist(str_split(select_branches, ",")), side = "both")

  select_branches_split1 <- select_branches_split[!str_detect(select_branches_split, "Node")]
  select_branches_split2 <- select_branches_split[str_detect(select_branches_split, "Node")]

  i <- which(all_tip %in% select_branches_split1)

  tiplabels(tr0$tip.label[i], i, adj = 0, bg="coral", cex=0.5)




  # find the node based on label

  tr_inf_node <- tr_inf[tr_inf$label %in% select_branches_split2,]
  for (i in 1:nrow(tr_inf)){
    node0 <-  tr_inf_node$node[i]
    label0 <- tr_inf_node$label[i]
    label0 <- str_replace(label0, "Node", "")
    nodelabels(label0, node0, frame = "r", bg = "coral", cex=0.6)

  }

}



for (i in 1:10){
  print(i)
  i <- 1
  og0 <- heat_result_file$OG[i]
  tree_file_dir0 <- paste(tr_dir, og0, ".tre",  sep = "")
  select_branch0 <- heat_result_file$branch_select[i]
  if (file_test("-f", tree_file_dir0)){
    all_single_branch <- VisualizeSelectedBranch(tree_file_dir=tree_file_dir0, select_branches=select_branch0)
  }

}







# example
####################################################################################################
# more example for the tree visualization
# color nodes
tr <- read.tree(text = "((Homo,Pan),Gorilla);")
plot(tr)
nodelabels("   ", 4, frame = "r", bg = "yellow", adj = 0)


### This can be used to highlight tip labels:
plot(bird.orders, font = 1)
i <- c(1, 7, 18)
tiplabels(bird.orders$tip.label[i], i, adj = 0)


### representing two characters at the tips (you could have as many
### as you want)
plot(bird.orders, "c", FALSE, font = 1, label.offset = 3,
     x.lim = 31, no.margin = TRUE)

plot(bird.orders, font = 1, label.offset = 5, no.margin = TRUE)
tiplabels(pch = 19, col = c("yellow", "red"), adj = 2.5, cex = 2)


# more example
library(ape)
library(ggtree)
# Generate Tree and Traits -----------------------------------------------------
# Number of species
n_species = 200
# Generate tree with 10 species
random_tree = rtree(n_species)

# Generate trait matrix
trait_df = data.frame(
  species = random_tree$tip.label,
  trait1 = rnorm(n_species), # Example of continuous trait
  # Example of categorical traits
  trait2 = sample(c("A", "B", "C"), replace = T, size = n_species))

# Plotting tree ----------------------------------------------------------------
plot_tree = ggtree(random_tree, layout = "fan", right = TRUE, size = 0.1)

# Add trait information into tree
plot_tree %<+% trait_df + geom_tippoint(aes(color = trait1, alpha = 0.5))



