# Lable tree using an real data
# Hongzhong Lu
# 2020-02-11

library(ape)
library(treeio)
library(stringr)
library(readxl)
library(dplyr) # v0.8.3 this version must be used. Otherwise the calculation can not be calculated.
library(tidyr)
library(ggtree) # v2.1.1


# be careful about the version of pacakge used in the calculation.
if(packageVersion('dplyr')!="0.8.3"){
  print("Please check the version of dplyr!")
}


produceLabelTree <- function(tr_id, tr_dir, out_dir, species_choose, num_species_test = 3, num_species_ref = 3) {

  # test data
  # tr_id <- "OG5327_aa_unroot.tre"
  # tr_dir <- "/Users/luho/Documents/evolution_analysis/data/data_tree/"
  # out_dir <- "/Users/luho/Documents/"
  # species_choose <- interest_species
  tr_file <- paste(tr_dir, tr_id, sep = "")
  out_file <- paste(out_dir, str_replace(tr_id, ".tre", "_LABEL.tre"), sep = "")
  tr <- scan(file = tr_file, what = "complex")
  # step2 add special label for target species
  tr0 <- read.tree(text = tr)
  # plot(tr0)
  tip_inf <- tr0$tip.label
  # index <- str_detect(tip_inf, "12_")
  # interest_set0 <- tip_inf[index]
  tip_df <- data.frame(tip = tip_inf, stringsAsFactors = FALSE)
  tip_df <- tip_df %>%
    separate(tip, c("speciesID", "seqID"), "@")
  tip_df$tip <- tip_inf
  tip_df_filter <- tip_df[tip_df$speciesID %in% species_choose, ]
  interest_set0 <- tip_df_filter$tip

  taret_species <- unique(tip_df_filter$speciesID)
  other_species <- setdiff(tip_df$speciesID, species_choose)

  # firstly add the foreground label for tips
  if (length(taret_species) >= num_species_test & length(other_species) >= num_species_ref) { # to filter the tree
    interest_set <- paste(interest_set0, "{Foreground}", sep = "")
    tr1 <- tr
    for (i in 1:length(interest_set)) {
      print(i)
      tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
    }
    # add the node
    tr10 <- read.tree(text = tr1)
    # plot(tr10, show.node.label = TRUE)
    # secondly add the foreground label for nodes, which only contain species from the interest species set
    # ggtree(tr10) + geom_text(aes(label = node)) + geom_tiplab()


    tr_inf <- as_tibble(tr10)
    # add labels for the first node with tips from the interesting species set
    first_parent <- tr_inf[!is.na(tr_inf$label), ]
    node_df <- tr_inf[is.na(tr_inf$label), ]
    # choose the interest parent
    first_parent_unique <- unique(first_parent$parent)
    first_parent_target <- c()
    for (i in first_parent_unique) {
      # print(i)
      # i <- 16
      s0 <- i
      # child_inf <- first_parent[first_parent$parent == s0, ]
      child_inf <- tr_inf[tr_inf$parent == s0, ]
      child_inf$test_label <- str_detect(child_inf$label, "Foreground")
      child_inf$test_label[is.na(child_inf$test_label)] <- FALSE
      if (all(child_inf$test_label)) {
        first_parent_target <- c(first_parent_target, i)
      }
    }


    # tr_inf$label[tr_inf$node %in% first_parent_target] <-"{Foreground}"
    node_df$label[node_df$node %in% first_parent_target] <- "{Foreground}"

    # based on the first parent and node_df, we will produce a second file
    tr_inf0 <- rbind.data.frame(first_parent, node_df)
    # make the loop simple
    # choose the interest parent
    all_labelled_node1 <- length(tr_inf0$label[!is.na(tr_inf0$label)])
    node_list <- c(all_labelled_node1)
    j <- 0
    while (length(node_list) <= length(unique(node_list))) {
      j <- j + 1
      print(paste("-----Loop: ", j))
      first_parent_unique <- unique(node_df$parent)
      first_parent_target <- c()
      for (i in first_parent_unique) {
        # print(i)
        s0 <- i
        # child_inf <- node_df[node_df$parent == s0, ]
        child_inf <- tr_inf0[tr_inf0$parent == s0, ]
        child_inf$test_label <- str_detect(child_inf$label, "Foreground")
        child_inf$test_label[is.na(child_inf$test_label)] <- FALSE
        if (all(child_inf$test_label)) {
          first_parent_target <- c(first_parent_target, i)
        }
      }

      tr_inf0$label[tr_inf0$node %in% first_parent_target] <- "{Foreground}" # update tr_inf0
      all_labelled_node <- length(tr_inf0$label[!is.na(tr_inf0$label)])
      node_list <- c(node_list, all_labelled_node)
    }
    # combine the node_df and the tips
    tr_inf_new <- tr_inf0


    # change the tibble into tree again
    new_tree <- as.phylo(tr_inf_new) # this step has bugs
    # plot(new_tree, show.node.label = TRUE)
    # update the node_label
    # replace the 'NA' in the node as " " for the final tree
    node_label0 <- new_tree[["node.label"]]
    node_label0[is.na(node_label0)] <- "no_label"
    new_tree[["node.label"]] <- node_label0

    # ggtree(new_tree) + geom_text(aes(label=node)) + geom_tiplab()
    # here we need a function to further label the related nodes??
    # how to do it??
    write.tree(new_tree, out_file)
    tr_final <- scan(file = out_file, what = "complex")
    tr_final0 <- str_replace_all(tr_final, "no_label", "")
    writeLines(tr_final0, out_file)
  } else {
    print("No enough interesting species or reference species in the input tree!")
  }
}



