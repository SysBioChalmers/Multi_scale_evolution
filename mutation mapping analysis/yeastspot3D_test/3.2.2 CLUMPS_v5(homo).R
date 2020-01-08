#----------------note
#this main script is used to handle with the gene mutation only from SNP information
#in this process, the gene with SNP will be translated into protein, based on which
#the SNP could be classified into nsSNP and sSNP
#Only nsSNP is used to mapping onto protein 3D structure

#step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")

# step 0
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info1 <- read_excel("/Users/luho/Documents/GitHub/De-nevo-protein-3D-structure-yeast/pdb_itasser.xlsx") # structure from itasser

#as sometimes we need the update the coordinates in the pdb homology files thus we use the mapid directly from the
#provided by the swiss model database
#pdb_info$pdbid <- paste(pdb_info$sstart2, pdb_info$send2, pdb_info$template, pdb_info$coordinate_id,sep = "_")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()

# some  pdb information from itasser
pdb_info1 <- select(pdb_info1, locus, pdbid, sstart2, send2)

# combine the above information together
pdb_info <- rbind.data.frame(pdb_info1, pdb_info)

# check whether gene contains SNP annotation
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

#main loop
for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0,gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_info$p_value[i] <- result0
}

# save the result
write.table(pdb_info, paste(outfile0,'/','pdb_info.txt', sep = ""), row.names = FALSE, sep = "\t")




######### group2 -medium  #######################################################################
#step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_medium"
strain_select1 <- chooseStrain(type = "PDETOH_medium")

# step 0
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info1 <- read_excel("/Users/luho/Documents/GitHub/De-nevo-protein-3D-structure-yeast/pdb_itasser.xlsx") # structure from itasser

#as sometimes we need the update the coordinates in the pdb homology files thus we use the mapid directly from the
#provided by the swiss model database
#pdb_info$pdbid <- paste(pdb_info$sstart2, pdb_info$send2, pdb_info$template, pdb_info$coordinate_id,sep = "_")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()

# some  pdb information from itasser
pdb_info1 <- select(pdb_info1, locus, pdbid, sstart2, send2)

# combine the above information together
pdb_info <- rbind.data.frame(pdb_info1, pdb_info)

# check whether gene contains SNP annotation
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

#main loop
for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0,gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_info$p_value[i] <- result0
}

# save the result
write.table(pdb_info, paste(outfile0,'/','pdb_info.txt', sep = ""), row.names = FALSE, sep = "\t")







######### group3 - low  #########################################################################
#step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_low"
strain_select1 <- chooseStrain(type = "PDETOH_low")

# step 0
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info1 <- read_excel("/Users/luho/Documents/GitHub/De-nevo-protein-3D-structure-yeast/pdb_itasser.xlsx") # structure from itasser

#as sometimes we need the update the coordinates in the pdb homology files thus we use the mapid directly from the
#provided by the swiss model database
#pdb_info$pdbid <- paste(pdb_info$sstart2, pdb_info$send2, pdb_info$template, pdb_info$coordinate_id,sep = "_")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()

# some  pdb information from itasser
pdb_info1 <- select(pdb_info1, locus, pdbid, sstart2, send2)

# combine the above information together
pdb_info <- rbind.data.frame(pdb_info1, pdb_info)

# check whether gene contains SNP annotation
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

#main loop
for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0,gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_info$p_value[i] <- result0
}

# save the result
write.table(pdb_info, paste(outfile0,'/','pdb_info.txt', sep = ""), row.names = FALSE, sep = "\t")





