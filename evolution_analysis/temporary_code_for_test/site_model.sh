    #!/bin/bash
    mkdir /home/luhongzhong/ortholog_343/site_model_result/
    cd /home/luhongzhong/ortholog_343/cds_align_unify/
    for i in *_code.phy
        do
        python /home/luhongzhong/Documents/evolution_analysis/code/site_dn_ds_paml/produce_single_control_file.py -n /home/luhongzhong/ortholog_343/cds_align_unify/$i -t /home/luhongzhong/ortholog_343/unroot_tree_unify/${i%_code.phy}_aa_unroot_unify.tre -c  /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/ -o /home/luhongzhong/ortholog_343/site_model_result/${i%_code.phy}.out
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M0/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M1a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M2a/codeml_test.ctl
        #codeml /Users/luho/Desktop/evolution_analysis/paml_model/site_model/test/M3/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M7/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M8/codeml_test.ctl
        codeml /home/luhongzhong/Documents/evolution_analysis/paml_model/site_model/test/M8a/codeml_test.ctl
        done
    