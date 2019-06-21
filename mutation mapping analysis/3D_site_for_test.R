# Note:
# This script is showing how to conduct the mutation mapping analysis for the small SNP dataset
data('gene_feature0')

# Input data for YCL040W
mutated_gene1 <- read.table('data/snp_data_YCL040W.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
ResidueDistance0 <- read.table('/Users/luho/PycharmProjects/3D_model/evolution/result/YCL040W_3D_site_example.pdb.txt', sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
ResidueDistance0 <- as.matrix(ResidueDistance0)
#-------------------------------------------------
# Mutation enrichment analysis
#------------------------------------------------
result0 <- clumpsAnalysis(gene0 = 'YCL040W',
                          SNPlist0 = mutated_gene1,
                          gene_annotation0 = gene_feature0,
                          pdb = ResidueDistance0,
                          sstart0 = 1,
                          send0 = 500,
                          input_dir= FALSE)

# print the mutation information for the input SNP list contained in the protein 3D structure
pdbID <- 'YCL040W_3D_site_example'
SNP_list <- printSNPforGene(gene0 = 'YCL040W',
                SNPlist0 = mutated_gene1,
                gene_annotation0 = gene_feature0,
                pdbID0 = pdbID,
                sstart0 = 1,
                send0 = 500)
#-------------------------------------------------
# Mutation hot spot analysis
#------------------------------------------------
# run the function
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


#---------------------------------------------
# 3D site analysis
#---------------------------------------------
ss <- 'YCL040W'
gene_snp <- getGeneCoordinate(gene_name = ss, genesum = gene_feature0)
gene_snp[["pro_mutation_count"]] <- countMutationProtein(gene_name = ss, mutation_annotation = mutated_gene1, gene_snp0 = gene_snp)
gene_snp[["pro_coordinate"]] <- 1:length(gene_snp[["protein"]])
pos_mutation <- which(gene_snp[["pro_mutation_count"]] != 0)


# step 2 input the structure information
# input the distance of all the pired residues
pdbID <- 'YCL040W_3D_site_example'
#r1 <- pdb_info$qstart2[i]
#r2 <- pdb_info$qend2[i] # input the corrected residue sequnence
#r3 <- paste(r1, r2, sep = "-")
#dirForDistanceMatrix <- paste("residue_distance/pdb_homo/", pdbID, ".pdb.txt", sep = "")
#ResidueDistance0 <- read.table(dirForDistanceMatrix, sep = ",") # in the followed calculation, the matrix dosen't have the col and row names
#ResidueDistance0 <- as.matrix(ResidueDistance0)
ResidueDistance <- ResidueDistance0 # [r1:r2,r1:r2]
dim(ResidueDistance)
# the amino acid sequence in structure is from 2:394 while  the original sequence is from 1:394
# obtain the mutation information for the structure
p1 <- 1#pdb_info$sstart2[i]
p2 <- 500#pdb_info$send2[i]
p3 <- paste(p1, p2, sep = "-")
seq_3D_origin <- p1:p2 # seq_from_3D <- 2:394 #"YAL012W.fasta"#this is the coordinated of original protein sequence and should changed into 3D structure coordinates
# seq_3D_origin <- c(31, 73)
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
} else {
  print("Not enough mutation")
}

# input the cluster
site_3D_YCL040W <- read_excel("data/3D site YCL040W.xlsx", col_names = FALSE)
colnames(site_3D_YCL040W) <- c('site_group','coordinate')
site_3D = list()
for (i in seq_along(site_3D_YCL040W$site_group)){
  print(i)
  c1 <- site_3D_YCL040W$coordinate[i]
  c1 <- str_replace_all(c1, "\\[", "") %>% str_replace_all(.,"\\]", "")
  c1 <- str_trim(unlist(str_split(c1, ",")), side = "both")
  c1 <- as.numeric(c1)
  site_3D[[site_3D_YCL040W$site_group[i]]] <- c1
}


# conduct the mapping analysis
pvalue <- vector()
for(i in 1:length(site_3D)){
  cluster1 <- site_3D[[i]]
  pos_mutation_t0 <- intersect(cluster1,pos_mutation_3D)
  if (length(pos_mutation_t0) >= 2) {
    sample_standard = sample_standard1
    distance = ResidueDistance
    seq = seq_3D_origin
    wap_original <- getTotalWAP(pos_mutation_t0, sample_standard, distance)
    wap_sample0 <- getSampleWAP(pos_mutation_t0, sample_standard, distance, seq, n = 10000)
    pvalue[i] <- getPvalue(wap_original, wap_sample0)
  } else {
    pvalue[i] <- 1
  }

  print(i)

}

site_3D_YCL040W$p_value <- pvalue

