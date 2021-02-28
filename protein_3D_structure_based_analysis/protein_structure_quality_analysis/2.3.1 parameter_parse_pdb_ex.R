#-------------------------------------------------------------
# this code is used to prepare the parameter for experimental PDB files
#-------------------------------------------------------------
# load main package
library(tidyverse)
library(readr)
library(readxl)
library(hongR)
library(rvest)
library(bio3d)
library(seqinr)
library(metablastr)
# This funcion is used to obtain the resolution for the experimetal pdb files
# the input should be a pdb file
# it should be noted, different from experimental PDB files, the resolution of homology pdb files
# represents the resolution of related templated PDB files
pdb.ResolutionEX <- function(pdbdir) {
  # input a pdb file
  # output the resolution for the pdb file
  # experiment pdb file
  pdb <- scan(pdbdir, sep = "\n", what = "complex")
  ss1 <- which(str_detect(pdb, "REMARK   2") == TRUE)
  pdb1 <- pdb[ss1]
  ss2 <- which(str_detect(pdb1, "RESOLUTION") == TRUE)
  pdb2 <- pdb1[ss2]
  pdb3 <- str_split(pdb2, "RESOLUTION")
  # obtain the resolution
  resolution <- pdb3[[1]][2] %>%
    str_extract(.,"\\d+\\.*\\d*")
  return(resolution)
}


#function to parse the pdb web to obtain the resolution for each pdb file
# it can obtain resolution for the pdb file if it is stored in pdb database
#input pdb0, a pdb id
#output resolution of a pdb file

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


# This function is used to extract the residue sequence from both experimental and homology pdb files
pdb.Sequence <- function(pdbdir, pdbid) {
  pdb <- read.pdb(pdbdir)
  atom1 <- pdb$atom
  chainAll <- unique(atom1$chain)
  seq_list <- list()
  for (j in chainAll) {
    cat("chainID")
    print(j)
    pdbid0 <- str_replace_all(pdbid, "pdb", j)
    # should remove the legend not belong to amino acids
    atom_choose <- atom1[atom1$chain == j & atom1$type == "ATOM", ]
    atom_choose_o <- select(atom_choose, resid, chain, resno)
    for (i in seq_along(atom_choose$resid)) {
      atom_choose$resid[i] <- str_to_title(atom_choose$resid[i])
      if (is.na(a(atom_choose$resid[i])) & atom_choose$resid[i] == "Fme") { # actuall this step is not used as its type is HETATM, it is removed when we choose "ATOM"
        # sometimes a molecular can not be a amino acid residue
        atom_choose_o$resid[i] <- "M"
      } else if (is.na(a(atom_choose$resid[i])) & atom_choose$resid[i] != "Fme") {
        atom_choose_o$resid[i] <- "*"
      } else {
        # change three letter into one
        atom_choose_o$resid[i] <- a(atom_choose$resid[i])
      }
    }
    atom_choose_o$not_duplicated <- !duplicated(atom_choose_o$resno)
    seq0 <- atom_choose_o[atom_choose_o$not_duplicated == TRUE, ] %>%
      select(., resid)
    seq0 <- paste(seq0$resid, collapse = "")
    print(seq0)
    seq_list[[pdbid0]] <- seq0
  }

  return(seq_list)
}



# test
# for experimental pdb files
infile <- "data/"
pdbid <- '6cp6.pdb'
pdbdir <- paste(infile, pdbid, sep = "")
test0 <- pdb.Sequence(pdbdir, pdbid)


pdb <- read.pdb(pdbdir)
atom1 <- pdb$atom
chainAll <- unique(atom1$chain)


# for the homology pdb file
infile <- "data/"
pdbid <- "24_48_1cjy.1.A_5a7b71f67aaa0d57bdf20f14.pdb"
pdbdir <- paste(infile, pdbid, sep = "")
pdb.Sequence(pdbdir,pdbid)


#--------------------------------------------------------------------------
# This code is used to extract residues for all the experimental PDB files
# for some 3d structure it is two complex, should we still use it??? Maybe homology
# pdb file is used
#--------------------------------------------------------------------------
infile0 <- '/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/PDB quality analysis/PDB experimental pdb files'
#infile0 <- '/Users/luho/PycharmProjects/pdb/data/pdb_ex_right_format'
all_pdb_ex <- list.files(infile0)
#Firstly remove these pdb bundle file
all_pdb_ex0 <- all_pdb_ex[str_detect(all_pdb_ex,'\\.pdb')]

pdb_ex_seq <- list()
for (i in seq_along(all_pdb_ex0)){
  print(paste(i, all_pdb_ex0[i], sep = "----------------------------------"))
  pdbdir0 <- file.path(infile0,all_pdb_ex0[i])
  s1 <- pdb.Sequence(pdbdir = pdbdir0, pdbid = all_pdb_ex0[i])
  pdb_ex_seq <- c(pdb_ex_seq, s1)
}