############################################################################################################################
# label tree based on clade information

# new test using the real data
# here the gene tree and species clade information should be as the input
clade_df <- read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/343taxa_speicies-name_clade-name_color-code.xlsx")
target_clade <- "Saccharomycetaceae"
clade_df0 <- clade_df[clade_df$`Major clade` == target_clade, ]
# extract the species id
interest_species <- clade_df0$old_speceis_names # take care of the id differences
input <- "/home/luhongzhong/ortholog_343_simplify2/cds_align_guidance_new_tree_unroot/"
output <- "/home/luhongzhong/ortholog_343_simplify2/cds_align_guidance_new_tree_unroot_label/"
allfile <- list.files(input)
# the output directory should be firstly established
dir.create(output)

for (i in 1:length(allfile)) {
  print(i)
  t <- allfile[i]
  # t <- "OG1064_aa_unroot.tre"
  # t <- "OG7984_aa_unroot.tre"
  # t <- "OG10641_aa_unroot.tre"
  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
}



# produce label tree for each clade
label_tree_based_clade <- function(clade_name) {
  # This function is used to label the tree based on the clade

  # usage
  # clade <- unique(clade_df$`Major clade`)
  # clade <- clade[1:12]
  # for (i in clade) {
  #   label_tree_based_clade(clade_name = i)
  # }

  clade_df <- read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/343taxa_speicies-name_clade-name_color-code.xlsx")
  target_clade <- clade_name
  clade_df0 <- clade_df[clade_df$`Major clade` == target_clade, ]
  # extract the species id
  interest_species <- clade_df0$old_speceis_names # take care of the id differences
  input <- "/home/luhongzhong/ortholog_343_simplify2/unroot_tree/"
  output <- paste("/home/luhongzhong/ortholog_343_simplify2/unroot_tree_label_", target_clade, "/", sep = "")
  allfile <- list.files(input)
  dir.create(output)
  for (i in 1:length(allfile)) {
    print(i)
    t <- allfile[i]
    # t <- "OG1064_aa_unroot.tre"
    # t <- "OG7984_aa_unroot.tre"
    # t <- "OG10641_aa_unroot.tre"
    produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
  }
}




