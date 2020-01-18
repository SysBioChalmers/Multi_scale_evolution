# note------------
# here we try to analysis the pdb coverage analysis based on pathway
# we want to find which pathway have low ratio of proteins without pdb files
# based on this we can use deno prediction to improve the coverage in some key pathway
# the definition of pathway can be from KEGG or reactome, as these two databases are very comprehensive
# by comparsion, there are so many pathways from reactome database, thus it should be more easy using the pathway definiton from kegg database
library(tidyverse)
library(readxl)
library(hongR)
library(ggplot2)
# input the pathway definition from kegg and reactome database
# the original data is downloaded on 2019-06-03
sce_pathway_kegg <- read.table('data/sce_pathway_kegg.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
sce_pathway_reactome <- read.table('data/sce_pathway_reactome.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
# input the mutation information
all_gene_SNP <- read_excel("data/all_gene_with SNP number.xlsx")
all_gene_SNP <- filter(all_gene_SNP, nsSNP !='NA')
all_gene_SNP$nsSNP <- as.numeric(all_gene_SNP$nsSNP)
all_gene_SNP$dN_dS <- all_gene_SNP$nsSNP/all_gene_SNP$SNP_NUM

# part 1
#---------------------------------------------------------------------------------
# Mutation enrichment analysis based on the relative number of nsSNP in each gene
# which is equal to the number of nsSNP divided by the related protein length
#--------------------------------------------------------------------------------
#input the genome annotation of gene from SGD database
s288_sgd_annotation <- read_tsv('data/s288_genome.tsv')

# function to standardize the snp number for each gene
calc_relative_snp <- function(geneName, snp_number, annotation = s288_sgd_annotation) {
  #gene_list <- geneGEM$geneNames
  #snp_list <- geneGEM$SNP_NUM
  gene_list <- geneName
  snp_list <- snp_number
  snp_list <- as.numeric(snp_list)
  protein_length <- getSingleReactionFormula(annotation$protein_length, annotation$systematic_name, gene_list)
  protein_length <- as.numeric(protein_length)
  snp_relative <- snp_list / protein_length
  return(snp_relative)
}

all_gene_SNP$SNP_NUM <- calc_relative_snp(all_gene_SNP$locus_tag,all_gene_SNP$SNP_NUM)
all_gene_SNP$nsSNP <- calc_relative_snp(all_gene_SNP$locus_tag,all_gene_SNP$nsSNP)
sce_pathway_kegg$SNP_NUM <- getSingleReactionFormula(all_gene_SNP$SNP_NUM,all_gene_SNP$locus_tag,sce_pathway_kegg$geneID)
sce_pathway_kegg$nsSNP <- getSingleReactionFormula(all_gene_SNP$nsSNP,all_gene_SNP$locus_tag,sce_pathway_kegg$geneID)
sce_pathway_kegg$SNP_NUM <- as.numeric(sce_pathway_kegg$SNP_NUM)
sce_pathway_kegg$nsSNP <- as.numeric(sce_pathway_kegg$nsSNP)
# remove the gene with NA SNP
sce_pathway_kegg <- filter(sce_pathway_kegg, SNP_NUM !='NA')

# test
s <- 'Oxidative phosphorylation'
print(s)
gene_pathway0 <- sce_pathway_kegg %>% filter(., pathwayName == s)
ggplot(gene_pathway0, aes(x = nsSNP, y = ..density..)) +
  geom_histogram(fill = "blue", colour = "blue", size = .2) +
  geom_density() +
  ggtitle(s)

# random sampling
sample_value <- sample(sce_pathway_kegg$nsSNP, size = 4562)
nsSNP_test <- data_frame(nsSNP=sample_value)
ggplot(nsSNP_test, aes(x = nsSNP, y = ..density..)) +
  geom_histogram(fill = "blue", colour = "blue", size = .2) +
  geom_density() +
  ggtitle(s)

#--------------------------------------------------------------------------------------------
# classify gene based on essential
#-------------------------------------------------------------------------------------------
gene_essential <- read_excel("data/gene_essential and non_essential.xlsx")
gene_essential <- filter(gene_essential, !is.na(type))
gene_essential$type0 <- NA
for (i in seq_along(gene_essential$locus)){
  if(str_detect(gene_essential$type[i], "Non-essential")){
    gene_essential$type0[i] <- "Non_essential"
  } else{
    gene_essential$type0[i] <- "Essential"

  }
}

gene_essential$nsSNP <- getSingleReactionFormula(all_gene_SNP$nsSNP,all_gene_SNP$locus_tag,gene_essential$locus)
gene_essential$nsSNP <- as.numeric(gene_essential$nsSNP)
# result display
ggplot(gene_essential, aes(nsSNP, fill = type0, colour = type0)) +
  geom_density(alpha = 0.2) +
  labs(x='Number of nsSNP in each gene') +
  theme(legend.position = c(0.85, 0.85)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 13, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1)) #+
# theme(legend.position="upper")
#ggsave(out <- paste('result/',x.element,'.tiff', sep = ""), width=8, height=6, dpi=300)


#--------------------------------------------------------------------------------------------
# classify gene based on core(acient) and accessory(young)
#-------------------------------------------------------------------------------------------
panGene_classification <- read_excel("data/panGene_classification.xlsx")
#here we analysis all the core and variable genes
panGene_classification$nsSNP <- getSingleReactionFormula(all_gene_SNP$nsSNP,all_gene_SNP$locus_tag,panGene_classification$gene_simple)
panGene_classification$nsSNP <- as.numeric(panGene_classification$nsSNP)
panGene_classification <- panGene_classification[!is.na(panGene_classification$nsSNP),]
# result display
ggplot(panGene_classification, aes(nsSNP, fill = gene_type, colour = gene_type)) +
  geom_density(alpha = 0.2) +
  labs(x='Number of nsSNP in each gene') +
  theme(legend.position = c(0.85, 0.85)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 13, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1))


