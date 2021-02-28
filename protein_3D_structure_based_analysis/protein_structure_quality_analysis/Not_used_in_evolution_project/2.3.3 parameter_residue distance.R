# This function is used to calculate residue distance for all pdb file
# Before conduct the CLUMPS and hotspot analysis, we need prepare the reliable residues distance for the
# experiemtnal PDB files and homology PDB files


library(bio3d)
library(seqinr)
#----------------------------------------------------------------------------
# this code is used to calculate the distance
#----------------------------------------------------------------------------
pdb.ResidueDistance <- function (pdbdir,chainID) {
  # input
  #   pdbdir: dir for a pdb file
  #   chainID: chainID for a chain
  # output
  #   k: a matrix

  pdb <- read.pdb(pdbdir)
  sele <- atom.select(pdb, type = "ATOM", "calpha", chain = chainID)
  pdb0 <- trim.pdb(pdb, sele)
  newPDB <- pdb0$atom
  k <- dm(pdb0, inds = "calpha")
  # for the element on the symmetry of matrix, we set it at 0
  diag(k) <- 0
  # obtain the element on the lower triangle
  ss <- dim(k)
  for (i in 1:ss[1]){
    for (j in 1:i){
      if(i ==j){
        k[i,j] <- 0
      } else{
        k[i,j] <- k[j,i]
      }
    }
  }

  return(k)
}

#----------------------------------------------------------------------------------
# for the experimental pdb files
#-----------------------------------------------------------------------------------
# test
infile <- "data/"
pdbid <- '6cp6.pdb'
pdbdir <- paste(infile, pdbid, sep = "")
pdb.ResidueDistance(pdbdir, chainID = 'K')
# loops for all experimental PDB files of high quality






#--------------------------------------------------------------------------------------
# for the homology pdb files
#--------------------------------------------------------------------------------------
# test
infile <- "data/"
pdbid <- "24_48_1cjy.1.A_5a7b71f67aaa0d57bdf20f14.pdb"
pdbdir <- paste(infile, pdbid, sep = "")
pdb.ResidueDistance(pdbdir, chainID = 'A')

infile <- "data/"
pdbid <- '2_1534_5d06.1.A_5b2453487f4bf94bf75ead43.pdb'
pdbdir <- paste(infile, pdbid, sep = "")
distance_test <-pdb.ResidueDistance(pdbdir, chainID = 'A')
dim(distance_test)
distance_test[1:5, 1:5]
typeof(distance_test)
write.table(distance_test, 'result/2_1534_5d06.1.A_5b2453487f4bf94bf75ead43.pdb2.txt',row.names = FALSE, col.names = FALSE, sep = ",")
# loops for the homology PDB files of high quality

