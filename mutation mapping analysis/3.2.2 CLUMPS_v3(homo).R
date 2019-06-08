#----------------note
#this main script is used to handle with the gene mutation only from SNP information
#in this process, the gene with SNP will be translated into protein, based on which
#the SNP could be classified into nsSNP and sSNP
#Only nsSNP is used to mapping onto protein 3D structure



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





#step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")


##batch process for the above whole process
#------------batch process--------------------------------------------------------
#------------new version----------------------------------------------------------
#------------this version is used to preprocess data from 1011 project

# step 0
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

#add two more clumns
pdb_info$strain_type <- strain_type
pdb_info$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
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
  dim(ResidueDistance)

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

  # there should be two postions which have mutations
  if (length(pos_mutation_3D) >= 2) {
    # wap calculation for each pair mutated residue
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # step 3
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # calculate the wap for each pair of mutated residues based on mutation postion
    wap_original <- getTotalWAP(pos_mutation_3D, sample_standard1, ResidueDistance)

    # change the postion of mutation while keep the mutation number in each postion
    # only change the postion but not change the mutated number???
    wap_sample0 <- getSampleWAP(pos_mutation_3D, sample_standard1, ResidueDistance, seq = seq_3D, n = 10000)

    # analyze the result
    plotNullDistribution(wap_sample0)
    pdb_info$p_value[i] <- getPvalue(wap_original, wap_sample0)
    print(paste('-------p_value=', pdb_info$p_value[i], sep = ""))
  } else {
    pdb_info$p_value[i] <- 'NA'
    print("Not enough mutation")
    next
  }

}


# save the result
write.table(pdb_info, paste(outfile0,'/','pdb_info.txt', sep = ""), row.names = FALSE, sep = "\t")
