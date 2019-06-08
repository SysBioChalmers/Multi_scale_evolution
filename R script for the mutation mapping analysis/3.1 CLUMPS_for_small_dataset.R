# this script is showing how to analyze the data for the SNP data in the excel format
# it is also base for hotspot and clumps analysis method
# the SNP format is as followed:
# Chr       pos      Ref       Alt
# chr1      19971    C         T
# chr1      19972    T         C

#source('genome_annotation.R')

#get the gene name
#try to calculate the mutation on the amino acids based on the coordination on the chromosome
mutated_test <- read_excel("data/snp_adaption_to_high_ethanol.XLS")
mutated_test$Chr <- str_trim(mutated_test$Chr, side = "both")
mutated_test$Pos <- as.numeric(mutated_test$Pos)



for (i in seq(length(mutated_test$Chr))){
  print(i)
  mutated_test$Gene2[i] <- getGeneName(mutated_test$Chr[i],mutated_test$Pos[i])
}

mutated_test0 <- filter(mutated_test, Gene2 != "INTERGENIC") ##filter the mutated test

#choose the metabolic gene
#if the gene is type of "complement", then the complement_sign is "TRUE"
#else the complement_sign is "FALSE"
gene_feature_GEM$complement_sign <- str_detect(gene_feature_GEM$cds_location,"complement")
index_m <- which(mutated_test0$Gene2 %in% gene_feature_GEM$locus_tag ==TRUE)
mutated_gene <- mutated_test0[index_m,]


mutated_gene$Ref <- str_trim(mutated_gene$Ref, side = "both")
mutated_gene$Alt <- str_trim(mutated_gene$Alt, side = "both")



#The followed part is based on one gene under different condition
#mutated gene information preprocess
#if mutation_position existed, get the mutated gene
#input the mutated information of gene from different conditons or strains

mutated_gene$complement_sign <- getSingleMatchParameter(gene_feature_GEM$complement_sign,gene_feature_GEM$locus_tag,mutated_gene$Gene2)
mutated_gene1 <- mutated_gene

for (i in seq(length(mutated_gene1$Chr))){
  if(mutated_gene1$complement_sign[i]){
  mutated_gene1$Ref[i] <- changeATCG(mutated_gene1$Ref[i])
  mutated_gene1$Alt[i] <- changeATCG(mutated_gene1$Alt[i])

  } else{
    mutated_gene1$Ref[i] <- mutated_gene1$Ref[i]
    mutated_gene1$Alt[i] <- mutated_gene1$Alt[i]
  }
}



#first run the program for each gene from different conditions or strains
#pre-process the gene annotation data before mutation mapping
#update the mutation information in the protein level
gene_list  <- unique(mutated_gene1$Gene2)
tt <- vector()
for (i in seq_along(gene_list)) {
  ss <- gene_list[i]
  gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature_GEM)
  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1, gene_snp0 = gene_snp)
  tt[i] <- sum(gene_snp[["pro_mutation_count"]])
  print(gene_snp)
}


#results analysis
num_gene_with_nsSNP <- tt[tt > 0]
num_nsSNP <- sum(num_gene_with_nsSNP)
protein_mutation <- data.frame(orf=gene_list,nsSNP=tt)
#import the annotation of these protein
gene_annotation <- read.delim2("data/all_gene_yeast with annotation from different database.txt")
protein_mutation$annotation_sgd <- getSingleMatchParameter(gene_annotation$annotation_SGD,gene_annotation$gene,protein_mutation$orf)
protein_mutation$annotation_uni <- getSingleMatchParameter(gene_annotation$annotation_uniprot,gene_annotation$gene,protein_mutation$orf)
protein_mutation0 <- protein_mutation[protein_mutation$nsSNP >= 4,]
write.table(protein_mutation0,"result/protein_mutation0.txt", row.names = FALSE, sep = "\t" )




#-----------------------------------------------------------------------------------------
#analyze the mutation information with the structure
#-----------------------------------------------------------------------------------------