#--------------------------------------------------------------------------------------------
# classify gene based on core(acient) and accessory(young), as well as essential and non essential
#-------------------------------------------------------------------------------------------
gene_essential$gene_type <- getSingleReactionFormula(panGene_classification$gene_type,panGene_classification$gene_simple,gene_essential$locus)
gene_essential <- filter(gene_essential, gene_type !='NA')

gene_essential$type_combine <- paste(gene_essential$type0,gene_essential$gene_type, sep = "@")
unique(gene_essential$type_combine)
# result display
ggplot(gene_essential, aes(nsSNP, fill = type_combine, colour = type_combine)) +
  geom_density(alpha = 0.2) +
  labs(x='Number of nsSNP in each gene') +
  theme(legend.position = c(0.8, 0.85)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 13, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1))







# part 2
#---------------------------------------------------------------------------------
# Mutation enrichment analysis based on dN_DS (the ratio fo nsSNP and SNP)
#--------------------------------------------------------------------------------
# initial nsSNP mapping analysis
sce_pathway_kegg$dN_dS <- getSingleReactionFormula(all_gene_SNP$dN_dS,all_gene_SNP$locus_tag,sce_pathway_kegg$geneID)
sce_pathway_kegg$dN_dS <- as.numeric(sce_pathway_kegg$dN_dS)
sce_pathway_kegg <- sce_pathway_kegg[!is.na(sce_pathway_kegg$dN_dS),]
# test
s <- 'Oxidative phosphorylation'
print(s)
gene_pathway0 <- sce_pathway_kegg %>% filter(., pathwayName == s)
ggplot(gene_pathway0, aes(x = dN_dS, y = ..density..)) +
  geom_histogram(fill = "blue", colour = "blue", size = .2) +
  geom_density() +
  ggtitle(s)

# random sampling
sample_value <- sample(sce_pathway_kegg$dN_dS, size = 4562)
dN_dS_test <- data_frame(dN_dS=sample_value)
ggplot(dN_dS_test, aes(x = dN_dS, y = ..density..)) +
  geom_histogram(fill = "blue", colour = "blue", size = .2) +
  geom_density() +
  ggtitle('Random sampling')


nsSNP_subsytem <- sce_pathway_kegg %>%
  group_by(pathwayName) %>%
  dplyr::summarize(Mean = mean(dN_dS, na.rm=TRUE))

