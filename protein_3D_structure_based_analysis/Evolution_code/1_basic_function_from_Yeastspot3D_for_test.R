#' Nucleotide conversion for the gene from minus strand
#'
#' changeATCG should be used to firstly,if the cds from the minus strand
#' get the mutation information on the minus strand based on that from the positive strand
#' The followed exlain that why we need changeATCG for gene from minus strand
#' Both + and - strands have 5'-3' and 3'-5' directions, however, the genomic coordinates refer
#' to only the 5'-3' direction of the reference, +, strand. Your second statement is indeed correct.
#' Another illustrative example, if you want to find the transcription start site (TSS) of a gene that
#' spans the region of (in genomic coordinates) 10800 to 11200 in, say, chromosome 11, then you should
#' also consider which strand the gene is located in. Let's say the base at 10800 is A and the base at
#' 11200 is C. If the gene is in the + strand, than 10800-11200 refer to the 5'-3' of the gene, hence
#' the TSS is 10800 A. If the genes is in the - strand, then 10800-11200 (always for + strand) corresponds
#' to the 3'-5' direction of the gene located in the complementary strand, hence the TSS is 11200 G (complementar to C).
#'
#' @param ss A kind of nucleotide
#'
#' @return A string of complementary nucleotide
#' @export
#'
#' @examples
#' changeATCG(ss="A")
#' changeATCG(ss="C")
#' changeATCG(ss="T")
#' changeATCG(ss="G")
changeATCG <- function (ss){
  # this function was used to get the mutation information from the minus strand based on the mutation information
  # on the positive strand
  if (ss =="A"){
    ss <- "T"
  } else if(ss=="C"){
    ss <- "G"
  } else if(ss=="T"){
    ss <-"A"
  } else if(ss=="G"){
    ss <-"C"
  }
  return(ss)
}


#' Protein sequence quality check
#'
#' Check whether the translated protein from CDS is equal to the protein sequence
#' from the sgd database, if they are equal, the original cds sequence and protein sequence is consistent in
#' our program
#'
#' @param gene_seq_inf   A  gene feature dataframe, each row contains the gene annotation information, like the coordinates, the cds sequence
#' @return A list contains the gene with right translated protein and the gene with wrong translated protein
#' @export
#'
#' @examples
#' data('gene_feature0')
#' checkTanslatedProtein(gene_feature0)
checkTanslatedProtein <- function(gene_seq_inf) {

  checkResult <- list()
  for (i in 1:nrow(gene_seq_inf)) {
    print(i)
    # i=4411
    s1 <- gene_seq_inf$locus_tag[i]
    gene_snp <- getGeneCoordinate(gene_name = s1, genesum = gene_seq_inf)
    realcds <- str_to_lower(paste(gene_snp[["gene"]], collapse = ""))
    toycds <- s2c(realcds)
    gene_snp[["protein_mutated"]] <- translate(seq = toycds)
    s10 <- all(gene_snp[["protein"]] == gene_snp[["protein_mutated"]])
    gene_seq_inf$check2[i] <- s10
    print(s10)
  }
  gene_feature_need_check <- filter(gene_seq_inf, check2 == FALSE)
  checkResult[["right_feature"]] <- filter(gene_seq_inf, check2 == TRUE) # store the right information
  checkResult[["wrong_feature"]] <- filter(gene_seq_inf, check2 == FALSE) # store the wrong information
  return(checkResult)
}



#' Choose strains which belong to the same group
#'
#' This function is mainly used to choose the strain based on the strain type defined in 1011 genome sequence project
#'
#' @param type A string representing the strain group name
#' @param strain0 A dataframe contain all 1011 yeast strains' classification information
#'
#' @return A vector containing strain name
#' @export
#'
#' @examples
#' strain_type <- "all_strain"
#' strain_select1 <- chooseStrain(type = strain_type)
chooseStrain <- function(type, strain0=strain_classification){
  #input: type--strain type, like Bioethonal, Wine
  #output: strains set contained in each type
  colnames(strain0) <- c('Standardized_name','Clades')
  if(type=="all_strain"){
    return(strain0)
  } else{
    strain_select <- filter(strain0, str_detect(strain0$Clades, type)) %>%
      select(., Standardized_name)
    return(strain_select)
  }

}


