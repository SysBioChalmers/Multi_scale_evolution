#----------------note
# this main script is used to handle with the gene mutation only from SNP information
# in this process, the gene with SNP will be translated into protein, based on which
# the SNP could be classified into nsSNP and sSNP
# Only nsSNP is used to mapping onto protein 3D structure


# function need to adjusted:
preprocessSNP <- function(gene0, gene_feature) {
  # inut a gene name,
  # then the function will read all the SNP information for this gene
  # output
  # a dataframe contains each SNP information which including:
  # chrosome, geneName, ref, alf and completment sign
  infile <- paste("data/gene_snp/", gene0, sep = "")
  mutated_test <- read.table(infile, header = FALSE, sep = "\t", stringsAsFactors = FALSE)
  colnames(mutated_test) <- c("strain", "Gene2", "Chr", "Pos", "Ref", "Alt")
  mutated_test$complement_sign <- getSingleReactionFormula(gene_feature$complement_sign, gene_feature$locus_tag, mutated_test$Gene2)
  mutated_gene0 <- mutated_test
  for (i in seq(length(mutated_gene0$Chr))) {
    if (mutated_gene0$complement_sign[i]) {
      mutated_gene0$Ref[i] <- changeATCG(mutated_gene0$Ref[i])
      mutated_gene0$Alt[i] <- changeATCG(mutated_gene0$Alt[i])
    } else {
      mutated_gene0$Ref[i] <- mutated_gene0$Ref[i]
      mutated_gene0$Alt[i] <- mutated_gene0$Alt[i]
    }
  }

  return(mutated_gene0)
}

PositionResidueSNP <- function(mutatedPosition, alted, geneName, gene_feature) {
  #mutatedPosition = 130975
  #alted ='A'
  #geneName = "YAL012W"
  gene_snp <- getGeneCoordinate(gene_name = geneName, genesum = gene_feature)
  mutation_position <- which(gene_snp[['gene_coordinate']]==mutatedPosition)

  gene_snp[['gene']][mutation_position] <- alted

  # translation
  #library(seqinr)
  realcds <- str_to_lower(paste(gene_snp[["gene"]], collapse = ""))
  toycds <- s2c(realcds)
  gene_snp[["protein_mutated"]] <- translate(seq = toycds)

  # find the relative postion of mutated amino acids
  aa_position <- which(gene_snp[["protein"]] != gene_snp[["protein_mutated"]])
  aa_type <- gene_snp[["protein_mutated"]][aa_position]

  # built the relation between aa_position and aa_type
  # aa_postion and aa_type should contain one element
  mutatedAA <- paste(aa_type, aa_position, sep = "@@") # this estabolish the relation between the postion and mutated amino acids
  return(mutatedAA)
}





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
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/evolution/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_Ex <- pdb_Ex[which(pdb_Ex$locus %in% geneWithSNP),]


#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)


#start the batch process
for (i in 1:length(pdb_Ex$locus)) {

  # step 1
  # preprocess the SNP information
  print(i)
  ss <- pdb_Ex$locus[i]
  mutated_gene0 <- preprocessSNP(ss, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]

  gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature0)
  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1,  gene_snp0 = gene_snp)
  gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
  pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


  # step 2 input the structure information
  # input the distance of all the pired residues
  pdbID <- pdb_Ex$pdbid[i]
  r1 <- pdb_Ex$qstart2[i]
  r2 <- pdb_Ex$qend2[i] # input the corrected residue sequnence
  r3 <- paste(r1, r2, sep = "-")
  dirForDistanceMatrix <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]


  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
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
    gene_snp[["residue"]] <- getMultipleMatchParameter(pos_residue_df$residue, pos_residue_df$pos, gene_snp[["pro_coordinate"]])
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
      print("------NO sigificant pairs")
      next
    }
  } else {
    print("------Not enough mutation")
    next
  }
}
