# This code is mainly used for the protein structure quality analysis
# will refine from 2019-1-28
# This is not used in the evolution project now
# 2021-01-02


#-----------------------------------------------------------------
# tutorial for small dataset
#-----------------------------------------------------------------
# This file should have at least four parameters for each homology protein structures
# These four parameters are
# qmean
# Seq_similarity
# Seq_identity
# Resolution


# library(Yeastspot3D)
# pdb_homo_test1 <- read.table('data/pdb_HOMO_test.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
# pdb_homo_filter1 <- pdbHomoFilter(pdb_homo=pdb_homo_test1)

# This file should have at least four parameters for each experimental protein structures
# These four parameters are
# pident
# mismatch
# Resolution
# pdb_EX_test <- read.table('data/pdb_EX_test.txt', header = TRUE, sep = "\t", stringsAsFactors = FALSE)
# db_EX_test$pident <-  sample(95:100, 3365, replace=T)
# pdb_EX_test$mismatch <-  sample(0:1, 3365, replace=T)
# pdb_EX_filter1 <- pdbExFilter(pdb_EX = pdb_EX_test)