#' List genes with SNPs
#'
#' Obtain the gene list which have SNP, in total there are 36 metabolic genes which
#' don't have the mutation
#'
#' @return A vector contain the gene name
#' @export
#'
#' @examples
#' # Firstly, open one R project
#' # Then put the SNP file in the directory of "xx/data"
#' getGeneNameWithSNP()
getGeneNameWithSNP1 <- function() { # This is the old version
  #input
  #the dir of  file 'gene_snp'
  #output
  #the gene list with the snp
  gene_SNP_sum <- list.files("data/gene_snp")
  s <- vector()
  for (i in seq_along(gene_SNP_sum)) {
    file0 <- paste("data/gene_snp/", gene_SNP_sum[i], sep = "")
    s[i] <- file.info(file0)$size
  }
  indexNull <- which(s != 0)
  gene_withSNP <- gene_SNP_sum[indexNull]
  return(gene_withSNP)
}



#' Prepare SNPs list for one gene
#'
#' Proprocess all the snp for one gene belong to a sample set
#' it should be noted that if the gene belong to minus strand, changeATCG function will be used
#' be careful about the file directory
#'
#' @param gene0 A string representing the gene systematic name
#' @param gene_feature A dataframe contains the detailed annotation of gene from database
#'
#' @return  A dataframe contains each SNP information which including: chrosome, geneName, ref, alf and completment sign
#' @export
#'
#' @examples
#' data('gene_feature0')
#' preprocessSNP(gene0 = 'YPR184W', gene_feature = gene_feature0)
preprocessSNP1 <- function(gene0, gene_feature) { # This is the old version
  # inut a gene name,
  # then the function will read all the SNP information for this gene
  # output
  # a dataframe contains each SNP information which including:
  # chrosome, geneName, ref, alf and completment sign
  infile <- paste("data/gene_snp/", gene0, sep = "")
  mutated_test <- read.table(infile, header = FALSE, sep = "\t", stringsAsFactors = FALSE)
  colnames(mutated_test) <- c("strain", "Gene2", "Chr", "Pos", "Ref", "Alt")
  mutated_test$complement_sign <- getSingleMatchParameter(gene_feature$complement_sign, gene_feature$locus_tag, mutated_test$Gene2)
  mutated_gene0 <- mutated_test
  for (i in seq(length(mutated_gene0$Chr))) {
    if (mutated_gene0$complement_sign[i]) {
      mutated_gene0$Ref[i] <- changeATCG(mutated_gene0$Ref[i])
      mutated_gene0$Alt[i] <- changeATCG(mutated_gene0$Alt[i])
    } else {
      mutated_gene0$Ref[i] <- mutated_gene0$Ref[i]
      mutated_gene0$Alt[i] <- mutated_gene0$Alt[i]
    }
  }

  return(mutated_gene0)
}



#' List genes with SNPs
#'
#' Obtain the gene list which have SNP, in total there are 36 metabolic genes which
#' don't have the mutation
#'
#' @param snp_files_dir0 A fold dir contains the detailed snp information for each gene
#' @return A vector contain the gene name
#' @export
#'
#' @examples
#' # Firstly, open one R project
#' # Then put the SNP file in the directory of "xx/data"
#' getGeneNameWithSNP()
getGeneNameWithSNP <- function(snp_files_dir0 = "data/gene_snp/") {
  #input
  #the dir of  file 'gene_snp', the file contains the snp from each gene
  #output
  #the gene list with the snp
  gene_SNP_sum <- list.files(snp_files_dir0)
  s <- vector()
  for (i in seq_along(gene_SNP_sum)) {
    file0 <- paste(snp_files_dir0, gene_SNP_sum[i], sep = "")
    s[i] <- file.info(file0)$size
  }
  indexNull <- which(s != 0)
  gene_withSNP <- gene_SNP_sum[indexNull]
  return(gene_withSNP)
}



#' Prepare SNPs list for one gene
#'
#' Proprocess all the snp for one gene belong to a sample set
#' it should be noted that if the gene belong to minus strand, changeATCG function will be used
#' be careful about the file directory
#'
#' @param gene0 A string representing the gene systematic name
#' @param gene_feature A dataframe contains the detailed annotation of gene from database
#' @param snp_files_dir0 A fold dir contains the detailed snp information for each gene
#' @return  A dataframe contains each SNP information which including: chrosome, geneName, ref, alf and completment sign
#' @export
#'
#' @examples
#' data('gene_feature0')
#' preprocessSNP(gene0 = 'YPR184W', gene_feature = gene_feature0)
preprocessSNP <- function(gene0, gene_feature, snp_files_dir0 = "data/gene_snp/") {
  # inut
  # a gene name,
  # the gene snp file
  # output
  # a dataframe contains each SNP information which including:
  # chrosome, geneName, ref, alf and completment sign
  infile <- paste(snp_files_dir0, gene0, sep = "")
  mutated_test <- read.table(infile, header = FALSE, sep = "\t", stringsAsFactors = FALSE)
  colnames(mutated_test) <- c("strain", "Gene2", "Chr", "Pos", "Ref", "Alt")
  mutated_test$complement_sign <- getSingleMatchParameter(gene_feature$complement_sign, gene_feature$locus_tag, mutated_test$Gene2)
  mutated_gene0 <- mutated_test
  for (i in seq(length(mutated_gene0$Chr))) {
    if (mutated_gene0$complement_sign[i]) {
      mutated_gene0$Ref[i] <- changeATCG(mutated_gene0$Ref[i])
      mutated_gene0$Alt[i] <- changeATCG(mutated_gene0$Alt[i])
    } else {
      mutated_gene0$Ref[i] <- mutated_gene0$Ref[i]
      mutated_gene0$Alt[i] <- mutated_gene0$Alt[i]
    }
  }

  return(mutated_gene0)
}