##################################################################################################################################
# produce the tree based on the specific phenotype??
# here the question is that whether we only choose the species with accurate classification
# if yes, then we should extracted the related cds sequen
# yeasts_pathogen <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "pathogen")
yeasts_heat <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "heat")
#yeasts_fermentation <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "glucose_fermentation")
yeasts_crabtree <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "crabtree_effect")
yeasts_methanol <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "methonal_utilization")
yeasts_anaerobic <- read_excel("~/Documents/evolution_analysis/data/data_tree/genome_summary_332_yeasts_heat_Ethanol_updated_02_20.xlsx", sheet = "anaerobic")



# methanol-update 2020-03-17
interest_species1 <- yeasts_methanol[yeasts_methanol$Methanol == "+", ]
interest_species <- interest_species1$old_species_id
interest_species <- interest_species[!is.na(interest_species)]
input <- "/home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree_unroot/"
output <- "/home/luhongzhong/ortholog_343_methanol/cds_align_guidance_new_tree_unroot_label/"
dir.create(output)
allfile <- list.files(input)
for (i in 1:length(allfile)) {
  print(i)
  t <- allfile[i]
  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
}



# heat
interest_species1 <- yeasts_heat[yeasts_heat$heat_tolerance == "Yes", ]
interest_species <- interest_species1$old_species_id
interest_species <- interest_species[!is.na(interest_species)]
input <- "/home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot/"
output <- "/home/luhongzhong/ortholog_343_heat_tolerance/cds_align_guidance_new_tree_unroot_label/"
dir.create(output)
allfile <- list.files(input)
for (i in 1:length(allfile)) {
  print(i)
  t <- allfile[i]
  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
}


  # heat-repeat calculation
  interest_species1 <- yeasts_heat[yeasts_heat$heat_tolerance == "Yes", ]
  interest_species <- interest_species1$old_species_id
  interest_species <- interest_species[!is.na(interest_species)]
  input <- "/home/luhongzhong/ortholog_343_heat_tolerance_2/cds_align_guidance_new_tree_unroot/"
  output <- "/home/luhongzhong/ortholog_343_heat_tolerance_2/cds_align_guidance_new_tree_unroot_label/"
  dir.create(output)
  allfile <- list.files(input)
  for (i in 1:length(allfile)) {
    print(i)
    t <- allfile[i]
    produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
  }



# heat2
# interest_species1 <- yeasts_heat[yeasts_heat$heat_tolerance == "Yes", ]
# interest_species <- interest_species1$old_species_id
# interest_species <- interest_species[!is.na(interest_species)]
# input <- "/home/luhongzhong/ortholog_select_OG_for_heat/unroot_tree/"
# output <- "/home/luhongzhong/ortholog_select_OG_for_heat/unroot_tree_label/"
# dir.create(output)
# allfile <- list.files(input)
# for (i in 1:length(allfile)) {
#  print(i)
#  t <- allfile[i]
#  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
#}







# crabtree
interest_species1 <- yeasts_crabtree[yeasts_crabtree$crabtree_effect == "Yes", ]
interest_species <- interest_species1$old_species_id
interest_species <- interest_species[!is.na(interest_species)]
input <-"/home/luhongzhong/ortholog_343_crabtree/cds_align_guidance_new_tree_unroot/"
output <- "/home/luhongzhong/ortholog_343_crabtree/cds_align_guidance_new_tree_unroot_label/"
dir.create(output)
allfile <- list.files(input)
for (i in 1:length(allfile)) {
  print(i)
  t <- allfile[i]
  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
}


# crabtree-repeat calculation
interest_species1 <- yeasts_crabtree[yeasts_crabtree$crabtree_effect == "Yes", ]
interest_species <- interest_species1$old_species_id
interest_species <- interest_species[!is.na(interest_species)]
input <-"/home/luhongzhong/ortholog_343_crabtree_2/cds_align_guidance_new_tree_unroot/"
output <- "/home/luhongzhong/ortholog_343_crabtree_2/cds_align_guidance_new_tree_unroot_label/"
dir.create(output)
allfile <- list.files(input)
for (i in 1:length(allfile)) {
  print(i)
  t <- allfile[i]
  produceLabelTree(tr_id = t, tr_dir = input, out_dir = output, species_choose = interest_species)
}

