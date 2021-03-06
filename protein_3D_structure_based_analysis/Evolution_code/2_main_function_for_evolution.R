# Note:
# This script is showing how to conduct the mutation mapping analysis using residues mutation information
# Also conduct clumps analysis for positive selected sites from ortholog groups
# Also conduct clumps analysis for highly conserved sites from ortholog groups
# Hongzhong Lu
# 2020-02-02

library(Yeastspot3D)
#load packages
loadPackageForSNPanalysis()
library(hongR) # some functions from hongR package were still used!

source("Evolution_code/1_basic_function_from_Yeastspot3D_for_test.R") # just used for testing the new function
data('gene_feature0')

# Input data for YCL040W
mutated_gene1 <- read.table('data/snp_data_YCL040W.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
ResidueDistance0 <- read.table('/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/result/YCL040W_3D_site_example.pdb.txt', sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance0 <- as.matrix(ResidueDistance0)


# function to mapping the mutation residues onto the protein 3D structures
countMutationProtein.Residues <- function(gene_name, mutation_annotation, gene_snp0) {
  # this function is used to cound the mutation number of residues in each site of original proteins
  # the example mutation data can be:
  # mutate_residues <- data.frame(Gene2='YCL040W', Pos=c(1,6,8,8,9,10), Ref=c('M','L','K','K','A','T'), Alt=c('L','M','T','S','T','A'), stringsAsFactors = FALSE)
  # gene_name = gene0
  # mutation_annotation = mutate_residues
  # gene_snp0=gene_snp
  mutated_gene0 <- filter(mutation_annotation, Gene2 == gene_name)
  tt <- rep(0, length(gene_snp0[["protein"]]))
  pro_pos <- 1:length(gene_snp0[["protein"]])
  pro_pos0 <- as.character(pro_pos)
  # count the mutation number
  mut_count <- as.data.frame(table(mutation_annotation$Pos), stringsAsFactors = FALSE)
  mut_sum <- getSingleReactionFormula(mut_count$Freq, mut_count$Var1, pro_pos0)
  mut_sum0 <- as.numeric(mut_sum)
  for (i in seq_along(mut_sum0)) {
    if (is.na(mut_sum0[i])) {
      mut_sum0[i] <- 0
    } else {
      mut_sum0[i] <- mut_sum0[i]
    }
  }
  return(mut_sum0)
}


clumpsAnalysis2 <- function(gene0, SNPlist0, gene_annotation0, pdb, sstart0, send0, input_dir=TRUE, snp_type=TRUE) {
  # step 1
  # preprocess the SNP information
  gene_snp <- getGeneCoordinate(gene_name = gene0, genesum = gene_annotation0)
  # check the type of data: it can be mutated residues list or SNP list
  if (snp_type){
    gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = gene0, mutation_annotation = SNPlist0, gene_snp0=gene_snp)
    } else{
    gene_snp[["pro_mutation_count"]] <- countMutationProtein.Residues(gene_name = gene0, mutation_annotation = SNPlist0, gene_snp0=gene_snp)
  }
  gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
  pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


  # step 2 input the structure information
  # input the distance of all the pired residues
  if(input_dir){
    ResidueDistance0 <- read.table(pdb, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  } else{
    ResidueDistance0 <- pdb
  }

  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]


  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- sstart0
  p2 <- send0
  p3 <- paste(p1, p2, sep = "-")
  seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
  amino_acid_3D <- gene_snp[["protein"]][seq_3D_origin]
  count_mutation_3D <- gene_snp[["pro_mutation_count"]][seq_3D_origin]

  # mutation position on structure and #mutation number on structure
  pos_mutation_3D <- which(count_mutation_3D != 0)
  seq_3D <- 1:length(count_mutation_3D) # seq0 is the coordinate of PDB structure
  mutation_count_3D <- count_mutation_3D[pos_mutation_3D]

  # there should be two postions which have mutations
  if (length(pos_mutation_3D) >= 2) {
    # wap calculation for each pair mutated residue
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # step 3
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # calculate the wap for each pair of mutated residues based on mutation postion
    wap_original <- getTotalWAP(pos_mutation_3D, sample_standard1, ResidueDistance)

    # change the postion of mutation while keep the mutation number in each postion
    # only change the postion but not change the mutated number???
    wap_sample0 <- getSampleWAP(pos_mutation_3D, sample_standard1, ResidueDistance, seq = seq_3D, n = 10000)

    # analyze the result
    plotNullDistribution(wap_sample0)
    p_value <- getPvalue(wap_original, wap_sample0)
    print(paste("-------p_value=", p_value, sep = ""))
  } else {
    p_value <- "NA"
    print("------Not enough mutation")
  }

  return(p_value)
}


hotSpotAnalysis2 <- function(gene0 = ss0,
                            pdbID = NA,
                            SNPlist0 = mutated_gene1,
                            gene_annotation0 = gene_feature0,
                            pdb = distance,
                            sstart0 = p1,
                            send0 = p2,
                            qstart0 = q1,
                            qend0 = q2,
                            result_dir = outfile0,
                            strain_type = NA,
                            input_dir = TRUE,
                            snp_type=TRUE) {

  # step 1
  # preprocess the SNP information
  gene_snp <- getGeneCoordinate(gene_name = gene0, genesum = gene_annotation0)
  # check the type of data: it can be mutated residues list or SNP list
  if(snp_type){
    gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = gene0, mutation_annotation = SNPlist0, gene_snp0 = gene_snp)
  } else{
    gene_snp[["pro_mutation_count"]] <- countMutationProtein.Residues (gene_name = gene0, mutation_annotation = SNPlist0, gene_snp0 = gene_snp)
  }
  gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
  pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


  # step 2 input the structure information
  # input the distance of all the pired residues
  r3 <- paste(qstart0, qend0, sep = "-")

  # the residue distance can be a directory or matrix
  if (input_dir) {
    ResidueDistance0 <- read.table(pdb, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  } else {
    ResidueDistance0 <- pdb
  }


  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]


  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  seq_3D_origin <- sstart0:send0 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
  p3 <- paste(sstart0, send0, sep = "-")
  amino_acid_3D <- gene_snp[["protein"]][seq_3D_origin]
  count_mutation_3D <- gene_snp[["pro_mutation_count"]][seq_3D_origin]

  # mutation position on structure and #mutation number on structure
  pos_mutation_3D <- which(count_mutation_3D != 0)
  seq_3D <- 1:length(count_mutation_3D) # seq0 is the coordinate of PDB structure
  mutation_count_3D <- count_mutation_3D[pos_mutation_3D]

  # there should be two postions which have mutations
  if (length(pos_mutation_3D) >= 2) {
    # wap calculation for each pair mutated residue
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # step 3 hot spot analysis
    # this main function will be divided into different parts for easy understanding

    #pos_residue1 <- list()
    #for (i in seq_along(SNPlist0$Chr)) {
    #  pos_residue1[[i]] <- PositionResidueSNP(SNPlist0$Pos[i], SNPlist0$Alt[i], gene0, gene_feature = gene_annotation0)
    #}
    #pos_residue_df <- ResidueSum(pos_residue1)

    # these new codes are used to replace the above two functions
    SNPlist01 <- SNPlist0
    SNPlist01$residue <- paste(SNPlist01$Alt, SNPlist01$Pos, sep = "@@")
    # get the unique coordinate of protein residue
    SNPlist02 <- SNPlist01[!duplicated(SNPlist01$Pos),]
    pos_residue_df <- select(SNPlist02, Pos)
    colnames(pos_residue_df) <- c("pos")
    pos_residue_df$residue <- getMultipleMatchParameter(SNPlist01$residue,SNPlist01$Pos,pos_residue_df$pos)
    pos_residue_df$pos <- as.numeric(pos_residue_df$pos)

    # mapping the mutate residue onto the original protein sequence
    gene_snp[["residue"]] <- getMultipleMatchParameter(pos_residue_df$residue, pos_residue_df$pos, gene_snp[["pro_coordinate"]])
    residue_3D <- gene_snp[["residue"]][seq_3D_origin]


    # obtain the paired residue
    # if the residue position is samller than 2, the folloed function will raise error and should be passed

    residue_pair <- getHotVertice(aa_3d = seq_3D, residue0 = residue_3D, aa_pro = seq_3D_origin, distance0 = ResidueDistance)
    # remove the *@@54
    residue_pair <- removeStopCoden(residue_pair)

    if (length(residue_pair$V1) >= 1) {
      # calculate closeness of each cluster
      important_hot <- clusterAnalysis(residue_pair)


      # further calculate the p value of each choosed cluster
      # calculate the pvalue for each clust
      important_hot$pvalue <- getHotPvalue(
        cluster0 = important_hot$cluster,
        sample_standard = sample_standard1,
        distance = ResidueDistance,
        seq = seq_3D
      )

      # add sample information for the result
      important_hot$gene <- gene0
      important_hot$seq_3D_origin <- p3
      important_hot$structure <- pdbID
      important_hot$seq_3D <- r3
      important_hot$strain_type <- strain_type
      outfile <- paste(result_dir, "/", pdbID, "_", gene0, ".txt", sep = "")
      # last step: get the mutate residue coordinate from protein seqence
      # coordinate mapping
      coordinate_mapping <- mappingCoordinateFrom3DtoProtein(aa_3d = seq_3D, residue0 = residue_3D)
      important_hot$cluster <- getOriginalCoordinateProtein(coordinate0 = important_hot$cluster, coordinate_mapping0 = coordinate_mapping)


      write.table(important_hot, outfile, row.names = FALSE, sep = "\t")
    } else {
      print("------NO sigificant pairs")
    }
  } else {
    print("------Not enough mutation")
  }
}






