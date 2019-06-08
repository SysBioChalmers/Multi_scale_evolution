#----------------------------------------------------------------
# pdb filteration for genome scale data
# for the pdbs in genome scale, it is essential to increase the pdb files coverage and choose the representative structures
#----------------------------------------------------------------


# for the pdb-ex
# fistly we analyze the pdb_ex_refine information, which is result based on the integrative analysis from pdb, swiss model and sift
# secondly we further analyze the result from blast analysis as found that some blast results with pidenty
# equal to 100 were removed from the above pdb_ex_refine file, therefore we further compare the result
# here we only analyse the proteins which only existed in the blast analysis
# we found only 81 proteins with pdb files through blast analysis
# however, some initial check shows that in the uniprot, we can't find the related clues to support this
# protein have the related pdb files, thus we don't use the result from the direct blast analysis
# gene_pdb_ex_blast <- unique(c(blast_test$Entry, blast_test2$Entry))
# gene_need_check <- setdiff(gene_pdb_ex_blast, gene_pdb_ex_refine)
# blast_test_check <- blast_test[which(blast_test$Entry %in% gene_need_check),]
# blast_test_check2 <- blast_test2[which(blast_test2$Entry %in% gene_need_check),]
pdb_ex1 <- read.table("data/pdb_ex_refine using R.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
pdb_ex2 <- read.table("data/pdb_ex_refine using R_02.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
pdb_ex <- rbind.data.frame(pdb_ex1,pdb_ex2)
remove(pdb_ex1)
remove(pdb_ex2)
names(pdb_ex)[names(pdb_ex) == "pident2"] <- "pident"
names(pdb_ex)[names(pdb_ex) == "mismatch2"] <- "mismatch"
pdb_ex$pdb_length <- pdb_ex$qend2 - pdb_ex$qstart2
gene_pdb_ex_refine <- unique(pdb_ex$UniProtKB_ac)



# this filter is same to proYeastGEM
# filter 1 based on
# pident
# mismatch
# Resolution
# pdb_EX_filter1 <- pdbExFilter(pdb_EX = pdb_ex)
# gene_pdb_ex_filter1 <- unique(pdb_EX_filter1$UniProtKB_ac)




# for the pdb-homo
pdb_homo_all <- read.table("data/pdb_homo_refine using R.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
pdb_homo_all$pdb_length <- pdb_homo_all$to - pdb_homo_all$from
pdb_homo_all$Coverage <- (pdb_homo_all$to - pdb_homo_all$from)/pdb_homo_all$uniprot_seq_length

# this filter is the same to proYeastGEM
# filter1 based on ss,si,resolution, qmean
# pdb_homo_filter1 <- pdbHomoFilter(pdb_homo=pdb_homo_all)
# filter2 based on coverage, pdb_length and whether it contains domain??
# single-domain proteins and domains in multidomain proteins favor a chain length in the range 100–50 amino acids
# https://www.sciencedirect.com/science/article/pii/S1359027898000042
# gene_pdb_homo <- unique(pdb_homo_filter1$UniProtKB_ac)
# here we firstly conduct the filteration based on QMEAN
pdb_homo_all_refine <- filter(pdb_homo_all, qmean >=-4)
gene_pdb_homo_refine <- unique(pdb_homo_all_refine$UniProtKB_ac)
# note: we should focus choosing the representative pdb files for a protein
# a protein could have multiple pdb file
# new strategy to choose the representative
# here we try to give a representive structure for largetest number of proteins
# the first basic filteration is using pidenty for pdb_ex and using qmean for pdb_homo


# Reference 1 www.pnas.org/cgi/doi/10.1073/pnas.1516373112
# one reference to choose the reference structure
#Many human proteins were represented by multiple PDB structures that often (i) covered only parts
#of the reference protein sequence (SI Appendix, Fig. S10) and (ii) overlapped
#partially or completely with each other (SI Appendix, Fig. S11). We developed
#a greedy algorithm to select a set of minimally overlapping, “representative”
#structures for each protein so that the set jointly covered a
#maximal part of the reference (UniProt) protein sequence. We built this set
#by consecutively adding the longest structure (i.e., that with largest protein
#sequence coverage) so that no pair of structures in the set overlapped with
#each other by more than 10% of the shorter structure. For groups of
#structures with comparable lengths but with high mutual overlap, we selected
#the structure with median CLUMPS P value. Although choosing the
#structure with the best P value might appear as a more intuitive choice, we
#reasoned that cancer proteins might tend to have more structures in PDB
#compared with their noncancer counterparts due to study bias. Thus,
#selecting the structure with the best P value would artificially reward cancer
#proteins, whereas selecting those with median P value would not. Our algorithm
#selected 4,822 (from the total of 41,063) representative structures
#corresponding to 4,062 human proteins. The joint protein sequence coverage
#of these representative structures is shown in SI Appendix, Fig. S12.

# Reference 2 Nature Genetics volume 48, pages 827–837 (2016)
#Here we used the longest chain containing the amino acid of interest to calculate three-dimensional distances between amino acids. In cases of multiple identical models, one is picked randomly.


# Reference 3
#To reduce redundancy, each structural dataset was independently
#reduced to a minimally overlapping set of protein structures
#or homology models following an approach similar to
#Kamburov et al (Ref.1) For each dataset, we iteratively selected the
#structure/model that provided the greatest coverage of the target
#protein, omitting structures with >10% sequence overlap with
#the existing set. For structures/models with similar sequence
#coverage, we selected the highest-quality structure (by resolution
#for the PDB and the ModBase Quality Score for ModBase).
#In comparisons between the PDB and ModBase, only structuremodel

# based on the above three references
# firstly we choose the pdbs with longest coverage, if there are several same pdbs, we choose the one with best resolution for experimental pdb files
# while for the pdb_homo, possible we can choose pdb file with highest qmean.



# this function is used to find the other pdb files which could improve the coverage of protein residues with structures
getMiniPDB.EX <- function(pdb_choose0, seed_pdb, new_coverage_filter=0.05) {
  pdb_index <- vector()
  sstart0 <- seed_pdb$sstart2[1]
  send0 <- seed_pdb$send2[1]
  coordinate0 <- sstart0:send0
  pdb_choose0 <- pdb_choose0 %>% arrange(desc(pdb_length))
  for (i in seq_along(pdb_choose0$UniProtKB_ac)) {
    sstart <- pdb_choose0$sstart2[i]
    send <- pdb_choose0$send2[i]
    coordinate1 <- sstart:send
    common_coordinate <- intersect(coordinate0, coordinate1)
    new_coordinate <- setdiff(coordinate1, coordinate0)
    # calculate the overlap and new ratio of coverage
    overlap <- length(common_coordinate) / length(coordinate0)
    new_coverage <- length(new_coordinate) / length(coordinate0)
    if (new_coverage > new_coverage_filter) {
      sstart0 <- min(sstart0, sstart)
      send0 <- max(send0, send)
      coordinate0 <- sstart0:send0
      pdb_index <- c(pdb_index, i)
      print('Find the other pdb files to improve the coverage!')
    }
  }

  return(pdb_choose0[pdb_index, ])
}

# test
# proteinID <- "P22216"
# pdb_choose <- pdb_ex[pdb_ex$UniProtKB_ac==proteinID,]
# max_coverage <- max(pdb_choose$pdb_length, na.rm = TRUE)
# new_pdb  <- pdb_choose[pdb_choose$pdb_length ==max_coverage, ]
# all <- getMiniPDB.EX(pdb_choose0=pdb_choose, seed_pdb=new_pdb)


# batch
pdb_ex_filter = pdb_ex[FALSE,]
protein_list <- unique(pdb_ex$UniProtKB_ac)
for (i in seq_along(protein_list)) {
  print(i)
  proteinID <- protein_list[i]
  pdb_choose <- pdb_ex[pdb_ex$UniProtKB_ac == proteinID, ]
  # remove pdb with none resolution

  if (nrow(pdb_choose[!is.na(pdb_choose$Resolution), ]) > 0) {
    pdb_choose <- pdb_choose[!is.na(pdb_choose$Resolution), ]
    max_coverage <- max(pdb_choose$pdb_length, na.rm = TRUE)
    pdb_max_length <- pdb_choose[pdb_choose$pdb_length == max_coverage, ]
    min_resolution <- min(pdb_max_length$Resolution, na.rm = TRUE)
    new_pdb1 <- pdb_max_length[pdb_max_length$Resolution == min_resolution, ]


  } else{
    max_coverage <- max(pdb_choose$pdb_length, na.rm = TRUE)
    pdb_max_length <- pdb_choose[pdb_choose$pdb_length == max_coverage, ]
    new_pdb1 <- pdb_max_length
  }

  new_pdb2 <- getMiniPDB.EX(pdb_choose0=pdb_choose, seed_pdb=new_pdb1)
  new_pdb <- rbind.data.frame(new_pdb1, new_pdb2)
  pdb_ex_filter <- rbind.data.frame(pdb_ex_filter, new_pdb)
}



# check which proteins have pdb_ex but filter out in the blast analysis
# for these proteins we will find the related homolgy pdb files though the QMEAN <- 4
uniprot_sce_pdb <- read_excel("data/uniprot_sce_pdb.xlsx")
protein_lost_pdb <- setdiff(uniprot_sce_pdb$Entry, c(unique(pdb_ex_filter$UniProtKB_ac),pdb_homo_all_refine$UniProtKB_ac))
pdb_homo_for_ex <- pdb_homo_all[which(pdb_homo_all$UniProtKB_ac %in% protein_lost_pdb),]
# we merge these pdb file with the first batch
pdb_homo_all_refine <- rbind.data.frame(pdb_homo_all_refine, pdb_homo_for_ex)




# here we try to use the similar method to reduce the reduntant pdb files
# this function is used to find the other pdb files which could improve the coverage of protein residues with structures
getMiniPDB.HOMO <- function(pdb_choose0, seed_pdb, new_coverage_filter=0.05) {
  pdb_index <- vector()
  sstart0 <- seed_pdb$from[1]
  send0 <- seed_pdb$to[1]
  coordinate0 <- sstart0:send0
  pdb_choose0 <- pdb_choose0 %>% arrange(desc(pdb_length))
  for (i in seq_along(pdb_choose0$UniProtKB_ac)) {
    sstart <- pdb_choose0$from[i]
    send <- pdb_choose0$to[i]
    coordinate1 <- sstart:send
    common_coordinate <- intersect(coordinate0, coordinate1)
    new_coordinate <- setdiff(coordinate1, coordinate0)
    # calculate the overlap and new ratio of coverage
    overlap <- length(common_coordinate) / length(coordinate0)
    new_coverage <- length(new_coordinate) / length(coordinate0)
    if (new_coverage > new_coverage_filter) {
      sstart0 <- min(sstart0, sstart)
      send0 <- max(send0, send)
      coordinate0 <- sstart0:send0
      pdb_index <- c(pdb_index, i)
      print('Find the other pdb files to improve the coverage!')
    }
  }

  return(pdb_choose0[pdb_index, ])
}



# batch
pdb_homo_filter = pdb_homo_all_refine[FALSE,]
protein_list <- unique(pdb_homo_all_refine$UniProtKB_ac)
for (i in seq_along(protein_list)) {
  print(i)
  proteinID <- protein_list[i]
  pdb_choose <- pdb_homo_all_refine[pdb_homo_all_refine$UniProtKB_ac == proteinID, ]
  # remove pdb with none resolution

  if (nrow(pdb_choose[!is.na(pdb_choose$Resolution), ]) > 0) {
    pdb_choose <- pdb_choose[!is.na(pdb_choose$Resolution), ]
    max_coverage <- max(pdb_choose$pdb_length, na.rm = TRUE)
    pdb_max_length <- pdb_choose[pdb_choose$pdb_length == max_coverage, ]
    min_resolution <- min(pdb_max_length$Resolution, na.rm = TRUE)
    new_pdb1 <- pdb_max_length[pdb_max_length$Resolution == min_resolution, ]


  } else{
    max_coverage <- max(pdb_choose$pdb_length, na.rm = TRUE)
    pdb_max_length <- pdb_choose[pdb_choose$pdb_length == max_coverage, ]
    new_pdb1 <- pdb_max_length
  }

  new_pdb2 <- getMiniPDB.HOMO(pdb_choose0=pdb_choose, seed_pdb=new_pdb1)
  new_pdb <- rbind.data.frame(new_pdb1, new_pdb2)
  pdb_homo_filter <- rbind.data.frame(pdb_homo_filter, new_pdb)
}


#protein_frequencey <- as.data.frame(table(pdb_homo_filter$UniProtKB_ac))
#pdb_homo_check <- pdb_homo_filter[pdb_homo_filter$UniProtKB_ac=='P33203',]
#pdb_homo_original <- pdb_homo_all_refine[pdb_homo_all_refine$UniProtKB_ac=='P33203',]
total_protein <- unique(c(pdb_ex_filter$UniProtKB_ac, pdb_homo_filter$UniProtKB_ac))



# last steps
# change the file into a standard format
# for the homology
uniprotGeneID_mapping <- read_excel("data/uniprotGeneID_mapping.xlsx")
pdb_homo_filter$locus <- getSingleReactionFormula(uniprotGeneID_mapping$GeneName,uniprotGeneID_mapping$Entry,pdb_homo_filter$UniProtKB_ac)
pdb_homo_filter$note <- NA
rename <- function(dat, oldnames, newnames) {
  datnames <- colnames(dat)
  datnames[which(datnames %in% oldnames)] <- newnames
  colnames(dat) <- datnames
  dat
}

pdb_homo_filter <- rename(pdb_homo_filter,c("from","to"), c("sstart2","send2"))

# for the experimetal pdb file
pdb_ex_filter$locus <- getSingleReactionFormula(uniprotGeneID_mapping$GeneName,uniprotGeneID_mapping$Entry,pdb_ex_filter$UniProtKB_ac)

write.table(pdb_ex_filter, "data/pdb_ex_filter.txt", row.names = FALSE, sep = "\t")
write.table(pdb_homo_filter, "data/pdb_homo_filter.txt", row.names = FALSE, sep = "\t")






