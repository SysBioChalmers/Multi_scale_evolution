# note------------
# here with YER105C as an example, we try to develop new method to obtain the hotspot

# function need to adjusted:
preprocessSNP <- function(gene0, gene_feature) {
  # inut a gene name,
  # then the function will read all the SNP information for this gene
  # output
  # a dataframe contains each SNP information which including:
  # chrosome, geneName, ref, alf and completment sign
  infile <- paste("data/gene_snp/", gene0, sep = "")
  mutated_test <- read.table(infile, header = FALSE, sep = "\t", stringsAsFactors = FALSE)
  colnames(mutated_test) <- c("strain", "Gene2", "Chr", "Pos", "Ref", "Alt")
  mutated_test$complement_sign <- getSingleReactionFormula(gene_feature$complement_sign, gene_feature$locus_tag, mutated_test$Gene2)
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

getHotVertice2 <- function(aa_3d, residue0, aa_pro, distance0) {
  #input
  #aa_3d  a vector for the coordinate of PDB structure
  #residue0  a vector contained all the muated residue information of the stucture and it can be found the same mutation in residue occured many times
  #aa_pro a vector for the original coordinate of protein aa sequence
  #ditance  a matrix for the distance of the paired residue of pdb structure

  #output
  #dataframe contains the inforation of the mutated residues


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
  all_pair2 <- all_pair0[which((all_pair0$aa_distance > 0 & all_pair0$distance <= 15) | all_pair0$aa_distance == 0), ]

  # calculate the P value for each pair of amino acids based on the distance
  for (i in seq_along(all_pair2$distance)) {
    distance0 <- all_pair2$distance[i]
    all_pair2$pvalue_pair[i] <- length(which(all_distance <= distance0)) / length(all_distance)
  }

  all_pair3 <- all_pair2[which(all_pair2$pvalue_pair < 0.05), ]
  return(all_pair3)
}

clusterAnalysis2 <- function(residueInf=residue_pair) {
  #input
  #residueInf  dataframe contains the detailed information about the residue

  #output
  # a dataframe contains the cluster information

  # obtain the clusters
  links <- data_frame(from = residueInf$V1, to = residueInf$V2, weight = residueInf$distance)
  links$weight[which(links$weight<=0.1)] <- 0.1
  g <- graph_from_data_frame(d = links, directed = FALSE)
  plot(g)
  library(networkD3)
  simpleNetwork(links, fontSize = 18, opacity = 1, zoom = TRUE,fontFamily = "sans-serif")
  dg <- cluster_fast_greedy(g) # 5 dense subgrpah
  #dg <- cluster_edge_betweenness(g) # 8 dense subgraph

  #dg <- cluster_walktrap(g) # 6 dense subgraph
  # split the graph into subgraph and get the unique cluster
  # calculate the closeness centrality for each clust
  # dg <- decompose.graph(g)
  node_type <- data_frame(node=dg$names, type = dg$membership)

  group <- unique(node_type$type)
  detail_mutant_position0 <- list()
  position_combine <- vector()
  for (i in seq_along(group)) {
    #i= 1
    clust2 <- node_type[node_type$type==i,]
    #detail_mutant_position0[[i]] <- names(clust2)
    position_combine[i] <- paste0(clust2$node, collapse = ";")
  }


  closeness0 <- list()
  cluster_closeness <- vector()

  for (i in seq_along(group)) {
    ##weights represent the distance between the node, has been contained in dg, E(dg).weight could be
    ##used to check the weiht information in each subgraph
    clust2 <- node_type[node_type$type==i,]
    links$from_in <- links$from %in% clust2$node # check if from contains the node
    links$to_in <- links$to %in% clust2$node # check if in contains the node
    links0 <- filter(links, from_in==TRUE & to_in==TRUE)
    g_new <- graph_from_data_frame(d = links0, directed = FALSE)

    closeness0[[i]] <- closeness.residual(g_new)
    cluster_closeness[i] <- sum(closeness.residual(g_new))
  }
  spotSummary <- data_frame(cluster = position_combine, closeness = cluster_closeness)
  return(spotSummary)
  }










# step0 choose samples that need to be analyzed
strain_classification <- read.table("data/strain_PDETOH_classification.txt", header = TRUE, stringsAsFactors = FALSE)
strain_classification <- strain_classification[, c('strain_name','type')]
strain_type <-"PDETOH_high"
strain_select1 <- chooseStrain(type = "PDETOH_high")
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/evolution/result/pdb_homo_filter_manual_check.xlsx")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]
pdb_info$qstart2 <- NA
pdb_info$qend2 <- NA

list0 <- c(626)


#creat new file to store the results
outfile0 <- paste('result/hotspot from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)

for (i in list0) {
  # step 1
  # preprocess the SNP information
  print(i)
  i <-  626
  ss <- pdb_info$locus[i]
  mutated_gene0 <- preprocessSNP(ss, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]

  gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature0)
  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1, gene_snp0 = gene_snp)
  gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
  pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


  # step 2 input the structure information
  # input the distance of all the pired residues
  pdbID <- pdb_info$pdbid[i]
  r1 <- pdb_info$qstart2[i]
  r2 <- pdb_info$qend2[i] # input the corrected residue sequnence
  r3 <- paste(r1, r2, sep = "-")
  dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)
  ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]


  # the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
  # obtain the mutation information for the structure
  p1 <- pdb_info$sstart2[i]
  p2 <- pdb_info$send2[i]
  p3 <- paste(p1, p2, sep = "-")
  seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
  amino_acid_3D <- gene_snp[["protein"]][seq_3D_origin]
  count_mutation_3D <- gene_snp[["pro_mutation_count"]][seq_3D_origin]

  # mutation position on structure and #mutation number on structure
  pos_mutation_3D <- which(count_mutation_3D != 0)
  seq_3D <- 1:length(count_mutation_3D) # seq0 is the coordinate of PDB structure
  mutation_count_3D <- count_mutation_3D[pos_mutation_3D]

  #there should be two postions which have mutations
  if (length(pos_mutation_3D) >= 2) {
    # wap calculation for each pair mutated residue
    # calculate the standardard sample number
    sample_standard1 <- sampleStand(count_mutation_3D)

    # step 3 hot spot analysis
    # this main function will be divided into different parts for easy understanding
    pos_residue1 <- list()
    for (i in seq_along(mutated_gene1$strain)) {
      pos_residue1[[i]] <- PositionResidueSNP(mutated_gene1$Pos[i], mutated_gene1$Alt[i], ss, gene_feature = gene_feature0)
    }

    pos_residue_df <- ResidueSum(pos_residue1)


    # mapping the mutate residue onto the original protein sequence
    gene_snp[["residue"]] <- getMultipleReactionFormula(pos_residue_df$residue, pos_residue_df$pos, gene_snp[["pro_coordinate"]])
    residue_3D <- gene_snp[["residue"]][seq_3D_origin]

    # obtain the paired residue
    # if the residue position is samller than 2, the folloed function will raise error and should be passed
    residue_pair <- getHotVertice2(aa_3d = seq_3D, residue0 = residue_3D, aa_pro = seq_3D_origin, distance0 = ResidueDistance)
    # remove the *@@54
    residue_pair <- removeStopCoden(residue_pair)

    if (length(residue_pair$V1) >= 1) {
      # calculate closeness of each cluster
      important_hot <- clusterAnalysis(residue_pair)
      # important_hot <- clusterAnalysis2(residue_pair)

      # further calculate the p value of each choosed cluster
      # calculate the pvalue for each clust
      important_hot$pvalue <- getHotPvalue(
        cluster0 = important_hot$cluster,
        sample_standard = sample_standard1,
        distance = ResidueDistance,
        seq = seq_3D
      )

      # add sample information for the result
      important_hot$gene <- ss
      important_hot$seq_3D_origin <- p3
      important_hot$structure <- pdbID
      important_hot$seq_3D <- r3
      important_hot$stain_type <- strain_type
      outfile <- paste(outfile0, '/',pdbID, "_", ss, ".txt", sep = "")
      # last step: get the mutate residue coordinate from protein seqence
      # coordinate mapping
      coordinate_mapping <- mappingCoordinateFrom3DtoProtein(aa_3d = seq_3D, residue0 = residue_3D, aa_pro = seq_3D_origin, distance0 = ResidueDistance)

      important_hot$cluster <- getOriginalCoordinateProtein(coordinate0=important_hot$cluster, coordinate_mapping0=coordinate_mapping)

      #here we did not save the results
      #write.table(important_hot, outfile, row.names = FALSE, sep = "\t")
    } else {
      print("NO sigificant pairs")
      next
    }
  } else {
    print("Not enough mutation")
    next
  }
}



#---------------------------------------------------------------
# Example of igraph usage in find the dense subgraph
#------------------------------------------------------------------
g <- make_full_graph(10) %du% make_full_graph(10)
g <- add_edges(g, c(1,11))
plot(g)
cluster_edge_betweenness(g)

g <- make_full_graph(5) %du% make_full_graph(5) %du% make_full_graph(5)
g <- add_edges(g, c(1,6, 1,11, 6, 11))
plot(g)
cluster_walktrap(g)

g <- make_full_graph(5) %du% make_full_graph(5) %du% make_full_graph(5)
g <- add_edges(g, c(1,6, 1,11, 6, 11))
plot(g)
cluster_fast_greedy(g)

subgraph <- make_ego_graph(g)

bc <- biconnected_components(g)

g <- make_full_graph(5) %du% make_full_graph(5) %du% make_full_graph(5)
g <- add_edges(g, c(1,6, 1,11, 6, 11))
plot(g)
fc <- cluster_fast_greedy(g)
membership(fc)
sizes(fc)
