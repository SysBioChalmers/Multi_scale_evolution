library(ape)
library(treeio)
library(ggtree)
library(tidytree)
library(ggplot2)

# label tree
tree <- read.tree("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/ECP_EDN_15.nw")
plot(tree)
d <- data.frame(label = tree$tip.label, stringsAsFactors = FALSE)
d$label2 <- NA
for (i in seq_along(d$label)){
  print(i)
  if(d$label[i]=="Human_ECP"){
    d$label2[i] <- paste(d$label[i], "#1", sep = "")
  } else if(d$label[i]=="Chimp_ECP"){
    d$label2[i] <-  paste(d$label[i], "#1", sep = "")
  } else if(d$label[i]=="Goril_ECP"){
    d$label2[i] <- paste(d$label[i], "#1", sep = "")
  } else{
    d$label2[i] <-  paste(d$label[i], "#2", sep = "")
  }

}


## rename_taxa use 1st column as key and 2nd column as value by default
## rename_taxa(tree, d)
rename_taxa(tree, d, label, label2)
tree2 <- rename_taxa(tree, d, label, label2)
plot(tree2)
write.tree(tree2, file = "/home/luhongzhong/Documents/evolution_analysis/data/data_tree/test.tre")


# label tree
tr0 <- "((((Pig:0.147969,Cow:0.213430):0.085099,Horse:0.165787,Cat:0.264806):0.058611,((RhMonkey{PR}:0.002015,Baboon{PR}:0.003108){PR}:0.022733,(Human{PR}:0.004349,Chimp{PR}:0.000799){PR}:0.011873){PR}:0.101856){PR}:0.340802,Rat:0.050958,Mouse:0.097950);"
tr0 <- read.tree(text = tr0)
tr0 <- makeNodeLabel(tr0, "u", nodeList = list(Pan = "Pan", Homo = "Homo"))
plot(tr0, show.node.label = TRUE)



tr <- "((Pan_paniscus,Pan_troglodytes),((Homo_sapiens,Homo_erectus),Homo_abilis));"
tr <- read.tree(text = tr)
tr <- makeNodeLabel(tr, "u", nodeList = list(Pan = "Pan", Homo = "Homo"))
plot(tr, show.node.label = TRUE)
### does not erase the previous node labels:
tr <- makeNodeLabel(tr, "u", nodeList = list(Hominid = c("Pan","Homo")))
plot(tr, show.node.label = TRUE)
### the two previous commands could be combined:
L <- list(Pan = "Pan", Homo = "Homo", Hominid = c("Pan","Homo"))
tr <- makeNodeLabel(tr, "u", nodeList = L)
### combining different methods:
tr <- makeNodeLabel(tr, c("n", "u"), prefix = "#", nodeList = list(Hominid = c("Pan","Homo")))
plot(tr, show.node.label = TRUE)
write.tree(tr, file = "/home/luhongzhong/Documents/evolution_analysis/data/data_tree/test2.tre")
# node lables
tr <- "((Pan_paniscus,Pan_troglodytes),((Homo_sapiens,Homo_erectus),Homo_abilis));"
tr <- read.tree(text = tr)
plot(tr, show.node.label = TRUE)
nodelabels()






### tree visualization
nwk <- system.file("extdata", "sample.nwk", package="treeio")
tree <- read.tree(nwk)
ggplot(tree, aes(x, y)) + geom_tree() + theme_tree()
ggtree(tree, color="firebrick", size=2, linetype="dotted")
ggtree(tree, branch.length="none")

set.seed(2017-02-16)
tree <- rtree(332)
ggtree(tree) + geom_text(aes(label=node))
ggtree(tree, layout="slanted")
ggtree(tree, layout="circular")
ggtree(tree, layout="fan", open.angle=120)
ggtree(tree, layout="equal_angle")
ggtree(tree, layout="daylight")
ggtree(tree, branch.length='none')
ggtree(tree, branch.length='none', layout='circular')
ggtree(tree, layout="daylight", branch.length = 'none')



# view clade
nwk <- system.file("extdata", "sample.nwk", package="treeio")
tree <- read.tree(nwk)
p <- ggtree(tree) + geom_tiplab()
p
viewClade(p, MRCA(p, "I", "L")) # Find Most Recent Common Ancestors Between Pairs

p2 <- p %>% collapse(node=21) +
  geom_point2(aes(subset=(node==21)), shape=21, size=5, fill='green')
p2 <- collapse(p2, node=23) +
  geom_point2(aes(subset=(node==23)), shape=23, size=5, fill='red')
print(p2)
expand(p2, node=23) %>% expand(node=21)


# subtree
data(chiroptera)
tr <- drop.tip(chiroptera, 16:921, subtree = TRUE)
plot(tr, font = c(rep(3, 15), rep(2, 3)), cex = 0.8,
     no.margin = TRUE)

data(bird.families)
zoom(bird.families, 1:15, col = "grey", no.margin = TRUE,
     subtree = TRUE)

