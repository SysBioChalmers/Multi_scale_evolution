    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/fubar_result/

    cd /home/luhongzhong/ortholog_343/cds_align_unify
    for i in *_code.phy
        do
            hyphy fubar --alignment /home/luhongzhong/ortholog_343/cds_align_unify/$i --tree /home/luhongzhong/ortholog_343/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre --output /home/luhongzhong/ortholog_343/fubar_result/${i%_code.phy}_code.phy.FUBAR.json
            rm /home/luhongzhong/ortholog_343/cds_align_unify/${i%_code.phy}_code.phy.FUBAR.cache
        done
    
    