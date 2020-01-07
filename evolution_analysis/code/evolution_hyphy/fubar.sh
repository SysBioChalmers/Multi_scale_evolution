#!/bin/bash
mkdir /home/luhongzhong/ortholog_343/fubar_result/

cd /home/luhongzhong/ortholog_343/cds_align_unify
for i in *_code.phy
do
  hyphy fubar --alignment /home/luhongzhong/ortholog_343/cds_align_unify/$i --tree /home/luhongzhong/ortholog_343/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre --output /home/luhongzhong/ortholog_343/fubar_result/${i%_code.phy}_code.phy.FUBAR.json
done

# OR
#!/bin/bash
mkdir /home/luhongzhong/ortholog_sce_unprune/fubar_result/

cd /home/luhongzhong/ortholog_sce_unprune/cds_align_macse
for i in *_code.fasta
    do
        hyphy fubar --alignment /home/luhongzhong/ortholog_sce_unprune/cds_align_macse/$i --tree /home/luhongzhong/ortholog_sce_unprune/unroot_tree/${i%_code.fasta}_aa_unroot.tre --output /home/luhongzhong/ortholog_sce_unprune/fubar_result/${i%_code.fasta}_code.fasta.FUBAR.json
    done


# for the test
mkdir /home/luhongzhong/ortholog_sce_prune/fubar_result/
hyphy fubar --alignment /home/luhongzhong/ortholog_sce_prune/cds_align_macse/OG5327_code.fasta --tree /home/luhongzhong/ortholog_sce_prune/unroot_tree/OG5327_aa_unroot.tre --cache /home/luhongzhong/ortholog_sce_prune/fubar_result/OG5327_code.fasta.FUBAR.cache --output /home/luhongzhong/ortholog_sce_prune/fubar_result/OG5327_code.fasta.FUBAR.json

