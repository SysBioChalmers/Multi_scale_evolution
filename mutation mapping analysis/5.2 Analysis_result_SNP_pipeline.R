#----------------note
# this main script is used to handle with the gene mutation only from SNP information
# in this process, the gene with SNP will be translated into protein, based on which
# the SNP could be classified into nsSNP and sSNP
# Only nsSNP is used to mapping onto protein 3D structure
# the nsSNP will be printed used for the mutation function prediction based on mutFunc

# step0 choose samples that need to be analyzed
#strain_classification <- read_excel("data/strain_classification.xls")
#strain_type <- "bioethanol"
#strain_select1 <- chooseStrain(type = strain_type)
strain_classification <- read.table("data/strain_glycerol_classification.txt", header = TRUE, stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"glycerol_high"
strain_select1 <- chooseStrain(type = "glycerol_high")




# input the data of clumps method
clumps_ex <- read.table(paste('result/CLUMPS from pdb_ex for ',strain_type, '/pdb_EX.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
clumps_ex$pdb_source <- "Exp"
clumps_homo <- read.table(paste('result/CLUMPS from pdb_homo for ',strain_type, '/pdb_info.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
clumps_homo$pdb_source <- "Homo"
clumps_all <- rbind.data.frame(clumps_ex, clumps_homo)
clumps_all_fiter <- filter(clumps_all, p_value <= 0.05)

# remove pdb file with the same gene and same residue coordinate
clumps_all_fiter$combineINF <- paste(clumps_all_fiter$locus, clumps_all_fiter$sstart2, clumps_all_fiter$send2, sep = "@@")
clumps_all_fiter0 <- clumps_all_fiter[!duplicated(clumps_all_fiter$combineINF),]

# merge with the genome annotation for the the interesting protein set
gene_annotation <- read.delim2('data/all_gene_yeast with annotation from different database.txt', header = TRUE, stringsAsFactors = FALSE)
clumps_all_fiter0 <- merge.data.frame(clumps_all_fiter0,gene_annotation,by.x = "locus", by.y = 'gene', all.x = TRUE)


# gene with pdb file which have mutation enrichment
gene_sum <- unique(clumps_all_fiter0$locus)
gene_sum0 <- paste0(gene_sum,collapse = ",")





# interest geneset1 enrichment in glycosis pathway: 'YDR050C', 'YKL060C', 'YAL054C', 'YGL253W', 'YGR240C', 'YKR097W', 'YDL021W'
# YGL253W's PDB file only contain 17 amino acids residue
# YDL021W's PDB file are of low quality
# it still have a pdb structure with 486 residues
# this lead to a new question? whether the choosed pdb file could
# represent the aimed protein
# in general, we should choose the PDB file contains the longest residue sequence
#geneset1 <- c('YML100W','YAR035W','YJL068C','YMR246W') #for bioethonal
geneset1 <- 'YHL032C'
geneset1_index <- which(clumps_all_fiter0$locus %in% geneset1)
geneset1_detail <- clumps_all_fiter0[geneset1_index,]

for (i in 1:length(geneset1_detail$locus)) {
  print(i)
  i <- 1
  ss0 <- geneset1_detail$locus[i]
  mutated_gene0 <- preprocessSNP(ss0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  pdbID <- geneset1_detail$pdbid[i]
  p1 <- geneset1_detail$sstart2[i]
  p2 <- geneset1_detail$send2[i]
  #in some function, gene_snp was not put as the input, should be careful
  #gene_snp <- getGeneCoordinate(gene_name = ss0, genesum = gene_feature_GEM)
  result0 <- printSNPforGene(gene0 = ss0,
                             SNPlist0 = mutated_gene1,
                             gene_annotation0 = gene_feature_GEM,
                             pdbID0 = pdbID,
                             sstart0 = p1,
                             send0 = p2)
}