# plot the result for all the subsystmes
for (i in seq_along(nsSNP_subsytem$pathwayName)) {
  print(i)
  s <- nsSNP_subsytem$pathwayName[i]
  print(s)
  gene_pathway0 <- sce_pathway_kegg %>% filter(., pathwayName == s) %>% select(.,pathwayName,dN_dS)
  sample_value <- sample(sce_pathway_kegg$dN_dS, size = 4562)
  dN_dS_test <- data_frame(pathwayName ='Random sampling', dN_dS=sample_value)
  #obtain the merged result
  result_merge <- rbind.data.frame(gene_pathway0, dN_dS_test)

  ggplot(result_merge, aes(dN_dS, fill = pathwayName, colour = pathwayName)) +
    geom_density(alpha = 0.2) +
    labs(x='Ratio of dN_dS in each gene') +
    theme(legend.position = c(0.85, 0.85)) +
    theme(axis.text=element_text(size=20,face="bold", family="Arial"),
          axis.title=element_text(size=24,face="bold", family="Arial"),
          legend.text = element_text(size = 13, family = "Arial")) +  ggtitle('') +
    theme(panel.background = element_rect(fill = "white", colour = "black", size = 1))
  s <- str_replace_all(s, "\\ / ", "_")
  ggsave(out <- paste("result/pathway_analysis_dN_dS/", s, ".png", sep = ""), width = 8, height = 6, dpi = 300)
}


#--------------------------------------------------------------------------------------------
# classify gene based on essential
#-------------------------------------------------------------------------------------------
gene_essential <- read_excel("data/gene_essential and non_essential.xlsx")
gene_essential <- filter(gene_essential, !is.na(type))
gene_essential$type0 <- NA
for (i in seq_along(gene_essential$locus)){
  if(str_detect(gene_essential$type[i], "Non-essential")){
    gene_essential$type0[i] <- "Non_essential"
  } else{
    gene_essential$type0[i] <- "Essential"

  }
}

gene_essential$dN_dS <- getSingleReactionFormula(all_gene_SNP$dN_dS,all_gene_SNP$locus_tag,gene_essential$locus)
gene_essential$dN_dS <- as.numeric(gene_essential$dN_dS)
# result display
ggplot(gene_essential, aes(dN_dS, fill = type0, colour = type0)) +
  geom_density(alpha = 0.2) +
  labs(x='Ratio of dN_dS in each gene') +
  theme(legend.position = c(0.85, 0.85)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 13, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1)) #+
 # theme(legend.position="upper")
#ggsave(out <- paste('result/',x.element,'.tiff', sep = ""), width=8, height=6, dpi=300)

#--------------------------------------------------------------------------------------------
# classify gene based on core(acient) and accessory(young)
#-------------------------------------------------------------------------------------------
panGene_classification <- read_excel("data/panGene_classification.xlsx")
#here we analysis all the core and variable genes
panGene_classification$dN_dS <- getSingleReactionFormula(all_gene_SNP$dN_dS,all_gene_SNP$locus_tag,panGene_classification$gene_simple)
panGene_classification$dN_dS <- as.numeric(panGene_classification$dN_dS)
panGene_classification <- panGene_classification[!is.na(panGene_classification$dN_dS),]
# result display
ggplot(panGene_classification, aes(dN_dS, fill = gene_type, colour = gene_type)) +
  geom_density(alpha = 0.2) +
  labs(x='Ratio of dN_dS in each gene') +
  theme(legend.position = c(0.85, 0.85)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 13, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1))


#--------------------------------------------------------------------------------------------
# classify gene based on core(acient) and accessory(young), as well as essential and non essential
#-------------------------------------------------------------------------------------------
gene_essential$gene_type <- getSingleReactionFormula(panGene_classification$gene_type,panGene_classification$gene_simple,gene_essential$locus)
gene_essential <- filter(gene_essential, gene_type !='NA')

gene_essential$type_combine <- paste(gene_essential$type0,gene_essential$gene_type, sep = "@")
unique(gene_essential$type_combine)
# result display
ggplot(gene_essential, aes(dN_dS, fill = type_combine, colour = type_combine)) +
  geom_density(alpha = 0.2) +
  labs(x='Ratio of dN_dS in each gene') +
  theme(legend.position = c(0.8, 0.8)) +
  theme(axis.text=element_text(size=20,face="bold", family="Arial"),
        axis.title=element_text(size=24,face="bold", family="Arial"),
        legend.text = element_text(size = 10, family = "Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", colour = "black", size = 1))
