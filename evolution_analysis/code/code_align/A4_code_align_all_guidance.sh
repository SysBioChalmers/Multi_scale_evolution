#!/bin/bash
#java -jar /Users/luho/Desktop/example/code/data_prepare_PAML/macse.jar -prog reportGapsAA2NT -align_AA OG4478_code_remove_stop_aa_aligned.fasta  -seq OG4478_code_remove_stop.fasta -out_NT OG4478_code_align.fasta
#this step is to align the code seq based on the aligned protein seq
mkdir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/
cd /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree
for i in *_code.fasta
    do
        perl /home/luhongzhong/Documents/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/$i  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/${i%_code.fasta}_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        python /home/luhongzhong/Documents/evolution_analysis/code/code_align/A4_code_align_all_guidance_remove_files.py -n /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/${i%_code.fasta}_result/
        #perl /home/luhongzhong/ortholog_343_methanol/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/OG10919_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/OG10919_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343_methanol/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/OG17103_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/OG17103_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
        #perl /home/luhongzhong/ortholog_343_methanol/guidance.v2.02/www/Guidance/guidance.pl --seqFile /home/luhongzhong/ortholog_343_methanol/cds_refine_reduce_based_labelled_tree/OG1613_code.fasta  --msaProgram MAFFT --seqType codon --outDir /home/luhongzhong/ortholog_343_methanol/cds_align_guidance/OG1613_result --genCode 1 --bootstraps 30 --proc_num 4 --seqCutoff 0.6 --colCutoff 0.93
    done