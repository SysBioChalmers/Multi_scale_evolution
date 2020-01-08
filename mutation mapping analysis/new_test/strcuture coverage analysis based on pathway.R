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

# input the strucutre data
# pdb_ex
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, sstart2, send2)
pdb_Ex$type <- 'Experiment'

# pdb_homo
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
pdb_info$type <- 'Homology'

# merge above two sources
pdb_all <- rbind.data.frame(pdb_Ex, pdb_info)



# mapping the pdb onto the pathway
sce_pathway_reactome$pdbID <- getMultipleReactionFormula(pdb_all$pdbid,pdb_all$locus,sce_pathway_reactome$geneID)
sce_pathway_kegg$pdbID <- getMultipleReactionFormula(pdb_all$pdbid,pdb_all$locus,sce_pathway_kegg$geneID)

# statical analysis of pdb files based on pathway
# this function is used to calculate the ration of proteins with pdb files from the same pathway
calc_pdb_coverage_pathway <- function(pathwayID, pdb_pathway_inf) {
  pathway1 <- pathwayID
  pathway1_pdb <- filter(pdb_pathway_inf, pathwayID == pathway1)
  gene_with_pdb <- pathway1_pdb[!is.na(pathway1_pdb$pdbID), ]
  gene_no_pdb <- pathway1_pdb[is.na(pathway1_pdb$pdbID), ]
  ratio <- nrow(gene_with_pdb) / nrow(pathway1_pdb)
  return(ratio)
}

#for kegg
pathway_unique <- sce_pathway_kegg[!duplicated(sce_pathway_kegg$pathwayID), ] %>%
  select(.,pathwayID, pathwayName)

for(i in seq_along(pathway_unique$pathwayID)){
  print(i)
  pathway_unique$ratio_pdb[i] <-  calc_pdb_coverage_pathway(pathwayID=pathway_unique$pathwayID[i], sce_pathway_kegg)
}

pathway_unique <- pathway_unique[order(pathway_unique$ratio_pdb),]
pathway_unique0 <- pathway_unique
# plot
#strain_specific_rxn$rxns <- as.factor(strain_specific_rxn$rxns)
pathway_unique0$pathwayName<-factor(pathway_unique0$pathwayName, levels=pathway_unique0$pathwayName, ordered=TRUE)
ggplot(data=pathway_unique0, aes(x=pathwayName, y=ratio_pdb)) + geom_bar(stat="identity",fill = "blue") +
  xlab('') + ylab('Ratio of PDB files') +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  theme(legend.position = c(0.85, 0.2)) +
  theme(axis.text=element_text(size=10, family="Arial"),
        axis.title=element_text(size=12,family="Arial"),
        legend.text = element_text(size=10, family="Arial")) +
  ggtitle('') +
  theme(panel.background = element_rect(fill = "white", color="black", size = 1)) #+
  #ggsave(out <- paste('result/','rxn number for all strain','.eps', sep = ""), width=6, height=6, dpi=300)

# Proteins need I-TASSER work
# here possiblly we only focus on the core carbon metabolism
protein_need_ITASSER <- filter(sce_pathway_kegg, is.na(pdbID))

write.table(protein_need_ITASSER,'result/protein without pdb files of high quality-need itasser.txt', row.names = FALSE, sep = "\t")



