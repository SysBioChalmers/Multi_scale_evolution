# Put all the site_wise dN/dS together for the followed analysis
# 2020.06.07
# Hongzhong Lu




#load package
library(readr)
library(ggplot2)
library(tidyverse)
library(readxl)
library(superheat)
require(scales)
#library(pheatmap)
library(RColorBrewer)
library(grid)
library(ggExtra)
library(hongR)

# input the data
# some general function used for evolution analysis
# some general function used for evolution analysis
filterSiteBasedGap <- function(OGID, max_gap_ratio = 0.3) {

  # this function is used to output the interesting sites using for the evolution analysis
  # based on the protein 3D structures
  # now this function is only suitable for result from FUBAR
  # also only used for panID from sce.


  # input
  # panID0, panID of each OG group
  # output
  # coordinate dataframe of the selected sites
  evolution_dir <- "/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/Evolution_data/result_site/"
  #column_choose <- c("gap_ratio", "site_ratio", "alpha", "beta", "dN_dS", "Prob[alpha>beta]", "Prob[alpha<beta]")
  column_choose <- c("gap_ratio", "dN_dS", "Prob[alpha>beta]", "Prob[alpha<beta]")
  # read and furthe reduce the data size
  s0 <- paste(evolution_dir, OGID, sep = "")

  evolution_df <- read_csv(s0) %>% select(., column_choose)
  # filter out gaps based on the ref-site
  evolution_df1 <- evolution_df
  # filter out gaps based on the gap ratio
  gap_percentage <- max_gap_ratio # be careful in this step! shoud observe how this parameter affect the output
  evolution_df2 <- filter(evolution_df1, gap_ratio <= gap_percentage)
  return(evolution_df2)
}

# all OG with conserved site data from sce
data_dir <- "/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/Evolution_data/result_site/"
OG_sce <- list.files(data_dir)

# test 
dn_ds_all <- vector()

for (i in OG_sce){
  print(i)
  og0 <- i
  result0 <- filterSiteBasedGap(OGID=og0, max_gap_ratio = 0.3)
  dn_ds <- result0$dN_dS
  dn_ds_all <- c(dn_ds_all, dn_ds)
}

save(dn_ds_all, "Evolution_data/dn_ds_all.RData")







# Put all the conserved site together for the followed analysis
# input the data 
# some general function used for evolution analysis
getConsevedSite <- function(OGID, site_type = "conserved", max_gap_ratio = 0.3) {

  # this function is used to output the interesting sites using for the evolution analysis
  # based on the protein 3D structures
  # now this function is only suitable for result from FUBAR
  # also only used for panID from sce.


  # input
  # OGID
  # output
  # coordinate dataframe of the selected sites


  # input the evolution information based on the OGID
  # it should be careful that result from different methods will be also different in the column name
  evolution_dir <- "/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/Evolution_data/result_conserved_site/"
  column_choose <- c("gap_ratio", "site_ratio", "conserved_sites", "refsite")
  # read and furthe reduce the data size
  s0 <- paste(evolution_dir, OGID, sep = "")

  if (!file.exists(s0)) {
    print("NO evolution data file can be found!!")
    return(NA)
  }

  # check whether OGID exist??
  if (length(OGID) == 0) {
    print("NO Ortholog ID can be found!!")
    return(NA)
  } else {
    evolution_df <- read_csv(s0)
    all_col <- colnames(evolution_df)
    if (!("refsite" %in% all_col)) {
      return(NA)
    } else {
      evolution_df <- evolution_df %>% select(., column_choose)
      # filter out gaps based on the ref-site
      evolution_df1 <- filter(evolution_df, refsite != "-")
      # add the coordinates information of the reference sequence
      coordinate_ref <- 1:nrow(evolution_df1)
      evolution_df1$coordinate_ref <- coordinate_ref
      # filter out gaps based on the gap ratio
      gap_percentage <- max_gap_ratio # be careful in this step! shoud observe how this parameter affect the output
      evolution_df2 <- filter(evolution_df1, gap_ratio <= gap_percentage)
      # change the data formula
      if (site_type == "conserved") {
        positive_site <- evolution_df2[evolution_df2$conserved_sites != "{}", ]
        if (nrow(positive_site) >= 1) {
          interest_site <- data.frame(Pos = positive_site$coordinate_ref, Ref = positive_site$refsite, Alt = "X", stringsAsFactors = FALSE)
          return(interest_site)
        } else {
          print("No select sites! Please check.")
          return(NA)
        }
      }
    }
  }
}


# all OG with conserved site data from sce
data_dir <- "/Users/luho/Google Drive/R application and code/protein 3D structure QC and QA/Evolution analysis/Evolution_data/result_conserved_site/"
OG_sce <- list.files(data_dir)

conserve_site <- vector(length = length(OG_sce))
t <- 0
for (i in OG_sce){
  print(i)
  t <- t+1
  s0 <- getConsevedSite(OGID=i, site_type = "conserved", max_gap_ratio = 0.3)
  site_num <- nrow(s0)
  if(length(site_num)){
    conserve_site[t] <- site_num } else{
    conserve_site[t] <- NA
  }
}

conserve_site_inf <- data.frame(OG=OG_sce, conserve_site=conserve_site, stringsAsFactors = FALSE)
conserve_site_inf$OG <- str_replace_all(conserve_site_inf$OG,"_conserved_site.csv","")



save(conserve_site_inf, file = "Evolution_data/conserve_site_inf.RData")