#' Translate CDS into Protein
#'
#' Produce the amino acid seq based on cds sequence
#'
#' @param cds0 A string containing cds sequence
#'
#' @return A string containing the protein sequence
#' @export
#'
#' @examples
#' getProteinFromCDS(cds0="ATGGAAATGA")
getProteinFromCDS <- function (cds0){
  #input
  #cds0, ATGGAAATGA ---cds seq
  #output , MVQRWLYSTNAKD -- aa seq
  realcds0 <- str_to_lower(cds0)
  toycds0 <- s2c(realcds0)
  protein0 <- translate(seq = toycds0)
  protein1 <- paste0(protein0, collapse = "")
  return(protein1)
}



#' Mapping domain coordinate onto the protein 3D structure
#'
#' With the protein domain annotation, this function get the relative coordinates of domain within a protein 3D strucutre.
#'
#' @param dataframe0 A dataframe containing the coordinate mapping information between a PDB file and a protein
#'
#' @return A dataframe containing the coordinate mapping between a pdb file and a protein domain
#' @export
#'
#' @examples
#' data('pdb_inf_test')
#' getDomainCoordinate(dataframe0=pdb_inf_test)
getDomainCoordinate <- function(dataframe0) {
  # input
  # a dataframe contains the pdb information for each gene, the first column named 'locus' should
  # contain the geneID

  # output
  # a dataframe contains the pdb information with the domain coordinates
  # firstly read the pfam annotation data
  domain_pfam0 <- read.table('data/domain_pfam0_for_SNP_pipeline.txt', header = TRUE, sep = "\t")

  pdb_Ex0 <- dataframe0

  colnames0 <- colnames(pdb_Ex0)
  colnames1 <- c("domain_name", "domain_decription", "type", "domain_start0", "domain_end0")
  colnames2 <- c(colnames0,  colnames1)
  domain_all <- list()
  for (j in seq(nrow(pdb_Ex0))) {
    print(j)
    domain0 <- filter(domain_pfam0, gene == pdb_Ex0$locus[j])
    start <- pdb_Ex0$sstart2[j]
    end <- pdb_Ex0$send2[j]
    set1 <- start:end
    domain0_list <- list()
    domain0_List2 <- list()
    if (length(domain0$gene) >= 1) {
      for (i in seq_along(domain0$gene)) {
        domain0_list[[i]] <- domain0$domain_start[i]:domain0$domain_end[i]
        domain0_List2[[i]] <- intersect(set1, domain0_list[[i]])
        if (length(domain0_List2[[i]]) >= 2) {
          domain0$domain_start0[i] <- domain0_List2[[i]][1]
          domain0$domain_end0[i] <- domain0_List2[[i]][length(domain0_List2[[i]])]
        } else {
          domain0$domain_start0[i] <- "NA"
          domain0$domain_end0[i] <- "NA"
        }
      }

      # merge domain information
      domain0 <- domain0 %>% unite(., "domain_inf", colnames1, sep = "##")
      print(domain0$domain_inf)
      # trasfer the data into a list
      domain_all[[j]] <- domain0$domain_inf
    } else {
      domain_all[[j]] <- "NA"
    }
  }

  ss <- pdb_Ex0 %>% unite(., pdb_inf, colnames0, sep = "##")

  domain_all0 <- list()
  for (i in seq_along(ss$pdb_inf)) {
    domain_all0[[i]] <- paste(ss$pdb_inf[i], domain_all[[i]], sep = "##")
  }

  domain_all1 <- data.frame(pdb_inf = unique(unlist(domain_all0)), stringsAsFactors = FALSE)
  domain_all2 <- domain_all1 %>% separate(., pdb_inf, into = colnames2, sep = "##")

  # remove the domain without coordinate
  domain_all2 <- filter(domain_all2, domain_start0 !='NA' & domain_end0 !='NA')

  return(domain_all2)
}