#--------------------------------------------------
# Some examples ------ Mutation enrichment analysis
#--------------------------------------------------
# using SNP
result0 <- clumpsAnalysis(gene0 = 'YCL040W',
                          SNPlist0 = mutated_gene1,
                          gene_annotation0 = gene_feature0,
                          pdb = ResidueDistance0,
                          sstart0 = 1,
                          send0 = 500,
                          input_dir= FALSE)


# using mutated resiudes
mutate_residues <- data.frame(Gene2='YCL040W', Pos=c(1,6,8,8,9,10), Ref=c('M','L','K','K','A','T'), Alt=c('L','M','T','S','T','A'), stringsAsFactors = FALSE)

result0 <- clumpsAnalysis2(gene0 = 'YCL040W',
                          SNPlist0 = mutate_residues,
                          gene_annotation0 = gene_feature0,
                          pdb = ResidueDistance0,
                          sstart0 = 1,
                          send0 = 500,
                          input_dir= FALSE,
                          snp_type = FALSE)

# positive selected residues sites
mutate_residues <- data.frame(Gene2='YCL040W', Pos=c(1,6,8,9,10), Ref=c('M','L','K','A','T'), Alt=c('X','X','X','X','X'), stringsAsFactors = FALSE)

result0 <- clumpsAnalysis2(gene0 = 'YCL040W',
                           SNPlist0 = mutate_residues,
                           gene_annotation0 = gene_feature0,
                           pdb = ResidueDistance0,
                           sstart0 = 1,
                           send0 = 500,
                           input_dir= FALSE,
                           snp_type = FALSE)



