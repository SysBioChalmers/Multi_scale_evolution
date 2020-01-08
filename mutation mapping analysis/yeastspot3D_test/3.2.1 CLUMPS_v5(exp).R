#----------------note
#this main script is used to handle with the gene mutation only from SNP information
#in this process, the gene with SNP will be translated into protein, based on which
#the SNP could be classified into nsSNP and sSNP
#Only nsSNP is used to mapping onto protein 3D structure

#step0 choose samples that need to be analyzed
#strain_classification <- read_excel("data/strain_classification.xls")
#unique(strain_classification$Clades)

strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE,stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")

# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_Ex <- pdb_Ex[which(pdb_Ex$locus %in% geneWithSNP),]


#add two more clumns
pdb_Ex$strain_type <- strain_type
pdb_Ex$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)


for (i in 1:length(pdb_Ex$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  ss0 <- pdb_Ex$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_Ex$pdbid[i]
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_Ex$p_value[i] <- result0

}

# save the result
write.table(pdb_Ex, paste(outfile0,'/','pdb_EX.txt', sep = ""), row.names = FALSE, sep = "\t")







######### group2 -medium  #######################################################################
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE,stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_medium"
strain_select1 <- chooseStrain(type = "PDETOH_medium")

# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_Ex <- pdb_Ex[which(pdb_Ex$locus %in% geneWithSNP),]


#add two more clumns
pdb_Ex$strain_type <- strain_type
pdb_Ex$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)


for (i in 1:length(pdb_Ex$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  ss0 <- pdb_Ex$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_Ex$pdbid[i]
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_Ex$p_value[i] <- result0

}

# save the result
write.table(pdb_Ex, paste(outfile0,'/','pdb_EX.txt', sep = ""), row.names = FALSE, sep = "\t")






######### group3 - low  #########################################################################
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE,stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_low"
strain_select1 <- chooseStrain(type = "PDETOH_low")

# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_Ex <- pdb_Ex[which(pdb_Ex$locus %in% geneWithSNP),]


#add two more clumns
pdb_Ex$strain_type <- strain_type
pdb_Ex$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)


for (i in 1:length(pdb_Ex$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  ss0 <- pdb_Ex$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_Ex$pdbid[i]
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "")
  result0 <- clumpsAnalysis(gene0 = ss0, SNPlist0 = mutated_gene1, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1, send0 = p2)
  pdb_Ex$p_value[i] <- result0

}

# save the result
write.table(pdb_Ex, paste(outfile0,'/','pdb_EX.txt', sep = ""), row.names = FALSE, sep = "\t")
