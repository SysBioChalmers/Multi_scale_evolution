#----------------note
#this main script is used to conduct the evolution analysis based on the protein 3D structures

# some general function used for evolution analysis
getConsevedSite <- function(panID0, site_type = "conserved", max_gap_ratio = 0.3) {

  # this function is used to output the interesting sites using for the evolution analysis
  # based on the protein 3D structures
  # now this function is only suitable for result from FUBAR
  # also only used for panID from sce.


  # input
  # panID0, panID of each OG group
  # output
  # coordinate dataframe of the selected sites

  # test example
  # panID0="YMR232W"

  panID_to_OGID <- read_tsv("Evolution_data/representatives.tsv")
  # find the OG id based on the panID
  # for the sce strain
  panID <- paste("Saccharomyces_cerevisiae@", panID0, sep = "")
  OGID <- panID_to_OGID$ortho_id[which(panID_to_OGID$representative == panID)]
  # input the evolution information based on the OGID
  # it should be careful that result from different methods will be also different in the column name
  evolution_dir <- "Evolution_data/result_conserved_site/"
  column_choose <- c(panID, "gap_ratio", "site_ratio", "conserved_sites", "refsite")
  # read and furthe reduce the data size
  s0 <- paste(evolution_dir, OGID, "_conserved_site.csv", sep = "")

  if (!file.exists(s0)) {
    print("NO evolution data file can be found!!")
    return(NA)}

  # check whether OGID exist??
  if (length(OGID) == 0) {
    print("NO Ortholog ID can be found!!")
    return(NA)

  } else {
    evolution_df <- read_csv(s0) %>% select(., column_choose)
    # filter out gaps based on the ref-site
    evolution_df1 <- filter(evolution_df, refsite != "-")
    # add the coordinates information of the reference sequence
    coordinate_ref <- 1:nrow(evolution_df1)
    evolution_df1$coordinate_ref <- coordinate_ref
    # filter out gaps based on the gap ratio
    gap_percentage <- max_gap_ratio # be careful in this step! shoud observe how this parameter affect the output
    evolution_df2 <- filter(evolution_df1, gap_ratio <= gap_percentage)
    # change the data formula
    if (site_type == "conserved") {
      positive_site <- evolution_df2[evolution_df2$conserved_sites != "{}", ]
      if (nrow(positive_site) >= 1) {
        interest_site <- data.frame(Gene2 = ss0, Pos = positive_site$coordinate_ref, Ref = positive_site$refsite, Alt = "X", stringsAsFactors = FALSE)
        return(interest_site)
      } else {
        print("No select sites! Please check.")
        return(NA)
        }
      }
  }

}

#result_test <- getConsevedSite(panID0="YMR232W", site_type = "conserved", max_gap_ratio = 0.7)



#################################################################################################################
strain_type <- "conserved_max_gap_ratio_0.3"


# step 0
pdb_info <- read_excel("/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/pdb_homo_filter_manual_check.xlsx")
pdb_info1 <- read_excel("/Users/luho/Documents/GitHub/De-nevo-protein-3D-structure-yeast/pdb_itasser.xlsx") # structure from itasser
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
pdb_info1 <- select(pdb_info1, locus, pdbid, sstart2, send2)
# combine the above information together
pdb_info <- rbind.data.frame(pdb_info1, pdb_info)
# check whether gene contains SNP annotation
# pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA

# here it can be found 20 rows without gene locus id
# check <- pdb_info[is.na(pdb_info$locus),] # it seems that these protein seq is defined in the uniprot


############## save the protein structure in the current dir  for re-use #############
write.table(pdb_info, "data/pdb_info_homology_2020_01", row.names = FALSE, sep = "\t")
# pdb_info <- read.table("data/pdb_info_homology_2020_01", header = TRUE, sep ="\t", stringsAsFactors = FALSE )


# add two more columns
pdb_info$strain_type <- strain_type
pdb_info$p_value <- NA


# creat new file to store the results
outfile0 <- paste("result/CLUMPS from pdb_homo for ", strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

# main loop
id_need_check <- c() # to store OGs which does not have sce seq id as the column name. There are total 59 OG id to be checked!!

for (i in 1:length(pdb_info$locus)) {
  print(i)
  #i <- 2 # for the test
  ss0 <- pdb_info$locus[i]
  pdbID <- pdb_info$pdbid[i]
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  distance_dir <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  # prepare the selected sites
  mod2 <- try(getConsevedSite(panID0 = ss0, site_type = "conserved"), TRUE)

  if (isTRUE(class(mod2) == "try-error")) {
    id_need_check <- c(i, id_need_check)
    mutate_residues <- NA
    # next
  } else {
    mutate_residues <- getConsevedSite(panID0 = ss0, site_type = "conserved")
  }


  if (!is.na(mutate_residues)) {
    result0 <- clumpsAnalysis2(
      gene0 = ss0, SNPlist0 = mutate_residues, gene_annotation0 = gene_feature0, pdb = distance_dir, sstart0 = p1,
      send0 = p2, input_dir = TRUE, snp_type = FALSE
    )
  } else {
    result0 <- "No interesting sites or related Ortholog groups!"
  }

  pdb_info$p_value[i] <- result0
}

# save the result
write.table(pdb_info, paste(outfile0, "/", "pdb_info.txt", sep = ""), row.names = FALSE, sep = "\t")