#-------------------------------------------------
# Mutation hot spot analysis
#------------------------------------------------
# using SNP
outfile0 <- 'result/hot_spot_analysis'
dir.create(outfile0)
hotSpotAnalysis(
  gene0 = "YCL040W",
  SNPlist0 = mutated_gene1,
  gene_annotation0 = gene_feature0,
  pdb = ResidueDistance0,
  sstart0 = 1, # coordinate of original protein residues sequence
  send0 = 500,     # coordinate of original protein residues sequence
  qstart0 =1 , # coordinate of protein residues sequence in pdb file
  qend0 = 500,     # coordinate of protein residues sequence in pdb file
  result_dir = outfile0,
  input_dir=FALSE
)


# using residues
mutate_residues <- data.frame(Gene2='YCL040W', Pos=c(1,6,8,8,9,10), Ref=c('M','L','K','K','A','T'), Alt=c('L','M','T','S','T','A'), stringsAsFactors = FALSE)

outfile0 <- 'result/hot_spot_analysis'
dir.create(outfile0)
hotSpotAnalysis2(
  gene0 = "YCL040W",
  SNPlist0 = mutate_residues,
  gene_annotation0 = gene_feature0,
  pdb = ResidueDistance0,
  sstart0 = 1, # coordinate of original protein residues sequence
  send0 = 500,     # coordinate of original protein residues sequence
  qstart0 =1 , # coordinate of protein residues sequence in pdb file
  qend0 = 500,     # coordinate of protein residues sequence in pdb file
  result_dir = outfile0,
  input_dir=FALSE,
  snp_type = FALSE
)



