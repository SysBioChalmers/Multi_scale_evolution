#----------------note
#this main script is used to conduct the evolution analysis based on the protein 3D structures


#################################################################################################################
strain_type <-"dN_dS_max_gap_ratio_0.3"


# input the gene information
pdb_Ex <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_ex_filter_manual_check.xlsx")
pdb_Ex$With_distance <- NA
pdb_Ex <- filter(pdb_Ex, is.na(pdb_Ex$With_distance))
pdb_Ex$pdbid <- pdb_Ex$template
pdb_Ex <- select(pdb_Ex, locus, pdbid, qstart2, qend2, sstart2, send2)



# save the protein structure in the current dir  for re-use
write.table(pdb_Ex, "data/pdb_info_experiment_2020_01", row.names = FALSE, sep = "\t")
#pdb_Ex <- read.table("data/pdb_info_experiment_2020_01", header = TRUE, sep ="\t", stringsAsFactors = FALSE )


#add two more clumns
pdb_Ex$strain_type <- strain_type
pdb_Ex$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_ex for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)
#which(pdb_Ex$locus=="YPR001W")

# main loop
id_need_check <- c() # to store OGs which does not have sce seq id as the column name. There are total 59 OG id to be checked!!


for (i in 1:length(pdb_Ex$locus)) {
  print(i)
  ss0 <- pdb_Ex$locus[i]
  pdbID <- pdb_Ex$pdbid[i]
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".txt", sep = "")
  # prepare the selected sites
  mod2=try(getSelectSite(panID0 = ss0, site_type = "positive"),TRUE)

  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "positive")
  }



  if (!is.na(mutate_residues)) {
    result0 <- clumpsAnalysis2(
      gene0 = ss0, SNPlist0 = mutate_residues, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1,
      send0 = p2, input_dir = TRUE, snp_type = FALSE)

  } else {
    result0 <- "No interesting sites or related Ortholog groups!"
  }

  pdb_Ex$p_value[i] <- result0
}

# save the result
write.table(pdb_Ex, paste(outfile0,'/','pdb_Ex_for_positive_selection.txt', sep = ""), row.names = FALSE, sep = "\t")


























#################################################################################################################
# test part
# positive selected sites check
id_need_check <- c()
for (i in 1:length(pdb_Ex$locus)) {
  print(i)
  ss0 <- pdb_Ex$locus[i]
  pdbID <- pdb_Ex$pdbid[i]
  p1 <- pdb_Ex$sstart2[i]
  p2 <- pdb_Ex$send2[i]
  distance_dir <- paste("residue_distance/pdb_ex/", pdbID, ".pdb.txt", sep = "")

  mod2=try(getSelectSite(panID0 = ss0, site_type = "positive"),TRUE)
  if(isTRUE(class(mod2)=="try-error")) {
    id_need_check <- c(i,id_need_check)
    mutate_residues <- NA
    #next
  } else {
    mutate_residues <- getSelectSite(panID0 = ss0, site_type = "positive")
  }

  print(mutate_residues)
}