# The followed two function  were used to estimate the mutation information based on single SNP information
# using function to obtain the each gene's mutation information based on the processed mutation data
# vesion 2



#' Obtain the mutation result of a nsSNP
#'
#' This function is used to find the postion of mutated amino acids based on genomics mutation
#'
#' @param mutatedPosition A number
#' @param alted A string, like 'A','G','C','T'
#' @param geneName A string containing the systematic gene name
#' @param gene_snp0 A list containing the detailed annotation of one gene
#'
#' @return A vector containing the 0 and 1 while 1 represent that the residue mutated in the corresponding position
#' @export
#'
#' @examples
findPPosition <- function(mutatedPosition, alted, geneName, gene_snp0){
  #mutatedPosition = 93192
  #alted ='A'
  mutation_position <- which(gene_snp0[['gene_coordinate']]==mutatedPosition)
  gene_snp0[['gene']][mutation_position] <- alted

  #translation
  library(seqinr)
  realcds <- str_to_lower(paste(gene_snp0[['gene']],collapse = ""))
  toycds <- s2c(realcds)
  gene_snp0[['protein_mutated']] <- translate(seq = toycds)

  #find the relative postion of mutated amino acids
  aa_position <- which(gene_snp0[['protein']] != gene_snp0[['protein_mutated']] )

  #calculate the mutation number in the mutated postion (for specific strain -x)
  gene_snp0[['mutation_position']] <- rep(0,length(gene_snp0[['protein']])) #initialize the start value for each positions
  gene_snp0[['mutation_position']][aa_position] <- 1
  result <- unlist(gene_snp0[['mutation_position']])
  return(result)
}


#' Count residues's mutation number
#'
#' Calculate the number of residues mutation in each site
#'
#' @param gene_name A string containing the systematic gene name
#' @param mutation_annotation A dataframe containing the annotation of each SNP for one gene
#' @param gene_snp0 A list containing the detailed annotation of one gene
#'
#' @return A vector containing the mutation number of residues in each site
#' @export
#'
#' @examples
countMutationProtein <- function (gene_name, mutation_annotation, gene_snp0){
  #this function could produce the all the results about mutated amino acids information
  #gene_name <- "YDL205C"
  mutated_gene0 <- filter(mutation_annotation, Gene2==gene_name)
  tt <- rep(0,length(gene_snp0[['protein']]))
  for (i in seq(length(mutated_gene0$Gene2))){
    tt <- tt + findPPosition(mutated_gene0$Pos[i],mutated_gene0$Alt[i],gene_name, gene_snp0)
  }

  return(tt)
}



#' Standardize the mutation number
#'
#' Calculate the standard samples contained the mutation in the specific postion
#'
#' @param sample_num A number
#'
#' @return A number
#' @export
#'
#' @examples
sampleStand <- function (sample_num){
  ss <- sample_num^3/(2^3+sample_num^3)
  return(ss)
}


#' Get WAP
#'
#' Calculate the initial WAP value of one kind of mutation distribution
#'
#' @param mutated_pos A vector contained mutated position
#' @param sample0 A vector containing the standard number of mutation on each site of protein 3D structure
#' @param distance A residues distance matrix
#'
#' @return A number
#' @export
#'
#' @examples
getTotalWAP <- function (mutated_pos, sample0, distance){


  all_pair <- combn(mutated_pos, 2)
  wap1 <- 0
  t=6
  for (i in 1:ncol(all_pair)){
    s1 <- all_pair[,i]
    n1 <- sample0[s1[1]]
    n2 <- sample0[s1[2]]
    #as the distance matrix is symmetry, so only the value from upper triangle can be used
    ss1 <- min(s1)
    ss2 <- max(s1)
    d0 <- distance[ss1,ss2] # d0 <- distance[s1[1],s1[2]]
    #calculate wap for each pair
    wap1 <- wap1 + n1*n2*exp(-d0[1]^2/2/t^2)
  }

  return(wap1)

}