# write and save file to do the blast analysis
pdbid <- names(pdb_ex_seq)
fileConn<-file("result/pdb_ex_seq_summary.txt", "w")
for (i in 1:length(pdbid)){
  print(pdbid[i])
  startline <- paste(">", pdbid[i], sep = "")
  write(c(startline, pdb_ex_seq[[i]]), fileConn,  sep="\n", append=TRUE)
}
close(fileConn)


#----------------------------------------------------------------------------
# this code is used to blast analysis of amino acids
#----------------------------------------------------------------------------
# run blastn (nucleotide to nucleotide search) between example query and subject sequences
# fistly download the blast and installed it
# wget ftp://ftp.ncbi.nih.gov/blast/executables/blast+/2.2.28/ncbi-blast-2.2.28+.dmg
# real data for the test
# for the experimental files, pidentity should be 100, no gap and no mismatches
blast_test <- blast_protein_to_protein(
  query   = 'data/pdb_ex_seq_test.fasta',
  subject = 'data/protein_sgd_test.fasta',
  output.path = tempdir(),
  db.import  = FALSE)

write.table(blast_test, "result/blast for experiment pdb file using R.txt", row.names = FALSE, sep = "\t")


# prepare the chain ID information
#the website of sift database:
#http://www.ebi.ac.uk/pdbe/docs/sifts/
pdb_chain_uniprot <- read_delim("data/pdb_chain_uniprot.csv",  ";", escape_double = FALSE, trim_ws = TRUE)
pdb_chain_uniprot$id_mapping <- paste(pdb_chain_uniprot$SP_PRIMARY,pdb_chain_uniprot$PDB, sep = "@")
uniprotGeneID_mapping <- read_excel("data/uniprotGeneID_mapping.xlsx")
pdb_chain_sce <- pdb_chain_uniprot[pdb_chain_uniprot$SP_PRIMARY %in% uniprotGeneID_mapping$Entry, ]





# process the blast result
blast_test <- read.table("result/blast for experiment pdb file using R.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
blast_test$Entry <- getSingleReactionFormula(uniprotGeneID_mapping$Entry, uniprotGeneID_mapping$GeneName,blast_test$subject_id)
blast_test <- blast_test %>% separate(query_id, into = c('PDBid','ChainID'), sep = "\\.")
blast_test$id <- paste(blast_test$Entry,str_to_lower(blast_test$PDBid),blast_test$ChainID, sep = "@")
# initial filter based on pidenty = 100
blast_test$perc_identity <- as.numeric(blast_test$perc_identity)
blast_test <- filter(blast_test, perc_identity >= 99.5)

proteinID <- "P38782"
pdb_choose <- blast_test[blast_test$Entry==proteinID,]



# merge the information from blast, swiss model and sift database
# estimate the chainID for the experimental PDB files
meta_parameter_PDB_homo <- read.table("data/meta_parameter_PDB_homo_2018_7_20.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
# correct the wrong pdb id
meta_parameter_PDB_homo$template <- str_replace_all(meta_parameter_PDB_homo$template, "\\.00E\\+", "e")

meta_parameter_PDB_homo$mapid <- paste(meta_parameter_PDB_homo$from, meta_parameter_PDB_homo$to,meta_parameter_PDB_homo$template,
                                       meta_parameter_PDB_homo$coordinate_id, sep = "_")
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
df_merged$pident2 <- getMultipleReactionFormula(blast_test$perc_identity,blast_test$id,df_merged$id_mapping_chain)
df_merged$mismatch2 <- getMultipleReactionFormula(blast_test$mismatches,blast_test$id,df_merged$id_mapping_chain)

#obtain the coordinate of the mapped residue from pdb strucutre
df_merged$qstart2 <- getMultipleReactionFormula(blast_test$q_start,blast_test$id,df_merged$id_mapping_chain)
df_merged$qend2 <- getMultipleReactionFormula(blast_test$q_end,blast_test$id,df_merged$id_mapping_chain)

#obtain the coordinate of the mapped residue from the original protein sequence
df_merged$sstart2 <- getMultipleReactionFormula(blast_test$s_start,blast_test$id,df_merged$id_mapping_chain)
df_merged$send2 <- getMultipleReactionFormula(blast_test$s_end,blast_test$id,df_merged$id_mapping_chain)

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


# save the result for the next use
write.table(pdb_ex_refine, "data/pdb_ex_refine using R.txt", row.names = FALSE, sep = "\t")


# note:
# there are 866 proteins with pdb_ex.
# however, the pair between pdb-ex and protein id is over 10435
# except the general filteration based on the pidenty, mismatch and resolution
# we can further filter based on the coverage
# by comparison:
# only using pidenty as the filter, number of genes with pdb_ex is 903,
# while when using data from swiss model, the number is 866







