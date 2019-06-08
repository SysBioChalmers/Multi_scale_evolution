
#----------------note
# this main script is used to post-process the result from clumps analysis
# then for the hotspot analysis
# used for choose the target protein or hotspot based on p_value or closenss
# the result can be used for the further analysis

#-----------------------------------------------------------------
# hotspot: merege multiple file of hotspot analysis result into one
#-----------------------------------------------------------------

# for multiple files
# for mutile files
hotspot_file <- list.files("result")
hotspot_file <- hotspot_file[str_detect(hotspot_file, "hotspot")]
hotspot_file0 <- paste("result/", hotspot_file, sep = "")
for(i in hotspot_file0) {
  print(i)
  dir1 <- paste(getwd(), '/', i, sep = "")
  mergeHotspot(infile=dir1, outfile=dir1)
}



# merge the clumps of homo and experiment
# input the data of clumps method
strain_type <-'PDETOH_high'
clumps_ex <- read.table(paste('result/CLUMPS from pdb_ex for ',strain_type, '/pdb_EX.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
clumps_ex$pdb_source <- "Exp"
clumps_homo <- read.table(paste('result/CLUMPS from pdb_homo for ',strain_type, '/pdb_info.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
clumps_homo$pdb_source <- "Homo"
clumps_homo$qstart2 <- NA
clumps_homo$qend2 <- NA
colnames0 <- colnames(clumps_ex)
clumps_homo <- select(clumps_homo, colnames0)
clumps_all <- rbind.data.frame(clumps_ex, clumps_homo)

# filter step
# remove pdb file with the same gene and same residue coordinate
# clumps_all_fiter <- filter(clumps_all, p_value <= 0.05)
# clumps_all_fiter$combineINF <- paste(clumps_all_fiter$locus, clumps_all_fiter$sstart2, clumps_all_fiter$send2, sep = "@@")
# clumps_all_fiter0 <- clumps_all_fiter[!duplicated(clumps_all_fiter$combineINF),]






# merge all the hotspot values
strain_type <-'PDETOH_high'
hotspot_ex <- read.table(paste('result/hotspot from pdb_ex for ',strain_type, '/hotspot_merge.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
hotspot_ex$pdb_source <- "Exp"
hotspot_homo <- read.table(paste('result/hotspot from pdb_homo for ',strain_type, '/hotspot_merge.txt',sep = ""), header= TRUE, sep = "\t", stringsAsFactors = FALSE)
hotspot_homo$pdb_source <- "Homo"
hotspot_all0 <- rbind.data.frame(hotspot_ex, hotspot_homo)

# filter step



#save the clumps and hotspot analysis result
write.table(clumps_all_ethonal, "result/CLUMPS analysis for ethanol stress.txt", sep="\t",row.names =FALSE)
write.table(hotspot_all_ethonal, "result/hotspot analysis for ethanol stress.txt", sep="\t",row.names =FALSE)




# Other task
# choose proteins with multiple mutation hotspots and design the new method
# hotspot_all_filter <- hotspot_all0[hotspot_all0$pvalue < 0.5,]
# hotspot_analysis <- data.frame(table(hotspot_all_filter$gene))
# gene_interest <- filter(hotspot_analysis, Freq >= 14)
# gene_interest_hotspot <- hotspot_all_filter[which(hotspot_all_filter$gene %in% gene_interest$Var1), ]