# positive selected residues sites
mutate_residues <- data.frame(Gene2='YCL040W', Pos=c(1,6,8,9,10,308,372), Ref=c('M','L','K','A','T', 'V', 'V'), Alt=c('X','X','X','X','X','X','X'), stringsAsFactors = FALSE)

outfile0 <- 'result/hot_spot_analysis'
dir.create(outfile0)
hotSpotAnalysis2(
  gene0 = "YCL040W",
  SNPlist0 = mutate_residues,
  gene_annotation0 = gene_feature0,
  pdb = ResidueDistance0,
  sstart0 = 1, # coordinate of original protein residues sequence
  send0 = 500,     # coordinate of original protein residues sequence
  qstart0 =1 , # coordinate of protein residues sequence in pdb file
  qend0 = 500,     # coordinate of protein residues sequence in pdb file
  result_dir = outfile0,
  input_dir=FALSE,
  snp_type = FALSE
)



# some general function used for evolution analysis
getSelectSite <- function(panID0, site_type = "positive", max_gap_ratio = 0.3, select_cut_off=0.9, fast_evolve_dnds=1) {

  # this function is used to output the interesting sites using for the evolution analysis
  # based on the protein 3D structures
  # now this function is only suitable for result from FUBAR
  # also only used for panID from sce.


  # input
  # panID0, panID of each OG group
  # select_cut_off is the paramter to define the significantly selected sites
  # fast_evolve_dnds is the paramter to define the fast evolved sites, if it is near 1, can be difficult to get the conclusion.
  # output
  # coordinate dataframe of the selected sites

  panID_to_OGID <- read_tsv("Evolution_data/representatives.tsv")
  # find the OG id based on the panID
  # for the sce strain
  panID <- paste("Saccharomyces_cerevisiae@", panID0, sep = "")
  OGID <- panID_to_OGID$ortho_id[which(panID_to_OGID$representative == panID)]
  # input the evolution information based on the OGID
  # it should be careful that result from different methods will be also different in the column name
  evolution_dir <- "Evolution_data/result_site/"
  column_choose <- c(panID, "gap_ratio", "site_ratio", "refsite", "alpha", "beta", "dN_dS", "Prob[alpha>beta]", "Prob[alpha<beta]")
  # read and furthe reduce the data size
  s0 <- paste(evolution_dir, OGID, ".csv", sep = "")

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
    if (site_type == "positive") {
      positive_site <- evolution_df2[evolution_df2$`Prob[alpha<beta]` >= select_cut_off, ] # choose the positive selected sites
      if (nrow(positive_site) >= 1) {
        interest_site <- data.frame(Gene2 = ss0, Pos = positive_site$coordinate_ref, Ref = positive_site$refsite, Alt = "X", stringsAsFactors = FALSE)
        return(interest_site)
      } else {
        print("No select sites! Please check.")
        return(NA)
      }
    } else if (site_type =="fast_evolution"){
      positive_site <- evolution_df2[evolution_df2$dN_dS > fast_evolve_dnds, ] # choose the fast evolved sites
      if (nrow(positive_site) >= 1) {
        interest_site <- data.frame(Gene2 = ss0, Pos = positive_site$coordinate_ref, Ref = positive_site$refsite, Alt = "X", stringsAsFactors = FALSE)
        return(interest_site)
      } else {
        print("No select sites! Please check.")
        return(NA)
      }

    } else {
      nagative_site <- evolution_df2[evolution_df2$`Prob[alpha>beta]` >= 0.9, ]
      interest_site <- data.frame(Gene2 = ss0, Pos = nagative_site$coordinate_ref, Ref = nagative_site$refsite, Alt = "X", stringsAsFactors = FALSE)
      return(interest_site)
    }
  }
}



