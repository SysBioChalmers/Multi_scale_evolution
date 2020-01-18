#--------------------------------------------------------------------------
# This code is used to extract residues for all the experimental PDB files
# for some 3d structure it is two complex, should we still use it??? Maybe homology
# pdb file is used
#--------------------------------------------------------------------------
# load main package
library(readr)
library(readxl)
library(hongR)


infile0 <- '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/PDB quality analysis/PDB experimental pdb files'
outfile <- '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/PDB quality analysis/pdb_ex_other_format'
all_pdb_ex <- list.files(infile0)
# only choose these pdb bundle file
all_pdb_ex0 <- all_pdb_ex[!str_detect(all_pdb_ex,'\\.pdb')]
# check which proteins have these complex protein structures
pdb_id <- str_replace_all(all_pdb_ex0, "-pdb-bundle.tar", "")

for (i in seq_along(pdb_id)) {
  print(i)
  input_dir <- file.path(infile0, all_pdb_ex0[i])
  id <- pdb_id[i]
  outfile_each <- file.path(outfile, id)
  dir.create(outfile_each)
  untar(tarfile = input_dir, exdir = outfile_each, list = TRUE) # check contents
  untar(tarfile = input_dir, exdir = outfile_each) # check contents
}


# list all files
file_all <- list.files(outfile, recursive = TRUE)
file_all <- file_all[!str_detect(file_all,"chain-id-mapping")]
new_file_all <- file.path(outfile, file_all)

# try to extract the resdiues sequence from these file
pdbdir <- new_file_all[308]
pdbid <- '6ft6'
test0 <- pdb.Sequence(pdbdir, pdbid)


pdb_ex_seq <- list()
for (i in seq_along(new_file_all)){
  print(i)
  pdbdir0 <- new_file_all[i]
  s1 <- pdb.Sequence(pdbdir = pdbdir0, pdbid = file_all[i])
  pdb_ex_seq <- c(pdb_ex_seq, s1)
}


# write and save file to do the blast analysis
pdbid <- names(pdb_ex_seq)
fileConn<-file("result/pdb_ex_seq_summary2.txt", "w")
for (i in 1:length(pdbid)){
  print(pdbid[i])
  startline <- paste(">", pdbid[i], sep = "")
  write(c(startline, pdb_ex_seq[[i]]), fileConn,  sep="\n", append=TRUE)
}
close(fileConn)


# real data for the test
# for the experimental files, pidentity should be 100, no gap and no mismatches
blast_test2 <- blast_protein_to_protein(
  query   = 'data/pdb_ex_seq_test2.fasta',
  subject = 'data/protein_sgd_test.fasta',
  output.path = tempdir(),
  db.import  = FALSE)

write.table(blast_test2, "result/blast for experiment pdb file using R-2.txt", row.names = FALSE, sep = "\t")




#the website of sift database:
#http://www.ebi.ac.uk/pdbe/docs/sifts/
pdb_chain_uniprot <- read_delim("data/pdb_chain_uniprot.csv",  ";", escape_double = FALSE, trim_ws = TRUE)
pdb_chain_uniprot$id_mapping <- paste(pdb_chain_uniprot$SP_PRIMARY,pdb_chain_uniprot$PDB, sep = "@")
uniprotGeneID_mapping <- read_excel("data/uniprotGeneID_mapping.xlsx")
pdb_chain_sce <- pdb_chain_uniprot[pdb_chain_uniprot$SP_PRIMARY %in% uniprotGeneID_mapping$Entry, ]