#' Get the sampled WAP score
#'
#' Calculate the WAP score based on CLUMPS paper
#'
#' @param mutated_pos A vector containing the interesting site on the protein 3D structure (?)
#' @param sample0 A vector containing the standard number of mutation on each site of protein 3D structure
#' @param distance A residues distance matrix
#' @param seq A vector containing the coordinate of protein 3D structure
#' @param n A sample number
#'
#' @return A vector containing the WAP scores in the sampling analysis
#' @export
#'
#' @examples
getSampleWAP <- function(mutated_pos, sample0, distance, seq=seq0, n=10000){
  m <- length(mutated_pos)
  fixed_sample <- sample0[mutated_pos]

  wap_sample <- vector()
  for (i in 1:n){
    sample_position <- sample(seq, m, replace = FALSE, prob = NULL)
    sample_standard_zero <- rep(0,length(seq))
    sample_standard_zero[sample_position] <- fixed_sample
    pos_mutation_t0 <- which(sample_standard_zero != 0)
    wap_sample[i] <- getTotalWAP(pos_mutation_t0,sample_standard_zero,distance)
    #print(sample_position)
  }

  return(wap_sample)
}



#' Plot the desity graph of WAP
#'
#' Obtain the distribution of sampled WAP
#'
#' @param wap_sample A vector containing the sampled WAP score
#' @param wap_original0 A number
#'
#' @return An R graph
#' @export
#'
#' @examples
plotNullDistribution <- function(wap_sample, wap_original0=FALSE) {
  plot(density(wap_sample),
       frame = FALSE, col = "black",
       main = "Density",
       xlab = "WAP",
       ylab = "Density"

  )
  if(wap_original0 !=FALSE){
    abline(v=wap_original0, col="blue", lty=2)
  }

  plot(ecdf(wap_sample),
       main = "Cumulative density",
       xlab = "WAP",
       ylab = "Cumulative"
  )
  if(wap_original0 !=FALSE){
    abline(v=wap_original0, col="blue", lty=2)
  }
}



#' Calculate p-value
#'
#' Calculate the right-tailed p value
#'
#' @param wap_initial A number
#' @param wap_sampling A vector of wap obtained sampling method
#'
#' @return right tailed p value
#' @export
#'
#' @examples
getPvalue <- function(wap_initial, wap_sampling) {

  index1 <- which(wap_sampling >= wap_initial)
  tail.prob <- (length(index1) + 1) / length(wap_sampling)
  #print(tail.prob)
  return(tail.prob)
}



#' Get residue mutation from nsSNP
#'
#' this function return the mutated informaiton based on SNP information: mutated position and changed amino acids
#'
#' @param mutatedPosition A number
#' @param alted A string, for example alted ='A'
#' @param geneName A string containing the gene name
#'
#' @return A string containing the information of mutated residues
#' @export
#'
#' @examples
PositionResidueSNP <- function(mutatedPosition, alted, geneName, gene_feature) {
  #mutatedPosition = 130975
  #alted ='A'
  #geneName = "YAL012W"
  gene_snp <- getGeneCoordinate(gene_name = geneName, genesum = gene_feature)
  mutation_position <- which(gene_snp[['gene_coordinate']]==mutatedPosition)

  gene_snp[['gene']][mutation_position] <- alted

  # translation
  #library(seqinr)
  realcds <- str_to_lower(paste(gene_snp[["gene"]], collapse = ""))
  toycds <- s2c(realcds)
  gene_snp[["protein_mutated"]] <- translate(seq = toycds)

  # find the relative postion of mutated amino acids
  aa_position <- which(gene_snp[["protein"]] != gene_snp[["protein_mutated"]])
  aa_type <- gene_snp[["protein_mutated"]][aa_position]

  # built the relation between aa_position and aa_type
  # aa_postion and aa_type should contain one element
  mutatedAA <- paste(aa_type, aa_position, sep = "@@") # this estabolish the relation between the postion and mutated amino acids
  return(mutatedAA)
}



#' Summarize the mutated residues information
#'
#' Put the residue from the same postion together
#'
#' @param pos_residue A list contains the mutated residues information
#'
#' @return A dataframe contains the mutation position and the 'alt' residues
#' @export
#'
#' @examples
ResidueSum <- function(pos_residue) {
  pos_residue <- unlist(pos_residue)
  pos_residue_df <- data.frame(pos_aa = pos_residue, pos_aa1 = pos_residue, stringsAsFactors = FALSE)
  pos_residue_df <- pos_residue_df %>% separate(., pos_aa1, into = c("residue", "position"), sep = "@@")

  pos_residue_df0 <- data.frame(pos = unique(pos_residue_df$position), stringsAsFactors = FALSE)
  pos_residue_df0$residue <- getMultipleMatchParameter(pos_residue_df$pos_aa, pos_residue_df$position, pos_residue_df0$pos)
  pos_residue_df0$pos <- as.numeric(pos_residue_df0$pos)

  return(pos_residue_df0)
}