zoom(bird.families, list(1:15, 38:48), col = rep("grey", 2),
     no.margin = TRUE, font = 1, subtree = TRUE)

nodelabels() # add node numbers
tiplabels() # add tip labels



## ggtree subset tree by the tip label and internal node number
beast_file <- system.file("examples/MCC_FluA_H3.tree", package="ggtree")
beast_tree <- read.beast(beast_file)
ggtree(beast_tree) +
  geom_tiplab() + theme_tree2() + geom_text(aes(label=node))

# by the tip label
tree2 = tree_subset(beast_tree, "A/Swine/HK/168/2012", levels_back=4)
ggtree(tree2, aes(color=group)) +
  geom_tiplab() +  xlim(0, 4) + theme_tree2()

# by the node label
clade <- tree_subset(beast_tree, node=121, levels_back=0)
ggtree(clade) + geom_tiplab() + xlim(0, 5)

# by the clade
clade2 <- tree_subset(beast_tree, node=121, levels_back=1)
ggtree(clade2, aes(color=group)) + geom_tiplab() +
  xlim(0, 8)

data(chiroptera)
plot(chiroptera)

nodes <- grep("Plecotus", chiroptera$tip.label)
chiroptera <- groupOTU(chiroptera, nodes)
ggtree(chiroptera, aes(colour = group)) +
  theme(legend.position = "none")

clade <- MRCA(chiroptera, nodes)
x <- tree_subset(chiroptera, clade, levels_back = 0)
ggtree(x) + geom_tiplab() + xlim(0, 5)


# connect the external data with the tree





################## use the real data ################################################
library(readxl)
library(hongR)
yeast_species <- read_excel("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/343taxa_speicies-name_clade-name_color-code.xlsx")
tree <- read.tree("/home/luhongzhong/Documents/evolution_analysis/data/data_tree/332_2408OGs_time-calibrated_phylogeny_species-names_updated.newick")
# manipulate the tree with data
tree_inf <- as_tibble(tree)
tree_inf$clade <- getSingleReactionFormula(yeast_species$`Major clade`,yeast_species$speceis_names_fig2, tree_inf$label)
tree_inf$Family <- getSingleReactionFormula(yeast_species$Family, yeast_species$speceis_names_fig2, tree_inf$label)
tree_inf$Genus <- getSingleReactionFormula(yeast_species$Genus, yeast_species$speceis_names_fig2, tree_inf$label)


# tree subset
plot(tree, node.numbers = F)
#tt62 <- extract.clade(tree, 341)
clade2 <- tree_subset(tree, node=341, levels_back=2)
p <- ggtree(clade2)
p + geom_tiplab(size=3, color="purple")
ggtree(clade2, layout="circular") + geom_tiplab(aes(angle=angle), color='blue')


# get pairwise taxa-taxa distance matrix
d=cophenetic(tree)
write.table(d, file = '/home/luhongzhong/Documents/evolution_analysis/data/data_tree/taxa_pairwise_dist.txt',sep = '\t', quote = FALSE, col.names=NA)


# zoom tree
zoom(tree, 324:332, col = "grey", no.margin = TRUE,
     subtree = TRUE)


## highlight specific clade
genus0 <- "Candida"
tree_inf0 <- filter(tree_inf, Genus==genus0)
node0 <- unique(tree_inf0$node)[1:7]
ggtree(tree) + geom_tiplab()
ggtree(tree, aes(x, y)) + geom_tree() + theme_tree() + geom_text(aes(label=node), hjust=-.3) +geom_tiplab()
ggtree(tree, branch.length='none', layout='circular') +
  geom_text(aes(label=node), hjust=-.3, size=1.5) +
  geom_tiplab(aes(angle=angle), size=1.5) +
  geom_hilight(node=node0, fill="darkgreen", alpha=.6)



###################### others tools #######################################################
#Simulating, plotting, extracting clades, & dropping tips
library(phytools)
## (I'm going to first set the seed for repeatability)
set.seed(1)
## simulate a birth-death tree using phytools
tree <- pbtree(b = 1, d = 0.2, n = 40)
## stopping criterion is 40 extant species, in this case
plotTree(tree, setEnv = TRUE)
nodelabels()
## ok, now extract the clade descended from node #62
tt62 <- extract.clade(tree, 62)
plotTree(tt62)
## now drop 10 tips from the tree (I'm going to pick them at random)
dtips <- sample(tree$tip.label, 10)
dt <- drop.tip(tree, dtips)
plotTree(dt)
## we could also, say, drop all tips that go extinct before the present
## this is a fun way, but not the only way to do this:
et <- fancyTree(tree, type = "droptip", tip = getExtinct(tree), cex = 0.7)
print(et)
## rotating nodes
plotTree(tree, node.numbers = T)
## first, rotate about node #50
rt.50 <- rotate(tree, 50)
plotTree(rt.50)
