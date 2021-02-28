#----------------note
#this main script is used to conduct the evolution analysis based on the protein 3D structures
# firstly run:
# 2_main_function_for_evolution.R


#################################################################################################################
strain_type <-"dN_dS_max_gap_ratio_0.3"


# step 0
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info1 <- read_excel("/Users/luho/Documents/GitHub/De-nevo-protein-3D-structure-yeast/pdb_itasser.xlsx") # structure from itasser
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
pdb_info1 <- select(pdb_info1, locus, pdbid, sstart2, send2)
# combine the above information together
pdb_info <- rbind.data.frame(pdb_info1, pdb_info)
# check whether gene contains SNP annotation
# pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA

# here it can be found 20 rows without gene locus id
# check <- pdb_info[is.na(pdb_info$locus),] # it seems that these protein seq is defined in the uniprot


############## save the protein structure in the current dir  for re-use #############
write.table(pdb_info, "data/pdb_info_homology_2020_01", row.names = FALSE, sep = "\t")
#pdb_info <- read.table("data/pdb_info_homology_2020_01", header = TRUE, sep ="\t", stringsAsFactors = FALSE )


#add two more columns
pdb_info$strain_type <- strain_type
pdb_info$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)
#which(pdb_info$locus=="YPR001W")



# main loop
id_need_check <- c() # to store OGs which does not have sce seq id as the column name. There are total 59 OG id to be checked!!
for (i in 1:length(pdb_info$locus)) {
  print(i)

  #i <- 18 # for the test!!!!!

  ss0 <- pdb_info$locus[i]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  # prepare the selected sites
  mod2=try(getSelectSite(panID0 = ss0, site_type = "positive"),TRUE)

  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "positive")
  }

  if (!is.na(mutate_residues)) {
    result0 <- clumpsAnalysis2(
      gene0 = ss0, SNPlist0 = mutate_residues, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1,
      send0 = p2, input_dir = TRUE, snp_type = FALSE
    )
  } else {
    result0 <- "No interesting sites or related Ortholog groups!"
  }

  pdb_info$p_value[i] <- result0
}

# save the result
write.table(pdb_info, paste(outfile0,'/','pdb_info_for_positive_selection.txt', sep = ""), row.names = FALSE, sep = "\t")



















#################################################################################################################
# test part
# positive selected sites check
id_need_check <- c()
for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")

  mod2=try(getSelectSite(panID0 = ss0, site_type = "positive"),TRUE)
  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "positive")
  }

  print(mutate_residues)
}