#' Get significant pairs
#'
#' This function is used to filter significant pairs based on hotspot paper
#'
#' @param aa_3d A vector for the coordinate of PDB structure
#' @param residue0 A vector contained all the muated residue information of the stucture and it can be found the same mutation in residue occured many times
#' @param aa_pro A vector for the original coordinate of protein aa sequence
#' @param distance0 A matrix for the distance of the paired residue of pdb structure
#'
#' @return A dataframe contains the inforation of the mutated residues
#' @export
#'
#' @examples
getHotVertice <- function(aa_3d, residue0, aa_pro, distance0) {
  #function test
  #"YAL012W" sequence and structure is used
  #aa_3d = seq0
  # residue0 = residue_3D
  # aa_pro = seq_from_3D
  # distance0 = ResidueDistance_1n8p



  # establish the structure coordinate and all the residues
  # it should be noted that the duplicated mutation in the same position is not considered
  # the reason to omit the duplicated mutation: to remove so many paired residues
  pos_residue_3d <- data.frame(pos = aa_3d, residue = residue0, stringsAsFactors = FALSE)
  pos_residue_3d <- splitAndCombine(pos_residue_3d$residue, pos_residue_3d$pos, sep0 = "\\;")
  colnames(pos_residue_3d) <- c("residue", "pos_3d")
  pos_residue_3d <- pos_residue_3d[which(pos_residue_3d$residue != "NA"), ]
  # replace the protein aa coordinate into the structure coordinate
  pos_residue_3d <- pos_residue_3d %>% separate(., residue, into = c("residue", "pos_pro"))
  pos_residue_3d$residue <- paste(pos_residue_3d$residue, pos_residue_3d$pos_3d, sep = "@@")
  all_pair <- combn(pos_residue_3d$residue, 2)
  all_pair0 <- as.data.frame(t(all_pair))

  # choose the cluste based on p value, Distance between two pair and sperated residues(>20)
  all_pair1 <- all_pair0 %>%
    separate(., V1, into = c("residue", "c1"), sep = "@@") %>%
    separate(., V2, into = c("residue2", "c2"), sep = "@@")
  all_pair1[1:10, ]
  all_pair1$c1 <- as.numeric(all_pair1$c1)
  all_pair1$c2 <- as.numeric(all_pair1$c2)

  all_pair_distance <- vector()
  for (i in seq_along(all_pair1$residue)) {
    all_pair_distance[i] <- distance0[all_pair1$c1[i], all_pair1$c2[i]]
  }

  # calculate the distance between all pair (how many amino acids separate the pair)
  pos_initial <- aa_3d #1:length(aa_pro) # why use aa_pro???? now it is changed into aa_3d as the distance could be queried based on aa_3d
  all_distance <- vector()
  all_pair_ini <- combn(pos_initial, 2)
  for (i in 1:ncol(all_pair_ini)) {
    s1 <- all_pair_ini[, i]
    d0 <- distance0[s1[1], s1[2]]
    all_distance[i] <- d0
  }


  # first filter based on aa_distance and space distance
  all_pair0$aa_distance <- abs(all_pair1$c1 - all_pair1$c2)
  all_pair0$distance <- all_pair_distance
  all_pair2 <- all_pair0[which((all_pair0$aa_distance > 20 & all_pair0$distance <= 10) | all_pair0$aa_distance == 0), ]

  # calculate the P value for each pair of amino acids based on the distance
  for (i in seq_along(all_pair2$distance)) {
    distance0 <- all_pair2$distance[i]
    all_pair2$pvalue_pair[i] <- length(which(all_distance <= distance0)) / length(all_distance)
  }

  all_pair3 <- all_pair2[which(all_pair2$pvalue_pair < 0.05), ]
  return(all_pair3)

}


#' Coordinate mapping between protein and the related structure
#'
#' This function is used to establish the mapping in the coordinate from protein structure and from protein sequence
#'
#' @param aa_3d A vector for the coordinate of PDB structure
#' @param residue0 A vector contained all the muated residue information of the stucture and it can be found the same mutation in residue occured many times
#' @param aa_pro A vector for the original coordinate of protein aa sequence
#' @param distance0 A matrix for the distance of the paired residue of pdb structure
#'
#' @return A dataframe contains the old coordinate from protein sequence and new coordinate from structure
#' @export
#'
#' @examples
mappingCoordinateFrom3DtoProtein <- function(aa_3d, residue0) {

  #function test
  #aa_3d = seq_3D
  #residue0 = residue_3D
  #aa_pro = seq_3D_origin # This is not needed
  #distance0 = ResidueDistance # This is not needed

  # establish the structure coordinate and all the residues
  # it should be noted that the duplicated mutation in the same position is not considered
  # the reason to omit the duplicated mutation: to remove so many paired residues
  pos_residue_3d <- data.frame(pos = aa_3d, residue = residue0, stringsAsFactors = FALSE)
  pos_residue_3d <- splitAndCombine(pos_residue_3d$residue, pos_residue_3d$pos, sep0 = "\\;")
  colnames(pos_residue_3d) <- c("residue", "pos_3d")
  #keep the original residue seq based on the protein
  pos_residue_3d$residue_old <- pos_residue_3d$residue
  pos_residue_3d <- pos_residue_3d[which(pos_residue_3d$residue != "NA"), ]
  # replace the protein aa coordinate into the structure coordinate
  pos_residue_3d <- pos_residue_3d %>% separate(., residue, into = c("residue", "pos_pro"))
  pos_residue_3d$residue <- paste(pos_residue_3d$residue, pos_residue_3d$pos_3d, sep = "@@") #connect the mutated residue with the coordinate from protein structure
  return(pos_residue_3d)
}




