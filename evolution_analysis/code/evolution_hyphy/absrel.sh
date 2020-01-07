    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_subset/absrel_result/
    cd /home/luhongzhong/ortholog_subset/cds_align_unify/
    for i in *_code.phy
        do
            hyphy absrel --alignment /home/luhongzhong/ortholog_subset/cds_align_unify/$i --tree /home/luhongzhong/ortholog_subset/tree_label_hyphy/${i%_code.phy}_aa_unroot_unify.tre --branches Foreground --output /home/luhongzhong/ortholog_subset/absrel_result/${i%_code.phy}.out
        done


# ((((Pig:0.147969,Cow:0.213430):0.085099,Horse:0.165787,Cat:0.264806):0.058611,((RhMonkey{Foreground}:0.002015,Baboon{Foreground}:0.003108){Foreground}:0.022733,(Human{Foreground}:0.004349,Chimp{Foreground}:0.000799){Foreground}:0.011873){Foreground}:0.101856){Foreground}:0.340802,Rat:0.050958,Mouse:0.097950);
# I invoked HyPhy 2.5.0's aBSREL method to select the branches labeled as Foreground with
# from https://github.com/veg/hyphy/issues/992
# hyphy absrel --alignment CD2.fasta  --tree CD2-Foreground.new --branches Foreground