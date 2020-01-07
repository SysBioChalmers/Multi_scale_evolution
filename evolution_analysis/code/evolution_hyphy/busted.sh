#!/bin/bash
cd /Users/luho/Desktop/evolution_analysis/data/cds_seq/

for i in *_code_align.fasta
do
	hyphy busted --alignment /Users/luho/Desktop/evolution_analysis/data/cds_seq/$i --tree /Users/luho/Desktop/evolution_analysis/data/tree/${i%_code_align.fasta}_aa_unroot.tre --branches Foreground --srv Yes --output /Users/luho/Desktop/evolution_analysis/result/hyphy_result

done


# ((((Pig:0.147969,Cow:0.213430):0.085099,Horse:0.165787,Cat:0.264806):0.058611,((RhMonkey{Foreground}:0.002015,Baboon{Foreground}:0.003108){Foreground}:0.022733,(Human{Foreground}:0.004349,Chimp{Foreground}:0.000799){Foreground}:0.011873){Foreground}:0.101856){Foreground}:0.340802,Rat:0.050958,Mouse:0.097950);
# I invoked HyPhy 2.5.0's aBSREL method to select the branches labeled as Foreground with
# from https://github.com/veg/hyphy/issues/992
# hyphy absrel --alignment CD2.fasta  --tree CD2-Foreground.new --branches Foreground