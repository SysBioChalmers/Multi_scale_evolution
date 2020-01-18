# This script is used to prepare the parameter for pdb_homo file

#function to parse the pdb web to obtain the resolution for each pdb file
# it can obtain resolution for the pdb file if it is stored in pdb database
#input pdb0, a pdb id
#output resolution of a pdb file
library(rvest)
pdb.ResolutionAll <- function(pdb0) {
  url0 <- "https://www.rcsb.org/structure/"
  url <- paste(url0, pdb0, sep = "")
  webpage <- read_html(url)
  resolution_file <- webpage %>%
    html_nodes("li") %>%
    html_text()
  resolution_file <- resolution_file[str_detect(resolution_file, "Resolution")]
  resolution <- resolution_file[1] %>%
    str_extract(., "\\d+\\.*\\d*")
  print(resolution)
  return(as.numeric(resolution))
}


# This funcion is used to obtain all the related parameters in homology pdb files
# it should be noted that legend from homology pdb files can be different from that from template file
# be careful when using this parameter
pdb.AllParaHomo <- function(pdbdir) {
  pdb <- scan(pdbdir, sep = "\n", what = "complex")
  ss1 <- which(str_detect(pdb, "REMARK   3") == TRUE)
  if(length(ss1)){ # some homology pdb files may don't have rows with 'REMARK  3'
  pdb1 <- pdb[ss1]
  pdb2 <- str_replace(pdb1, "REMARK   3", "") %>%
    str_trim(., side = "both")
  pdb2 <- pdb2[pdb2 != ""]
  # obtain the ligend
  ligend_info <- pdb2[str_detect(pdb2, "LIGND")]
  ligend_info <- str_replace(ligend_info, "LIGND ", "") %>%
    str_trim(., side = "both") %>%
    str_replace_all(., "^[:digit:] ", "")
  ligend_info0 <- paste0(ligend_info, collapse = "", sep = ";")

  # obtain other information except the ligend
  other_para <- pdb2[!str_detect(pdb2, "LIGND")]
  other_para1 <- str_split_fixed(other_para, " ", 2)
  other_para1 <- data.frame(other_para1, stringsAsFactors = FALSE)
  colnames(other_para1) <- c("parameter", "value")
  # merge with the ligend and resolution
  other_para1[nrow(other_para1) + 1, ] <- list("Ligend", ligend_info0)

  return(other_para1)}
  else{
    return(NA)
  }
}


#test homology pdb files
#infile <- "data/"
#pdbid <- "24_48_1cjy.1.A_5a7b71f67aaa0d57bdf20f14.pdb"
#pdbdir <- paste(infile, pdbid, sep = "")
#all_para_PDB_homo <- pdb.AllParaHomo(pdbdir)


# batch process
# merge the extract information with meta parameter provided by swiss model database
# meta_parameter_PDB_homo <- read.table("data/meta_parameter_PDB_homo_2018_7_20.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
# here we use the latest version
meta_parameter_PDB_homo <- read.table("/Users/luho/Documents/pdb file/SWISS_2019_5/INDEX", sep = "\t", header = TRUE, stringsAsFactors = FALSE)


# correct the wrong pdb id
meta_parameter_PDB_homo$template <- str_replace_all(meta_parameter_PDB_homo$template, "\\.00E\\+", "e")

meta_parameter_PDB_homo$mapid <- paste(meta_parameter_PDB_homo$from, meta_parameter_PDB_homo$to,meta_parameter_PDB_homo$template,
                                       meta_parameter_PDB_homo$coordinate_id, sep = "_")



# obtain the similarity and identity
# obtain the parameter information for all the homology pdb file
dir0 <- '/Users/luho/Documents/pdb file/homolog pdb_2019_5'
all_homo_pdb_file <- list.files(dir0)
all_homo_pdb_file <- all_homo_pdb_file[all_homo_pdb_file != "INDEX"]
all_homo_pdb_file <- all_homo_pdb_file[all_homo_pdb_file != "INDEX.json"]
all_homo_pdb_file <- all_homo_pdb_file[all_homo_pdb_file != "README"]


# para0 is a list. For each small list, it is named by the pdbid name. Such a small list contained detailed parameter information
para0 <- list()
for (i in all_homo_pdb_file){
  print(i)
  #i <- '12_525_2vxo.1.A_5ad641817aaa0d2542ad2634.pdb'
  para0[[i]] <- pdb.AllParaHomo(file.path(dir0, i))
}


meta_parameter_PDB_homo$Seq_similarity <- NA
meta_parameter_PDB_homo$Seq_identity <- NA
ss0 <- meta_parameter_PDB_homo$mapid
ss0 <- paste(ss0,".pdb", sep = "")
for (i in seq_along(ss0)) {
  print(i)
  pdb0 <- ss0[i]
  para_each <- para0[[pdb0]]
  if(length(para_each) >1){
  Seq_similarity <- para_each$value[para_each$parameter=='SIM']
  Seq_identity <- para_each$value[para_each$parameter=='SID']
  } else{
    Seq_similarity <- NA
    Seq_identity <- NA
  }
  meta_parameter_PDB_homo$Seq_similarity[i] <- Seq_similarity
  meta_parameter_PDB_homo$Seq_identity[i] <- Seq_identity
}


# obtain resolution through web scrabing
# remove some wrong id
pdbid <- meta_parameter_PDB_homo$template
pdbid1 <- str_split_fixed(pdbid, "\\.", 2)
pdbid1 <- as.data.frame(pdbid1, stringsAsFactors=FALSE)
meta_parameter_PDB_homo$pdb_id2 <- pdbid1$V1
meta_parameter_PDB_homo$Resolution <- NA

# In the normal process,
# The resoultion was found based on the pdb id provided by PDB database
# Here we firstly prepare the resolution for all the pdb files and save it for duplicated usage
#for (i in 1:nrow(meta_parameter_PDB_homo)) {
#  print(i)
#  pdb_name <- meta_parameter_PDB_homo$pdb_id2[i]
#  meta_parameter_PDB_homo$Resolution[i] <- pdb.ResolutionAll(pdb_name)
#}


# Input the prepare resolution data
# For the homology pdb files, the resolution is from the experimental pdb template
# Resolution_data <- read.table('data/meta_parameter_PDB_homo_with_resolution.txt', header = TRUE, sep = "\t")
# meta_parameter_PDB_homo$Resolution <- Resolution_data$Resolution
PDB_homo <- filter(meta_parameter_PDB_homo, provider=='SWISSMODEL')

# save the result for the next use
write.table(PDB_homo, "data/pdb_homo_refine using R.txt", row.names = FALSE, sep = "\t")