#' Obtain protein residues coordinate
#'
#' This function is used to get the original residues coordinates for the hotspot analysis based on the protein structure
#'
#' @param coordinate0 A vector containing the reidues coordinate from the protein 3D structure
#' @param coordinate_mapping0 A dataframe containing the mapping in the coordinate between the protein 3D structure and protein
#'
#' @return A vector containing the original protein residues coordinate
#' @export
#'
#' @examples
getOriginalCoordinateProtein <- function(coordinate0,coordinate_mapping0){
  coordinate1 <- str_split(coordinate0, ";")
  new_coordinate0 <- vector()
  for (i in seq_along(coordinate1)){
    s0 <- coordinate1[[i]]
    print('coordinate of residue from protein structure')
    print(s0)
    s1 <- getSingleMatchParameter(coordinate_mapping0$residue_old, coordinate_mapping0$residue,s0)
    print('coordinate of residue from protein sequence')
    print(s1)
    s1 <- paste0(s1,collapse = ";")
    new_coordinate0[i] <- s1

  }
  return(new_coordinate0)
}



#' Cluster summary
#'
#' This function is used to obtain the cluster analysis results
#'
#' @param residueInf A dataframe contains the detailed information about the residue
#'
#' @return A dataframe contains the cluster information
#' @export
#'
#' @examples
clusterAnalysis <- function(residueInf) {

  # obtain the clusters
  links <- data_frame(from = residueInf$V1, to = residueInf$V2, weight = residueInf$distance)
  g <- graph_from_data_frame(d = links, directed = FALSE)
  plot(g)
  # library(networkD3)
  # simpleNetwork(links, fontSize = 18, opacity = 1, zoom = TRUE,fontFamily = "sans-serif")
  # split the graph into subgraph and get the unique cluster
  # calculate the closeness centrality for each clust
  dg <- decompose.graph(g)
  detail_mutant_position0 <- list()
  position_combine <- vector()
  for (i in seq_along(dg)) {
    clust2 <- dg[[i]][1]
    detail_mutant_position0[[i]] <- names(clust2)
    position_combine[i] <- paste0(names(clust2), collapse = ";")
  }


  closeness0 <- list()
  cluster_closeness <- vector()
  dg <- decompose.graph(g)
  for (i in seq_along(dg)) {
    ##weights represent the distance between the node, has been contained in dg, E(dg).weight could be
    ##used to check the weiht information in each subgraph
    closeness0[[i]] <- closeness.residual(dg[[i]])
    cluster_closeness[i] <- sum(closeness.residual(dg[[i]]))
  }
  spotSummary <- data_frame(cluster = position_combine, closeness = cluster_closeness)
  return(spotSummary)
}



#' Get p-value for each cluster
#'
#' Calculate p value for each small clust
#'
#' @param cluster0 A vector contains the detailed mutation postion information for each cluster
#' @param sample_standard A vector contains the standard number of mutated residue in each position
#' @param distance A matrix contains the ditance for each paired residue
#' @param seq A vector contains the coordinate information of each amino acid
#'
#' @return A vector contains the calculated pvalue for each cluster
#' @export
#'
#' @examples
getHotPvalue <- function(cluster0, sample_standard, distance, seq) {
  #cluster0 <- important_hot$cluster


  # obtain the detaile postion for each cluster
  cluster1 <- str_split(cluster0, ";")
  str_replace_all("X@@75", "[:alpha:]@@", "")
  for (i in seq_along(cluster1)) {
    cluster1[[i]] <- str_replace_all(cluster1[[i]], "[:alpha:]@@", "")
  }

  for (i in seq_along(cluster1)) {
    cluster1[[i]] <- unique(as.numeric(cluster1[[i]]))
  }


  # calculate the p_value
  pvalue <- vector()
  for (i in seq_along(cluster1)) {
    #print(cluster1[[i]])
    if (length(cluster1[[i]]) >= 2) {
      pos_mutation_t0 <- cluster1[[i]]
      wap_original <- getTotalWAP(pos_mutation_t0, sample_standard, distance)
      wap_sample0 <- getSampleWAP(pos_mutation_t0, sample_standard, distance, seq, n = 10000)
      pvalue[i] <- getPvalue(wap_original, wap_sample0)
    } else {
      pvalue[i] <- 1
    }
  }

  return(pvalue)
}



