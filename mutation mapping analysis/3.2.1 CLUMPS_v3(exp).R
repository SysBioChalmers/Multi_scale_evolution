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




##batch process for the above whole process
#------------batch process--------------------------------------------------------
#------------new version----------------------------------------------------------
#------------this version is used to preprocess data from 1011 project

# step 0
# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/evolution/result/pdb_ex_filter_manual_check.xlsx")
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
  ss <- pdb_Ex$locus[i]
  mutated_gene0 <- preprocessSNP(ss, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]

  #gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature_GEM)
  gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature0)

  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1, gene_snp0 = gene_snp)
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
    pdb_Ex$p_value[i] <- getPvalue(wap_original, wap_sample0)
    print(paste('-------p_value=', pdb_Ex$p_value[i], sep = ""))
  } else {
    pdb_Ex$p_value[i] <- 'NA'
    print("------Not enough mutation")
    next
  }

}

# save the result
write.table(pdb_Ex, paste(outfile0,'/','pdb_EX.txt', sep = ""), row.names = FALSE, sep = "\t")
















