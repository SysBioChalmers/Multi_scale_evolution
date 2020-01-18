#gene feature summary
gene_feature0 <- mergeGeneAnnotationFeature()
gene_feature0 <- qualityCheckFromCDStoProtein(gene_feature0)
#we can also choose some specific gene and conduct the quality check analysis
gene_list_yeastGEM <- read_excel("data/gene_list_yeastGEM.xlsx")
index1 <-  which (gene_feature0$locus_tag %in% gene_list_yeastGEM$geneNames ==TRUE)
gene_feature_GEM <- gene_feature0[index1,]
#gene_feature_GEM$aa_length[570]<- 338 # every protein should have parameter of aa_length
gene_feature_GEM <- qualityCheckFromCDStoProtein(gene_feature_GEM)
write.table(gene_feature0,'result/gene_feature0.txt', row.names = FALSE, sep = "\t")
