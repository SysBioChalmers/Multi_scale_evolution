#----------------note
#this main script is used to conduct the evolution analysis based on the protein 3D structures


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



# firstly filter out the interesting sites, fast evolved and positively selected
# add two more columns
pdb_info$strain_type <- strain_type
pdb_info$fast_evolution <- NA
pdb_info$positive <- NA

# creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)
# which(pdb_info$locus=="YPR001W")

# main loop
id_need_check <- c() # to store OGs which does not have sce seq id as the column name. There are total 59 OG id to be checked!!


for (i in 1:length(pdb_info$locus)) {
  print(i)

  # i <- 2 # for the test!!!!!

  ss0 <- pdb_info$locus[i]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")


  # prepare the fast evolve sites
  mod2=try(getSelectSite(panID0 = ss0, site_type = "fast_evolution"),TRUE)

  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "fast_evolution")
  }


  if (!is.na(mutate_residues)) {
    site_out <- paste0(mutate_residues$Pos,collapse = ",")
  } else {
    site_out <- NA
  }
  pdb_info$fast_evolution[i] <- site_out




  # prepare the positive selected sites
  mod2=try(getSelectSite(panID0 = ss0, site_type = "positive"),TRUE)

  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "positive")
  }


  if (!is.na(mutate_residues)) {
    site_out <- paste0(mutate_residues$Pos,collapse = ",")
  } else {
    site_out <- NA
  }

  pdb_info$positive[i] <- site_out

}

# save the result
write.table(pdb_info, "result/pdb_info_homolog_with_positive_fast_evolved_sites.txt", row.names = FALSE, sep = "\t")





#############################################################
# calculate the distance based on the active sites or sites of each protein
# input the site defintion
conserved_sites <- read_csv("Evolution_data/hihgly_conserved_sites_for_all_gene.csv")
conserved_sites$site_coordinate <- str_replace_all(conserved_sites$site_coordinate, "\\[", "") %>%
  str_replace_all(., "\\]", "")

# merge the active site
pdb_info$conserved_sites <- getSingleReactionFormula(conserved_sites$site_coordinate,conserved_sites$gene,pdb_info$locus)


# check which gene has the significant mutation clusters? then we could do the analysis based on these genes set




############################################################
# for the fast evolved sites
interest_site <- pdb_info[!is.na(pdb_info$fast_evolution) & (pdb_info$conserved_sites !="NA"),]
# establist a null vector
distance_summary <- vector()

for (i in 1:length(interest_site$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  # test
  # i <- 77  # cannot open file 'residue_distance/pdb_homo/26_2193_5csk.1.B_5cc855903b85d1d81b872461.pdb.txt': No such file or directory
  ss <- interest_site$locus[i]
  # step 2 input the structure information
  # input the distance of all the pired residues
  pdbID <- interest_site$pdbid[i]
  r1 <- interest_site$qstart2[i]
  r2 <- interest_site$qend2[i] # input the corrected residue sequnence
  r3 <- paste(r1, r2, sep = "-")
  dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]
  dim(ResidueDistance)

  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- interest_site$sstart2[i]
  p2 <- interest_site$send2[i]
  p3 <- paste(p1, p2, sep = "-")
  seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates

  # mutation position on structure and #mutation number on structure
  seq_3D <- 1:length(seq_3D_origin) # seq0 is the coordinate of PDB structure

  id_mapping0 <- data.frame(pro_coordinate=seq_3D_origin, structure_coordinate=seq_3D, stringsAsFactors = FALSE)

  # annotate the protein coorddinate
  conserved_site0 <- interest_site$conserved_sites[i]
  conserved_site1 <- as.numeric(unlist(str_split(conserved_site0,",")))

  input_site0 <- interest_site$fast_evolution[i]
  input_site1 <- as.numeric(unlist(str_split(input_site0,",")))

  id_mapping0$is_conserved <- NA
  id_mapping0$is_interest <- NA
  id_mapping0$is_conserved[id_mapping0$pro_coordinate %in% conserved_site1] <- "Yes"
  id_mapping0$is_interest[id_mapping0$pro_coordinate %in% input_site1] <- "Yes"


  # next calculate the ditance among any two sites from conserved and input
  conserved_coordinate_3d <- id_mapping0$structure_coordinate[id_mapping0$is_conserved =="Yes" & (!is.na(id_mapping0$is_conserved))]
  input_coordinate_3d <- id_mapping0$structure_coordinate[id_mapping0$is_interest =="Yes" & (!is.na(id_mapping0$is_interest))]
  # combine the combines
  df <- expand.grid(conserved_coordinate_3d, input_coordinate_3d)
  # then extract the ditance from residue distance matrix
  All_distance <- vector()
  for(j in 1:length(df$Var1)){
    # print(j)
    coord1 <- df$Var1[j]
    coord2 <- df$Var2[j]
    distance0 <- ResidueDistance[coord1,coord2]
    All_distance <- c(All_distance, distance0)
    if(length(distance0)<1){
      print("check the result")
    }
  }


  distance_summary <- c(distance_summary, All_distance)

}