#' Remove stop coden
#'
#' Remove the wrong residues obtained by the stop coden
#' if it is stop coden, then the residue could be *, thus the next step will stop
#'
#' @param residue_pair00  A dataframe contains the information of sigificant pairs
#'
#' @return A dataframe of sigificant pairs without residue translated by stop coden
#' @export
#'
#' @examples
removeStopCoden <- function(residue_pair00) {

  residue_pair1 <- residue_pair00 %>%
    separate(V1, into = c("V1a", "V1b"), sep = "@@") %>%
    separate(V2, into = c("V2a", "V2b"), sep = "@@")
  residue_pair2 <- filter(residue_pair1, str_detect(V1a, "[:alpha:]") & str_detect(V2a, "[:alpha:]"))

  residue_pair3 <- residue_pair2 %>%
    unite(V1, V1a, V1b, sep = "@@") %>%
    unite(V2, V2a, V2b, sep = "@@")
  return(residue_pair3)
}




#############################################
# other function
#############################################
#' Get multiple mapping results for one element
#'
#' @param description A vector contains the description for each element from 'reaction'
#' @param reaction A vector contrains the element been mapped
#' @param ko A vector contains the element need mapping
#'
#' @return A vector, which contains several mapping results seperated by ";"
#' @export
#' @examples
#' w <- 1:6
#' v <- c('z','a','b','a','b', 'e')
#' testData <- c('a','b','g')
#' getMultipleMatchParameter(w,v,testData)
#'
getMultipleMatchParameter <- function(description, reaction, ko) {###description can be any charater of metabolite
  index <- vector()
  result <- vector()
  tt <- vector()
  for (i in 1:length(ko)){
    if(length( which (reaction %in%  ko[i]))){
      index <- which (reaction %in%  ko[i])
      tt <- description[index]
      result[i] <- paste0(tt, collapse = ";")
    } else{

      result[i] <- NA
    }
  }
  return(result)
}



#' Get single mapping result for one element
#'
#' @param description A vector contains the description for each element from 'reaction'
#' @param reaction A vector contrains the element been mapped
#' @param ko A vector contains the element need mapping
#'
#' @return A vector
#' @export
#' @examples
#' w <- 1:6
#' v <- c('z','a','b','a','b', 'e')
#' testData <- c('a','b','g')
#' getSingleMatchParameter(w,v,testData)
#'
getSingleMatchParameter <- function(description, reaction, ko) {###description can be any charater of metabolite
  index <- vector()
  result <- vector()
  tt <- vector()
  for (i in 1:length(ko)){
    if(length(match(ko[i],reaction))){
      index <- match(ko[i],reaction)
      tt <- description[index]
      result[i] <- paste0(tt, collapse = ";")
    } else{

      result[i] <- NA
    }
  }
  return(result)
}



#' Fast estabolish the mapping relation between two element
#'
#' @param gene A vetor contains elements with "&" or ","
#' @param rxn A vector contains unique identifier
#' @param sep0 A string, i.e, "&". ","
#'
#' @return A dataframe contains the single mapping relation for the element from gene and rxn
#' @export
#' @examples
#' gene <- c('a&b','c')
#' rxn <- c('r1','r2')
#' splitAndCombine(gene, rxn, sep0="&")
#'
splitAndCombine <- function(gene, rxn, sep0) {
  library(stringr)
  gene <- str_split(gene, sep0)
  tt<- length(gene)
  gene0 <- list()
  for (i in 1:tt){
    gene0[[i]] <- paste(rxn[i], gene[[i]], sep = "@@@")

  }

  gene1 <- unique(unlist(gene0))
  gene2 <- str_split(gene1, "@@@" )
  rxnGene <- data.frame(v1=character(length(gene2)),stringsAsFactors = FALSE)
  tt1 <- length(gene2)
  for (j in 1:tt1){
    rxnGene$v1[j] <- gene2[[j]][2]
    rxnGene$v2[j] <- gene2[[j]][1]
  }

  return(rxnGene)
}