#first example
ss = 'YPR184W'
seq_from_3D <- 2:1534#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
dirForDistanceMatrix <- 'residue_distance/pdb_homo/2_1534_5d06.1.A_5b2453487f4bf94bf75ead43.pdb.txt'
gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature_GEM)
gene_snp[['pro_mutation_count']] <- countMutationProtein(gene_name = ss, mutation_annotation=mutated_gene1, gene_snp0 = gene_snp)
pos_mutation <- which(gene_snp[['pro_mutation_count']] != 0)

#residue_distance/pdb_homo/2_1534_5d06.1.A_5b2453487f4bf94bf75ead43.pdb.txt

#input the distance of all the pired residues
#ResidueDistance <- read_excel(dirForDistanceMatrix,col_names = FALSE) #in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance <- read.table(dirForDistanceMatrix,sep = ",") #in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance <- as.matrix(ResidueDistance)
dim(ResidueDistance)
ResidueDistance[1:5,1:5]
#obtain the mutation information for the structure
residueIn3D <- gene_snp[['protein']][seq_from_3D]
pos_mutation_3D <- gene_snp[['pro_mutation_count']][seq_from_3D]


#mutation position on structure and #mutation number on structure
pos_mutation_c <- which(pos_mutation_3D != 0)
seq0 <- 1:length(pos_mutation_3D) #seq0 is the coordinate of PDB structure
pos_count_num <- pos_mutation_3D[pos_mutation_c]


#calculate p_values using CLUPMS method
sample_standard1 <- sampleStand(pos_mutation_3D)
wap_original <- getTotalWAP(pos_mutation_c,sample_standard1,ResidueDistance)
wap_sample0 <- getSampleWAP(pos_mutation_c,sample_standard1,ResidueDistance, seq=seq0,n=10000)
plotNullDistribution(wap_sample0, wap_original0 = wap_original)
Strain_3D <- getPvalue(wap_original,wap_sample0)


# print the mutation information for the input SNP list contained in the protein 3D structure
pdbID <- '2_1534_5d06.1.A_5b2453487f4bf94bf75ead43'
SNP_list <- printSNPforGene(gene0 = 'YPR184W',
                SNPlist0 = mutated_gene1,
                gene_annotation0 = gene_feature_GEM,
                pdbID0 = pdbID,
                sstart0 = 2,
                send0 = 1534)




#-------------------------------------------------------------------------------
#second example
#-------------------------------------------------------------------------------
ss = 'YMR246W'
seq_from_3D <- 39:691#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
dirForDistanceMatrix <- 'residue_distance/pdb_homo/39_691_5mst.1.A_5b41c4d68fd6f9da68b53e00.pdb.txt'
gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature_GEM)
gene_snp[['pro_mutation_count']] <- countMutationProtein(gene_name = ss, mutation_annotation=mutated_gene1, gene_snp0 = gene_snp)
pos_mutation <- which(gene_snp[['pro_mutation_count']] != 0)


#input the distance of all the pired residues
#ResidueDistance <- read_excel(dirForDistanceMatrix,col_names = FALSE) #in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance <- read.table(dirForDistanceMatrix,sep = ",") #in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance <- as.matrix(ResidueDistance)


#obtain the mutation information for the structure
residueIn3D <- gene_snp[['protein']][seq_from_3D]
pos_mutation_3D <- gene_snp[['pro_mutation_count']][seq_from_3D]


#mutation position on structure and #mutation number on structure
pos_mutation_c <- which(pos_mutation_3D != 0)
seq0 <- 1:length(pos_mutation_3D) #seq0 is the coordinate of PDB structure
pos_count_num <- pos_mutation_3D[pos_mutation_c]


#calculate p_values using UPMS method
sample_standard1 <- sampleStand(pos_mutation_3D)
wap_original <- getTotalWAP(pos_mutation_c,sample_standard1,ResidueDistance)
wap_sample0 <- getSampleWAP(pos_mutation_c,sample_standard1,ResidueDistance, seq=seq0,n=10000)
plotNullDistribution(wap_sample0, wap_original0 = wap_original)
Strain_3D <- getPvalue(wap_original,wap_sample0)