# be careful about the results as there is NA in the result. it is because that the input interesting sites did not have the related structures information.
# calculate how many distance is larger than 10 Å
# the result is that over 98.74% of paired residues distance is over 10 A.
distance_summary <- distance_summary[!is.na(distance_summary)]
distance_over_10 <- distance_summary[distance_summary>10]
ratio <- length(distance_over_10) / length(distance_summary)


# plot the result
plot(density(distance_summary[!is.na(distance_summary)]))
disntance_df <- data.frame(distance=distance_summary[!is.na(distance_summary)])
ggplot(disntance_df, aes(distance)) +
  geom_histogram(aes(y = ..density..), alpha = 0.5, fill = "blue", bins = 50) +
  xlim(0, 100) +
  theme(panel.background = element_rect(fill = "white", colour = "black")) +
  geom_density(colour = "black", alpha = 0.3, fill = "grey50") +
  theme(axis.text = element_text(size = 20), axis.title = element_text(size = 24)) +
  geom_vline(
    xintercept = 10, linetype = "dotted",
    color = "red", size = 1
  ) +
  xlab("Distance of paired residues (Å)") + ylab("Density")
ggsave(out <- paste('result/','Distribution_of_distance_between_fast_evolved_site_and_conserved_site','.svg', sep = ""), width=6, height=5, dpi=600)




#########################################################################
# for the positive selected sites
interest_site <- pdb_info[!is.na(pdb_info$positive) & (pdb_info$conserved_sites !="NA"),]
# establist a null vector
distance_summary2 <- vector()

for (i in 1:length(interest_site$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  #i <- 7 # for the test
  ss <- interest_site$locus[i]
  # step 2 input the structure information
  # input the distance of all the pired residues
  pdbID <- interest_site$pdbid[i]
  r1 <- interest_site$qstart2[i]
  r2 <- interest_site$qend2[i] # input the corrected residue sequnence
  r3 <- paste(r1, r2, sep = "-")
  dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]
  dim(ResidueDistance)

  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- interest_site$sstart2[i]
  p2 <- interest_site$send2[i]
  p3 <- paste(p1, p2, sep = "-")
  seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates

  # mutation position on structure and #mutation number on structure
  seq_3D <- 1:length(seq_3D_origin) # seq0 is the coordinate of PDB structure

  id_mapping0 <- data.frame(pro_coordinate=seq_3D_origin, structure_coordinate=seq_3D, stringsAsFactors = FALSE)

  # annotate the protein coorddinate
  conserved_site0 <- interest_site$conserved_sites[i]
  conserved_site1 <- as.numeric(unlist(str_split(conserved_site0,",")))

  input_site0 <- interest_site$positive[i]
  input_site1 <- as.numeric(unlist(str_split(input_site0,",")))

  id_mapping0$is_conserved <- NA
  id_mapping0$is_interest <- NA
  id_mapping0$is_conserved[id_mapping0$pro_coordinate %in% conserved_site1] <- "Yes"
  id_mapping0$is_interest[id_mapping0$pro_coordinate %in% input_site1] <- "Yes"


  # next calculate the ditance among any two sites from conserved and input
  conserved_coordinate_3d <- id_mapping0$structure_coordinate[id_mapping0$is_conserved =="Yes" & (!is.na(id_mapping0$is_conserved))]
  input_coordinate_3d <- id_mapping0$structure_coordinate[id_mapping0$is_interest =="Yes" & (!is.na(id_mapping0$is_interest))]
  # combine the combines
  df <- expand.grid(conserved_coordinate_3d, input_coordinate_3d)
  # then extract the ditance from residue distance matrix
  All_distance <- vector()
  for(j in 1:length(df$Var1)){
    # print(j)
    coord1 <- df$Var1[j]
    coord2 <- df$Var2[j]
    distance0 <- ResidueDistance[coord1,coord2]
    All_distance <- c(All_distance, distance0)
    if(length(distance0)<1){
      print("check the result")
    }
  }

  distance_summary2 <- c(distance_summary2, All_distance)
}


# calculate how many distance is larger than 10 Å
# the result is that over 95% of paired residues distance is over 10 A.
distance_summary2 <- distance_summary2[!is.na(distance_summary2)]
distance_over2_10 <- distance_summary2[distance_summary2>10]
ratio2 <- length(distance_over2_10) / length(distance_summary2)


# plot the result
plot(density(distance_summary2[!is.na(distance_summary2)]))
disntance_df <- data.frame(distance=distance_summary2[!is.na(distance_summary2)])
ggplot(disntance_df, aes(distance)) +
  geom_histogram(aes(y = ..density..), alpha = 0.5, fill = "blue", bins = 50) +
  xlim(0, 100) +
  theme(panel.background = element_rect(fill = "white", colour = "black")) +
  geom_density(colour = "black", alpha = 0.3, fill = "grey50") +
  theme(axis.text = element_text(size = 16), axis.title = element_text(size = 20, face = "bold")) +
  geom_vline(
    xintercept = 10, linetype = "dotted",
    color = "red", size = 1
  )
