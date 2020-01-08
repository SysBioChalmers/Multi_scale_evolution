#----------------note
# this main script is used to handle with the gene mutation only from SNP information
# in this process, the gene with SNP will be translated into protein, based on which
# the SNP could be classified into nsSNP and sSNP
# Only nsSNP is used to mapping onto protein 3D structure
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE, stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")

# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
# save the protein structure in the current dir  for re-use
write.table(pdb_Ex, "data/pdb_info_experiment_2020_01", row.names = FALSE, sep = "\t")


pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_Ex <- pdb_Ex[which(pdb_Ex$locus %in% geneWithSNP),]
# unify the file name
pdb_info <- pdb_Ex

#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "") # here, it is different from homology PDB files
  # run the function
  hotSpotAnalysis(
    gene0 = ss0,
    pdbID = pdbID,
    SNPlist0 = mutated_gene1,
    gene_annotation0 = gene_feature0,
    pdb = distance_dir,
    sstart0 = pdb_info$sstart2[i], # coordinate of orginal protein residues sequence
    send0 = pdb_info$send2[i],     # coordinate of orginal protein residues sequence
    qstart0 = pdb_info$qstart2[i], # coordinate of protein residues sequence in pdb file
    qend0 = pdb_info$qend2[i],     # coordinate of protein residues sequence in pdb file
    result_dir = outfile0,
    strain_type = strain_type,
    input_dir=TRUE
  )
}




######### group2 -medium  #######################################################################
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE, stringsAsFactors = FALSE)
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
# unify the file name
pdb_info <- pdb_Ex

#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "") # here, it is different from homology PDB files
  # run the function
  hotSpotAnalysis(
    gene0 = ss0,
    pdbID = pdbID,
    SNPlist0 = mutated_gene1,
    gene_annotation0 = gene_feature0,
    pdb = distance_dir,
    sstart0 = pdb_info$sstart2[i], # coordinate of orginal protein residues sequence
    send0 = pdb_info$send2[i],     # coordinate of orginal protein residues sequence
    qstart0 = pdb_info$qstart2[i], # coordinate of protein residues sequence in pdb file
    qend0 = pdb_info$qend2[i],     # coordinate of protein residues sequence in pdb file
    result_dir = outfile0,
    strain_type = strain_type,
    input_dir=TRUE
  )
}




######### group3 - low  #########################################################################
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE, stringsAsFactors = FALSE)
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
# unify the file name
pdb_info <- pdb_Ex

#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

for (i in 1:length(pdb_info$locus)) {
  print(i)
  ss0 <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss0, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- pdb_info$pdbid[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "") # here, it is different from homology PDB files
  # run the function
  hotSpotAnalysis(
    gene0 = ss0,
    pdbID = pdbID,
    SNPlist0 = mutated_gene1,
    gene_annotation0 = gene_feature0,
    pdb = distance_dir,
    sstart0 = pdb_info$sstart2[i], # coordinate of orginal protein residues sequence
    send0 = pdb_info$send2[i],     # coordinate of orginal protein residues sequence
    qstart0 = pdb_info$qstart2[i], # coordinate of protein residues sequence in pdb file
    qend0 = pdb_info$qend2[i],     # coordinate of protein residues sequence in pdb file
    result_dir = outfile0,
    strain_type = strain_type,
    input_dir=TRUE
  )
}