# process the blast result
blast_test2 <- read.table("result/blast for experiment pdb file using R-2.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
blast_test2$Entry <- getSingleReactionFormula(uniprotGeneID_mapping$Entry, uniprotGeneID_mapping$GeneName,blast_test2$subject_id)
blast_test2 <- blast_test2 %>% separate(query_id, into = c('PDBid','ChainID'), sep = "\\.")
# update the PDBid
blast_test2 <- blast_test2 %>% separate(PDBid, into = c('PDBid_short','PDBid'), sep = "\\/")
blast_test2$id <- paste(blast_test2$Entry,str_to_lower(blast_test2$PDBid_short),blast_test2$ChainID, sep = "@")
# initial filter based on pidenty = 100
blast_test2$perc_identity <- as.numeric(blast_test2$perc_identity)
blast_test2 <- filter(blast_test2, perc_identity >=100)



# merge the information from blast, swiss model and sift database
# estimate the chainID for the experimental PDB files
meta_parameter_PDB_homo <- read.table("data/meta_parameter_PDB_homo_2018_7_20.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
# correct the wrong pdb id
meta_parameter_PDB_homo$template <- str_replace_all(meta_parameter_PDB_homo$template, "\\.00E\\+", "e")

meta_parameter_PDB_homo$mapid <- paste(meta_parameter_PDB_homo$from, meta_parameter_PDB_homo$to,meta_parameter_PDB_homo$template,
                                       meta_parameter_PDB_homo$coordinate_id, sep = "_")
pdb_EX <- filter(meta_parameter_PDB_homo, provider=='PDB')
pdb_EX$id_mapping <- paste(pdb_EX$UniProtKB_ac,pdb_EX$template, sep = "@")
pdb_EX <- filter(meta_parameter_PDB_homo, provider=='PDB')
pdb_EX$id_mapping <- paste(pdb_EX$UniProtKB_ac,pdb_EX$template, sep = "@")
#The data from swiss database only contains the mapping between the geneID and pdbID, but no chainid
#obtain the chainID for pdb_EX
pdb_EX$chain <- getMultipleReactionFormula(pdb_chain_sce$CHAIN, pdb_chain_sce$id_mapping, pdb_EX$id_mapping)
#we can find for each pair of geneID and pdbID there could be several chainID
#so then we futher establish the relation between geneID, pdbID, chainID
pdb_EX0 <- splitAndCombine(pdb_EX$chain,pdb_EX$id_mapping,sep0 = ";")
colnames(pdb_EX0) <- c('chain_new','id_mapping')
#combine pdb_EX0 and pdb_EX
df_merged <- right_join(pdb_EX, pdb_EX0, by = 'id_mapping')
#then we should bring in the blast results based on sequence using diamond
#it should be noted that there two different types of sequence for each PDB structure
#PDB sequence type1, which could be downloaded from PDB database directly
#PDB sequence type2, which is extracted from each PDB structure using python codes
#we should compare these two types of sequence
df_merged$id_mapping_chain <- paste(df_merged$id_mapping, df_merged$chain_new,sep = "@")
# merge the blast information
df_merged$pident2 <- getMultipleReactionFormula(blast_test2$perc_identity,blast_test2$id,df_merged$id_mapping_chain)
df_merged$mismatch2 <- getMultipleReactionFormula(blast_test2$mismatches,blast_test2$id,df_merged$id_mapping_chain)

#obtain the coordinate of the mapped residue from pdb strucutre
df_merged$qstart2 <- getMultipleReactionFormula(blast_test2$q_start,blast_test2$id,df_merged$id_mapping_chain)
df_merged$qend2 <- getMultipleReactionFormula(blast_test2$q_end,blast_test2$id,df_merged$id_mapping_chain)

#obtain the coordinate of the mapped residue from the original protein sequence
df_merged$sstart2 <- getMultipleReactionFormula(blast_test2$s_start,blast_test2$id,df_merged$id_mapping_chain)
df_merged$send2 <- getMultipleReactionFormula(blast_test2$s_end,blast_test2$id,df_merged$id_mapping_chain)

df_merged0 <- df_merged[!is.na(df_merged$pident2),]

# check whether id_mapping_chain has two mapped values in the pidenty
# df_duplicated means that with pidenty=100 as the filter,for the residues sequence from sequence, there are several
# best hit from reference residues sequence of s288c
df_duplicated <- df_merged0[which(str_detect(df_merged0$pident2, ";")),]
df_no_duplicated <- df_merged0[which(!str_detect(df_merged0$pident2, ";")),]
# split the df with duplicated value
splitAndCombine0 <- function(gene, rxn, sep0) { ##one rxn has several genes, this function was used to splite the genes

  gene <- str_split(gene, sep0)
  tt<- length(gene)
  gene0 <- list()
  for (i in 1:tt){
    gene0[[i]] <- paste(rxn[i], gene[[i]], sep = "@@@")

  }

  gene1 <- unlist(gene0)
  gene2 <- str_split(gene1, "@@@" )
  rxnGene <- data.frame(v1=character(length(gene2)),stringsAsFactors = FALSE)
  tt1 <- length(gene2)
  for (j in 1:tt1){
    rxnGene$v1[j] <- gene2[[j]][2]
    rxnGene$v2[j] <- gene2[[j]][1]
  }

  return(rxnGene)
}
df_split <- splitAndCombine0(df_duplicated$pident2,df_duplicated$id_mapping_chain, sep = ";")
df_split1 <- splitAndCombine0(df_duplicated$qstart2,df_duplicated$id_mapping_chain, sep = ";")
df_split2 <- splitAndCombine0(df_duplicated$qend2,df_duplicated$id_mapping_chain, sep = ";")
df_split3 <- splitAndCombine0(df_duplicated$sstart2,df_duplicated$id_mapping_chain, sep = ";")
df_split4 <- splitAndCombine0(df_duplicated$send2,df_duplicated$id_mapping_chain, sep = ";")

colnames(df_split) <- c('pident2', 'id_mapping_chain')
df_split$qstart2 <- df_split1$v1
df_split$qend2 <- df_split2$v1
df_split$sstart2 <- df_split3$v1
df_split$send2 <- df_split4$v1
# first remove the duplicated one
df_split0 <- df_split %>%
  unite("merge0", pident2, id_mapping_chain,qstart2,qend2,sstart2,send2,sep = "__")
df_split$merge0 <- df_split0$merge0
df_split <- df_split[!duplicated(df_split$merge0),]
# add other information for the merge
df_duplicated <- select(df_duplicated,-c('pident2','qstart2','qend2','sstart2','send2'))
df_split <- select(df_split, -c("merge0"))

df_duplicated0 <- right_join(df_duplicated, df_split, by = 'id_mapping_chain')
df_duplicated0$mismatch2 <- 0
colname0 <- colnames(df_no_duplicated)
df_duplicated0 <- select(df_duplicated0,colname0)
# merge and obtain a united dataframe for the experimental pdb files blast analysis
pdb_ex_refine <- rbind.data.frame(df_no_duplicated, df_duplicated0)
gene_number_through_swiss <- length(unique(pdb_ex_refine$UniProtKB_ac))


#---------------------------------------------
# steps to further filter pdb files
#----------------------------------------------
#Input the prepare resolution data
Resolution_data <- read.table('data/meta_parameter_PDB_homo_with_resolution.txt', header = TRUE, sep = "\t")

pdb_ex_refine$Resolution <- getSingleReactionFormula(Resolution_data$Resolution, Resolution_data$mapid,pdb_ex_refine$mapid)
pdb_ex_refine$Coverage <- (as.numeric(pdb_ex_refine$qend2) - as.numeric(pdb_ex_refine$qstart2))/pdb_ex_refine$uniprot_seq_length

pdb_ex_refine$template <- getSingleReactionFormula(blast_test2$PDBid, blast_test2$id,pdb_ex_refine$id_mapping_chain)


# save the result for the next use
write.table(pdb_ex_refine, "data/pdb_ex_refine using R_02.txt", row.names = FALSE, sep = "\t")

# by comparison:
# only using pidenty as the filter, number of genes with pdb_ex is 286,
# while when using data from swiss model, the number is 157.




















