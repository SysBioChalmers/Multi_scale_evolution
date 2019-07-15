# Note:
# This script is showing how to conduct the mutation mapping analysis for the small SNP dataset

# New function needed to conduct the 3D site analysis:
#seq_3D_origin <- 2:10
#seq_3D <- 1:length(seq_3D_origin)
#cluster1 <- c(2,5,4,8)
#cluster1 <- getSingleReactionFormula(seq_3D,seq_3D_origin,cluster1)
#cluster1 <- as.numeric(cluster1)
clumpsAnalysis.3Dsite <- function(gene0, SNPlist0, gene_annotation0, pdb, sstart0, send0, site_input, input_dir=TRUE) {
  # Note: here, different from the original 'clumpsAnalysis' function, here coordinate0 should be a vector

  # step 1
  # preprocess the SNP information
  gene_snp <- getGeneCoordinate(gene_name = gene0, genesum = gene_annotation0)
  gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = gene0, mutation_annotation = SNPlist0, gene_snp0=gene_snp)
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

  # Note: this step is very important as it is related to the id mapping between the coordinates from proteins and relative coordinates
  # from structures

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
    print("Pass the initial test!")

  } else {
    print("------Not enough mutation as whole")
  }


  # conduct the mapping analysis
  pvalue <- vector()
  for(i in 1:length(site_input)){
    cluster1 <- site_input[[i]]
    # here we need obtain the relative coordinates on the protein 3D structure
    cluster1 <- getSingleReactionFormula(seq_3D,seq_3D_origin,cluster1)
    cluster1 <- as.numeric(cluster1)
    # get the mutation postion for the interesting clusters
    pos_mutation_t0 <- intersect(cluster1,pos_mutation_3D) # cluster1 and pos_mutation_3D should both be the coordinates of protein 3D structures
    if (length(pos_mutation_t0) >= 2) {
      sample_standard = sample_standard1
      distance = ResidueDistance
      wap_original <- getTotalWAP(pos_mutation_t0, sample_standard, distance)
      wap_sample0 <- getSampleWAP(pos_mutation_t0, sample_standard, distance, seq_3D, n = 10000)
      pvalue[i] <- getPvalue(wap_original, wap_sample0)
    } else {
      pvalue[i] <- 1
    }

    print(paste('Start calculate for cluster:', i, ' pvalue', pvalue[i]))

  }

  return(pvalue)
}

data('gene_feature0')


