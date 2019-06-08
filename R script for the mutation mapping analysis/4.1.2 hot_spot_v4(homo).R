#----------------note
# this main script is used to handle with the gene mutation only from SNP information
# in this process, the gene with SNP will be translated into protein, based on which
# the SNP could be classified into nsSNP and sSNP
# Only nsSNP is used to mapping onto protein 3D structure


# step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE, stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")




#------------batch process--------------------------------------------------------
#------------new version----------------------------------------------------------
#------------this version is used to preprocess data from 1011 project

# step 0
# input the gene information
# input the gene information
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/evolution/result/pdb_homo_filter_manual_check.xlsx")
#as sometimes we need the update the coordinates in the pdb homology files thus we use the mapid directly from the
#provided by the swiss model database
#pdb_info$pdbid <- paste(pdb_info$sstart2, pdb_info$send2, pdb_info$template, pdb_info$coordinate_id,sep = "_")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA


#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

for (i in 1:length(pdb_info$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  ss <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]

  gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature0)
  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1, gene_snp0 = gene_snp)
  gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
  pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


  # step 2 input the structure information
  # input the distance of all the pired residues
  pdbID <- pdb_info$pdbid[i]
  r1 <- pdb_info$qstart2[i]
  r2 <- pdb_info$qend2[i] # input the corrected residue sequnence
  r3 <- paste(r1, r2, sep = "-")
  dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]


  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  p3 <- paste(p1, p2, sep = "-")
  seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
  amino_acid_3D <- gene_snp[["protein"]][seq_3D_origin]
  count_mutation_3D <- gene_snp[["pro_mutation_count"]][seq_3D_origin]

  # mutation position on structure and #mutation number on structure
  pos_mutation_3D <- which(count_mutation_3D != 0)
  seq_3D <- 1:length(count_mutation_3D) # seq0 is the coordinate of PDB structure
  mutation_count_3D <- count_mutation_3D[pos_mutation_3D]

  #there should be two postions which have mutations
  if (length(pos_mutation_3D) >= 2) {
    # wap calculation for each pair mutated residue
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # step 3 hot spot analysis
    # this main function will be divided into different parts for easy understanding
    pos_residue1 <- list()
    for (i in seq_along(mutated_gene1$strain)) {
      pos_residue1[[i]] <- PositionResidueSNP(mutated_gene1$Pos[i], mutated_gene1$Alt[i], ss, gene_feature = gene_feature0)
    }

    pos_residue_df <- ResidueSum(pos_residue1)


    # mapping the mutate residue onto the original protein sequence
    gene_snp[["residue"]] <- getMultipleReactionFormula(pos_residue_df$residue, pos_residue_df$pos, gene_snp[["pro_coordinate"]])
    residue_3D <- gene_snp[["residue"]][seq_3D_origin]


    # obtain the paired residue
    # if the residue position is samller than 2, the folloed function will raise error and should be passed

    residue_pair <- getHotVertice(aa_3d = seq_3D, residue0 = residue_3D, aa_pro = seq_3D_origin, distance0 = ResidueDistance)
    # remove the *@@54
    residue_pair <- removeStopCoden(residue_pair)

    if (length(residue_pair$V1) >= 1) {
      # calculate closeness of each cluster
      important_hot <- clusterAnalysis(residue_pair)


      # further calculate the p value of each choosed cluster
      # calculate the pvalue for each clust
      important_hot$pvalue <- getHotPvalue(
        cluster0 = important_hot$cluster,
        sample_standard = sample_standard1,
        distance = ResidueDistance,
        seq = seq_3D
      )



      # add sample information for the result
      important_hot$gene <- ss
      important_hot$seq_3D_origin <- p3
      important_hot$structure <- pdbID
      important_hot$seq_3D <- r3
      important_hot$stain_type <- strain_type
      outfile <- paste(outfile0, '/',pdbID, "_", ss, ".txt", sep = "")
      # last step: get the mutate residue coordinate from protein seqence
      # coordinate mapping
      coordinate_mapping <- mappingCoordinateFrom3DtoProtein(aa_3d = seq_3D, residue0 = residue_3D, aa_pro = seq_3D_origin, distance0 = ResidueDistance)

      important_hot$cluster <- getOriginalCoordinateProtein(coordinate0=important_hot$cluster, coordinate_mapping0=coordinate_mapping)


      write.table(important_hot, outfile, row.names = FALSE, sep = "\t")
    } else {
      print("NO sigificant pairs")
      next
    }
  } else {
    print("Not enough mutation")
    next
  }
}
























