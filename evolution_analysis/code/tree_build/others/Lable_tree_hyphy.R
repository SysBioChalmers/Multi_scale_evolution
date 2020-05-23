# The script is an example to show how to the lable the branch with the interesting species
library(ape)
library(treeio)
library(stringr)

# for the batch process
# read tre
input <- "/home/luhongzhong/ortholog_subset/unroot_tree_unify/"
output <-  "/home/luhongzhong/ortholog_subset/tree_label_hyphy/"
allfile <- list.files(input)
for (t in allfile){
  print(t)

  #t <- "OG1002_aa_unroot_unify.tre"
  tr <- scan(file = paste(input,t, sep=""), what = "complex")
  interest_sign <- "12_"
  #step2 add special label for target species
  tr0 <- read.tree(text = tr)
  plot(tr0)
  tip_inf <- tr0$tip.label
  index <- str_detect(tip_inf, "12_")
  interest_set0 <- tip_inf[index]
  if (length(interest_set0)>=1){
    interest_set <- paste(interest_set0, "{Foreground}", sep="")

    tr1 <- tr
    for(i in 1:length(interest_set)){
      print(i)
      tr1 <- gsub(interest_set0[i], interest_set[i], tr1)
    }

    #add the node
    tr10 <- read.tree(text = tr1)
    plot(tr10, show.node.label = TRUE)

    #save the tree
    write.tree(tr10, file = paste(output, t, sep = ""))
  }
}
# more new test
#tree_test <- "((((Pig:0.147969,Cow:0.213430):0.085099,Horse:0.165787,Cat:0.264806):0.058611,((RhMonkey{Foreground}:0.002015,Baboon{Foreground}:0.003108){Foreground}:0.022733,(Human{Foreground}:0.004349,Chimp{Foreground}:0.000799){Foreground}:0.011873){Foreground}:0.101856){Foreground}:0.340802,Rat:0.050958,Mouse:0.097950);"
#tree_test <- "(((EELA:0.150276,CONGERA:0.213019):0.230956,(EELB:0.263487,CONGERB:0.202633):0.246917):0.094785,((CAVEFISH:0.451027,(GOLDFISH{Foreground}:0.340495,ZEBRAFISH{Foreground}:0.390163):0.220565):0.067778,((((((NSAM:0.008113,NARG:0.014065):0.052991,SPUN:0.061003,(SMIC:0.027806,SDIA:0.015298,SXAN:0.046873):0.046977):0.009822,(NAUR:0.081298,(SSPI:0.023876,STIE:0.013652):0.058179):0.091775):0.073346,(MVIO:0.012271,MBER:0.039798):0.178835):0.147992,((BFNKILLIFISH:0.317455,(ONIL:0.029217,XCAU:0.084388):0.201166):0.055908,THORNYHEAD:0.252481):0.061905):0.157214,LAMPFISH:0.717196,((SCABBARDA:0.189684,SCABBARDB:0.362015):0.282263,((VIPERFISH:0.318217,BLACKDRAGON:0.109912):0.123642,LOOSEJAW:0.3971):0.287152):0.140663):0.206729):0.222485,(COELACANTH:0.558103,((CLAWEDFROG:0.441842,SALAMANDER:0.299607):0.135307,((CHAMELEON:0.771665,((PIGEON:0.150909,CHICKEN:0.172733):0.082163,ZEBRAFINCH:0.099172):0.272338):0.014055,((BOVINE:0.167569,DOLPHIN:0.15745):0.104783,ELEPHANT:0.166557):0.367205):0.050892):0.114731):0.295021);"
#tree_test <- "((((Pig:0.147969,Cow:0.213430):0.085099,Horse:0.165787,Cat:0.264806):0.058611,((RhMonkey{PR}:0.002015,Baboon{PR}:0.003108){PR}:0.022733,(Human{PR}:0.004349,Chimp{PR}:0.000799){PR}:0.011873){PR}:0.101856){PR}:0.340802,Rat:0.050958,Mouse:0.097950);"
#tree_test <- "((((Pig,Cow)Node3,Horse,Cat)Node2,((RhMonkey,Baboon)Node9,(Human,Chimp)Node12)Node8)Node1,Rat,Mouse);"
#tr0 <- read.tree(text = tree_test)
#plot(tr0, show.node.label = TRUE)