# Step 1
# Input data for YCL040W
mutated_gene1 <- read.table('data/snp_data_YCL040W.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
ResidueDistance0 <- read.table('/Users/luho/PycharmProjects/3D_model/evolution/result/YCL040W_3D_site_example.pdb.txt', sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance0 <- as.matrix(ResidueDistance0)

# Step 2
# input the cluster
site_3D_YCL040W <- read_delim("data/3D site YCL040W.csv", "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
colnames(site_3D_YCL040W) <- c('site_group','original_site','length','coordinate')
site_3D = list()
for (i in seq_along(site_3D_YCL040W$site_group)){
  print(i)
  c1 <- site_3D_YCL040W$coordinate[i]
  c1 <- str_replace_all(c1, "\\[", "") %>% str_replace_all(.,"\\]", "")
  c1 <- str_trim(unlist(str_split(c1, ",")), side = "both")
  c1 <- as.numeric(c1)
  site_3D[[site_3D_YCL040W$site_group[i]]] <- c1
}

# Step 3
# conduct the 3D site mutation enrichment analysis
result0 <- clumpsAnalysis.3Dsite(gene0 = 'YCL040W',
                                 SNPlist0 = mutated_gene1,
                                 gene_annotation0 = gene_feature0,
                                 pdb = ResidueDistance0,
                                 sstart0 = 1,
                                 send0 = 500,
                                 site_input = site_3D,
                                 input_dir = FALSE)
# Step 4
# Dispplay the result
site_3D_YCL040W$p_value <- result0
# plot the result
# simple analysis
site_3D0 <- filter(site_3D_YCL040W, str_detect(site_3D_YCL040W$site_group, "@"))
rotate_x <- function(data, column_to_plot, labels_vec, rot_angle) {
  plt <- barplot(data[[column_to_plot]], col='steelblue', xaxt="n")
  text(plt, par("usr")[3], labels = labels_vec, srt = rot_angle, adj = c(1.1,1.1), xpd = TRUE, cex=0.6)
}
rotate_x(site_3D0, 'p_value', site_3D0$site_group, 20)



# Test the above pipeline using some real case data
strain_classification <- read_excel("data/strain_classification.xls") %>%  select(., Standardized_name)
colnames(strain_classification) <- c('strain_name')
strain_classification$type <- 'All'
strain_type <-"All"
strain_select1 <- chooseStrain(type = "All")

##batch process for the above whole process
# step 0
# input the gene information
pdb_info  <- read_excel("/Users/luho/PycharmProjects/3D_model/evolution/result/pdb_homo_filter_manual_check.xlsx")
#as sometimes we need the update the coordinates in the pdb homology files thus we use the mapid directly from the
#provided by the swiss model database
#pdb_info$pdbid <- paste(pdb_info$sstart2, pdb_info$send2, pdb_info$template, pdb_info$coordinate_id,sep = "_")
pdb_info$pdbid <- pdb_info$mapid
pdb_info$with_distance <- NA
pdb_info <- filter(pdb_info, is.na(pdb_info$with_distance))
pdb_info <- select(pdb_info, locus, pdbid, sstart2, send2)
geneWithSNP <- getGeneNameWithSNP()
pdb_info <- pdb_info[which(pdb_info$locus %in% geneWithSNP ==TRUE),]

#add two more clumns
pdb_info$strain_type <- strain_type
pdb_info$p_value <- NA


#creat new file to store the results
outfile0 <- paste('result/CLUMPS from pdb_homo for ', strain_type, sep = "")
dir.create(outfile0)
print(outfile0)


for (i in 1:length(pdb_info$locus)) {
  # step 1
  # preprocess the SNP information
  print(i)
  # test
  ss <- pdb_info$locus[i]
  pdbID <- pdb_info$pdbid[i]
  # input the mutation list
  mutated_gene0 <- preprocessSNP(ss, gene_feature = gene_feature0)
  mutated_gene1 <- mutated_gene0[which(mutated_gene0$strain %in% strain_select1$Standardized_name), ]
  # input the residue matrix
  dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
  ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
  ResidueDistance0 <- as.matrix(ResidueDistance0)

  clumpsAnalysis(gene0 = ss,
                 SNPlist0 = mutated_gene1,
                 gene_annotation0 = gene_feature0,
                 pdb = ResidueDistance0,
                 sstart0 = pdb_info$sstart2[i],
                 send0 = pdb_info$send2[i],
                 input_dir= FALSE)


  # input the cluster
  site_dir <- paste('/Users/luho/PycharmProjects/3D_model/evolution/result/3D_site/' , pdbID, '.pdb.csv', sep = "")
  site_3D_info <- read_delim(site_dir, "\t", escape_double = FALSE, col_names = FALSE, trim_ws = TRUE)
  colnames(site_3D_info) <- c('Entry','site_group','original_site','length','coordinate','pdbid')
  site_3D = list()
  for (j in seq_along(site_3D_info$site_group)){
    print(j)
    c1 <- site_3D_info$coordinate[j]
    c1 <- str_replace_all(c1, "\\[", "") %>% str_replace_all(.,"\\]", "")
    c1 <- str_trim(unlist(str_split(c1, ",")), side = "both")
    c1 <- as.numeric(c1)
    site_3D[[site_3D_info$site_group[j]]] <- c1
  }
  # conduct the 3D site analysis
  result0 <- clumpsAnalysis.3Dsite(gene0 = ss,
                                   SNPlist0 = mutated_gene1,
                                   gene_annotation0 = gene_feature0,
                                   pdb = ResidueDistance0,
                                   sstart0 = pdb_info$sstart2[i],
                                   send0 = pdb_info$send2[i],
                                   site_input = site_3D,
                                   input_dir = FALSE)

  # Step 4
  # Dispplay the result
  site_3D_info$p_value <- result0
  # plot the result
  # simple analysis
  site_3D0 <- filter(site_3D_info, str_detect(site_3D_info$site_group, "@"))
  rotate_x <- function(data, column_to_plot, labels_vec, rot_angle) {
    plt <- barplot(data[[column_to_plot]], col='steelblue', xaxt="n")
    text(plt, par("usr")[3], labels = labels_vec, srt = rot_angle, adj = c(1.1,1.1), xpd = TRUE, cex=0.6)
  }
  rotate_x(site_3D0, 'p_value', site_3D0$site_group, 20)

}
